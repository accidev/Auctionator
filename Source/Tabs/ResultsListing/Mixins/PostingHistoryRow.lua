AuctionatorPostingHistoryRowMixin = CreateFromMixins(AuctionatorResultsRowTemplateMixin)

function AuctionatorPostingHistoryRowMixin:OnClick(button, ...)
	Auctionator.Debug.Message("AuctionatorPostingHistoryRowMixin:OnClick()")

	Auctionator.EventBus:RegisterSource(self, "PostingHistoryRow"):Fire(self, Auctionator.Selling.Events.PriceSelected,
		self.rowData.price or self.rowData.bidPrice):UnregisterSource(self)
end
