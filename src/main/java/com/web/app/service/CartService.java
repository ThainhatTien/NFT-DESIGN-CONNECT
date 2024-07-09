/*
 * package com.web.app.service;
 * 
 * import java.math.BigDecimal; import java.util.HashMap; import
 * java.util.Optional;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service;
 * 
 * import com.asm.dao.GameDao; import com.asm.dao.OrderDao; import
 * com.asm.dao.OrderDetailDao; import com.asm.dao.UserDao; import
 * com.asm.dto.CartDetailDto; import com.asm.dto.CartDto; import
 * com.asm.entity.Game; import com.asm.entity.Order; import
 * com.asm.entity.OrderDetail; import com.asm.entity.User;
 * 
 * import jakarta.transaction.Transactional;
 * 
 * @Service public class CartService {
 * 
 * @Autowired private OrderDetailDao orderDetailDao;
 * 
 * @Autowired private OrderDao orderDao;
 * 
 * @Autowired private GameDao gameDao;
 * 
 * @Autowired private UserDao userDao;
 * 
 * @Transactional public CartDto createCart(Integer userId) { CartDto cart = new
 * CartDto(); cart.setUserId(userId); cart.setTotalAmount(0); cart.setDetail(new
 * HashMap<>()); return cart; }
 * 
 * public CartDto addToCart(CartDto cart, Integer userId, Integer gameId, int
 * quantity) { if (cart == null) { cart = createCart(userId); } Optional<Game>
 * optionalGame = gameDao.findById(gameId); if (!optionalGame.isPresent()) {
 * throw new RuntimeException("Không tìm thấy trò chơi"); } Game game =
 * optionalGame.get(); CartDetailDto cartDetail = cart.getDetail().get(gameId);
 * if (cartDetail == null) { cartDetail = new CartDetailDto(gameId,
 * game.getTitle(), game.getPrice(), quantity); cart.getDetail().put(gameId,
 * cartDetail); } else { cartDetail.setQuantity(cartDetail.getQuantity() +
 * quantity); } updateTotalAmount(cart); return cart; }
 * 
 * public void removeItemFromCart(CartDto cart, Integer gameId) {
 * cart.getDetail().remove(gameId); updateTotalAmount(cart); }
 * 
 * public void updateItemQuantity(CartDto cart, Integer gameId, int quantity) {
 * CartDetailDto cartDetail = cart.getDetail().get(gameId); if (cartDetail !=
 * null) { cartDetail.setQuantity(quantity); updateTotalAmount(cart); } }
 * 
 * private void updateTotalAmount(CartDto cart) { BigDecimal totalAmount =
 * cart.getDetail().values().stream() .map(detail ->
 * detail.getPrice().multiply(BigDecimal.valueOf(detail.getQuantity())))
 * .reduce(BigDecimal.ZERO, BigDecimal::add);
 * cart.setTotalAmount(totalAmount.intValue()); // Convert BigDecimal to int }
 * 
 * @Transactional public Order checkout(CartDto cart, Integer userId) { User
 * user = userDao.findById(userId).orElseThrow(() -> new
 * RuntimeException("Không tìm thấy người dùng")); Order order = new Order();
 * order.setUser(user); order.setOrderDate(new java.util.Date());
 * order.setTotalAmount(cart.getTotalAmount()); order = orderDao.save(order);
 * for (CartDetailDto cartDetail : cart.getDetail().values()) { OrderDetail
 * orderDetail = new OrderDetail(); orderDetail.setOrder(order);
 * orderDetail.setGame(gameDao.findById(cartDetail.getGameId()) .orElseThrow(()
 * -> new RuntimeException("Không tìm thấy trò chơi")));
 * orderDetail.setQuantity(cartDetail.getQuantity());
 * orderDetail.setPrice(cartDetail.getPrice());
 * orderDetailDao.save(orderDetail); } return order; } }
 */