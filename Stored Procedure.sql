CREATE DEFINER=`root`@`localhost` PROCEDURE `limpa_pedidos`()
BEGIN
	SET SQL_SAFE_UPDATES = 0;
	DELETE FROM pedidos WHERE pago = 'Não';
END