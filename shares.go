package quantify

type Shares struct {
	Code               string
	Name               string
	ChangePercent      Decimal
	Trade              float64
	Open               float64
	High               float64
	Low                float64
	Settlement         float64
	Volume             int
	TurnOverRatio      float64
	Amount             float64
	PriceEarningsRatio float64
	PriceBook          float64
	MarketCapital      float64
	CirculationMarket  float64
}
