module Data.FIX.FIX41 where
import qualified Data.ByteString.Char8 as C
import qualified Data.LookupTable as LT ( new, insert )
import Common.FIXMessage
import Common.FIXParser


tAccount :: FIXTag
tAccount = FIXTag 
   { tName = "Account"
   , tnum = 1
   , tparser = toFIXChar }

tAdvId :: FIXTag
tAdvId = FIXTag 
   { tName = "AdvId"
   , tnum = 2
   , tparser = toFIXChar }

tAdvRefID :: FIXTag
tAdvRefID = FIXTag 
   { tName = "AdvRefID"
   , tnum = 3
   , tparser = toFIXChar }

tAdvSide :: FIXTag
tAdvSide = FIXTag 
   { tName = "AdvSide"
   , tnum = 4
   , tparser = toFIXChar }

tAdvTransType :: FIXTag
tAdvTransType = FIXTag 
   { tName = "AdvTransType"
   , tnum = 5
   , tparser = toFIXChar }

tAvgPx :: FIXTag
tAvgPx = FIXTag 
   { tName = "AvgPx"
   , tnum = 6
   , tparser = toFIXFloat }

tBeginSeqNo :: FIXTag
tBeginSeqNo = FIXTag 
   { tName = "BeginSeqNo"
   , tnum = 7
   , tparser = toFIXInt }

tBeginString :: FIXTag
tBeginString = FIXTag 
   { tName = "BeginString"
   , tnum = 8
   , tparser = toFIXChar }

tBodyLength :: FIXTag
tBodyLength = FIXTag 
   { tName = "BodyLength"
   , tnum = 9
   , tparser = toFIXInt }

tCheckSum :: FIXTag
tCheckSum = FIXTag 
   { tName = "CheckSum"
   , tnum = 10
   , tparser = toFIXChar }

tClOrdID :: FIXTag
tClOrdID = FIXTag 
   { tName = "ClOrdID"
   , tnum = 11
   , tparser = toFIXChar }

tCommission :: FIXTag
tCommission = FIXTag 
   { tName = "Commission"
   , tnum = 12
   , tparser = toFIXFloat }

tCommType :: FIXTag
tCommType = FIXTag 
   { tName = "CommType"
   , tnum = 13
   , tparser = toFIXChar }

tCumQty :: FIXTag
tCumQty = FIXTag 
   { tName = "CumQty"
   , tnum = 14
   , tparser = toFIXInt }

tCurrency :: FIXTag
tCurrency = FIXTag 
   { tName = "Currency"
   , tnum = 15
   , tparser = toFIXChar }

tEndSeqNo :: FIXTag
tEndSeqNo = FIXTag 
   { tName = "EndSeqNo"
   , tnum = 16
   , tparser = toFIXInt }

tExecID :: FIXTag
tExecID = FIXTag 
   { tName = "ExecID"
   , tnum = 17
   , tparser = toFIXChar }

tExecInst :: FIXTag
tExecInst = FIXTag 
   { tName = "ExecInst"
   , tnum = 18
   , tparser = toFIXChar }

tExecRefID :: FIXTag
tExecRefID = FIXTag 
   { tName = "ExecRefID"
   , tnum = 19
   , tparser = toFIXChar }

tExecTransType :: FIXTag
tExecTransType = FIXTag 
   { tName = "ExecTransType"
   , tnum = 20
   , tparser = toFIXChar }

tHandlInst :: FIXTag
tHandlInst = FIXTag 
   { tName = "HandlInst"
   , tnum = 21
   , tparser = toFIXChar }

tIDSource :: FIXTag
tIDSource = FIXTag 
   { tName = "IDSource"
   , tnum = 22
   , tparser = toFIXChar }

tIOIid :: FIXTag
tIOIid = FIXTag 
   { tName = "IOIid"
   , tnum = 23
   , tparser = toFIXChar }

tIOIOthSvc :: FIXTag
tIOIOthSvc = FIXTag 
   { tName = "IOIOthSvc"
   , tnum = 24
   , tparser = toFIXChar }

tIOIQltyInd :: FIXTag
tIOIQltyInd = FIXTag 
   { tName = "IOIQltyInd"
   , tnum = 25
   , tparser = toFIXChar }

tIOIRefID :: FIXTag
tIOIRefID = FIXTag 
   { tName = "IOIRefID"
   , tnum = 26
   , tparser = toFIXChar }

tIOIShares :: FIXTag
tIOIShares = FIXTag 
   { tName = "IOIShares"
   , tnum = 27
   , tparser = toFIXChar }

tIOITransType :: FIXTag
tIOITransType = FIXTag 
   { tName = "IOITransType"
   , tnum = 28
   , tparser = toFIXChar }

tLastCapacity :: FIXTag
tLastCapacity = FIXTag 
   { tName = "LastCapacity"
   , tnum = 29
   , tparser = toFIXChar }

tLastMkt :: FIXTag
tLastMkt = FIXTag 
   { tName = "LastMkt"
   , tnum = 30
   , tparser = toFIXChar }

tLastPx :: FIXTag
tLastPx = FIXTag 
   { tName = "LastPx"
   , tnum = 31
   , tparser = toFIXFloat }

tLastShares :: FIXTag
tLastShares = FIXTag 
   { tName = "LastShares"
   , tnum = 32
   , tparser = toFIXInt }

tLinesOfText :: FIXTag
tLinesOfText = FIXTag 
   { tName = "LinesOfText"
   , tnum = 33
   , tparser = toFIXInt }

tMsgSeqNum :: FIXTag
tMsgSeqNum = FIXTag 
   { tName = "MsgSeqNum"
   , tnum = 34
   , tparser = toFIXInt }

tMsgType :: FIXTag
tMsgType = FIXTag 
   { tName = "MsgType"
   , tnum = 35
   , tparser = toFIXChar }

tNewSeqNo :: FIXTag
tNewSeqNo = FIXTag 
   { tName = "NewSeqNo"
   , tnum = 36
   , tparser = toFIXInt }

tOrderID :: FIXTag
tOrderID = FIXTag 
   { tName = "OrderID"
   , tnum = 37
   , tparser = toFIXChar }

tOrderQty :: FIXTag
tOrderQty = FIXTag 
   { tName = "OrderQty"
   , tnum = 38
   , tparser = toFIXInt }

tOrdStatus :: FIXTag
tOrdStatus = FIXTag 
   { tName = "OrdStatus"
   , tnum = 39
   , tparser = toFIXChar }

tOrdType :: FIXTag
tOrdType = FIXTag 
   { tName = "OrdType"
   , tnum = 40
   , tparser = toFIXChar }

tOrigClOrdID :: FIXTag
tOrigClOrdID = FIXTag 
   { tName = "OrigClOrdID"
   , tnum = 41
   , tparser = toFIXChar }

tOrigTime :: FIXTag
tOrigTime = FIXTag 
   { tName = "OrigTime"
   , tnum = 42
   , tparser = toFIXString }

tPossDupFlag :: FIXTag
tPossDupFlag = FIXTag 
   { tName = "PossDupFlag"
   , tnum = 43
   , tparser = toFIXChar }

tPrice :: FIXTag
tPrice = FIXTag 
   { tName = "Price"
   , tnum = 44
   , tparser = toFIXFloat }

tRefSeqNum :: FIXTag
tRefSeqNum = FIXTag 
   { tName = "RefSeqNum"
   , tnum = 45
   , tparser = toFIXInt }

tRelatdSym :: FIXTag
tRelatdSym = FIXTag 
   { tName = "RelatdSym"
   , tnum = 46
   , tparser = toFIXChar }

tRule80A :: FIXTag
tRule80A = FIXTag 
   { tName = "Rule80A"
   , tnum = 47
   , tparser = toFIXChar }

tSecurityID :: FIXTag
tSecurityID = FIXTag 
   { tName = "SecurityID"
   , tnum = 48
   , tparser = toFIXChar }

tSenderCompID :: FIXTag
tSenderCompID = FIXTag 
   { tName = "SenderCompID"
   , tnum = 49
   , tparser = toFIXChar }

tSenderSubID :: FIXTag
tSenderSubID = FIXTag 
   { tName = "SenderSubID"
   , tnum = 50
   , tparser = toFIXChar }

tSendingDate :: FIXTag
tSendingDate = FIXTag 
   { tName = "SendingDate"
   , tnum = 51
   , tparser = toFIXString }

tSendingTime :: FIXTag
tSendingTime = FIXTag 
   { tName = "SendingTime"
   , tnum = 52
   , tparser = toFIXString }

tShares :: FIXTag
tShares = FIXTag 
   { tName = "Shares"
   , tnum = 53
   , tparser = toFIXInt }

tSide :: FIXTag
tSide = FIXTag 
   { tName = "Side"
   , tnum = 54
   , tparser = toFIXChar }

tSymbol :: FIXTag
tSymbol = FIXTag 
   { tName = "Symbol"
   , tnum = 55
   , tparser = toFIXChar }

tTargetCompID :: FIXTag
tTargetCompID = FIXTag 
   { tName = "TargetCompID"
   , tnum = 56
   , tparser = toFIXChar }

tTargetSubID :: FIXTag
tTargetSubID = FIXTag 
   { tName = "TargetSubID"
   , tnum = 57
   , tparser = toFIXChar }

tText :: FIXTag
tText = FIXTag 
   { tName = "Text"
   , tnum = 58
   , tparser = toFIXChar }

tTimeInForce :: FIXTag
tTimeInForce = FIXTag 
   { tName = "TimeInForce"
   , tnum = 59
   , tparser = toFIXChar }

tTransactTime :: FIXTag
tTransactTime = FIXTag 
   { tName = "TransactTime"
   , tnum = 60
   , tparser = toFIXString }

tUrgency :: FIXTag
tUrgency = FIXTag 
   { tName = "Urgency"
   , tnum = 61
   , tparser = toFIXChar }

tValidUntilTime :: FIXTag
tValidUntilTime = FIXTag 
   { tName = "ValidUntilTime"
   , tnum = 62
   , tparser = toFIXString }

tSettlmntTyp :: FIXTag
tSettlmntTyp = FIXTag 
   { tName = "SettlmntTyp"
   , tnum = 63
   , tparser = toFIXChar }

tFutSettDate :: FIXTag
tFutSettDate = FIXTag 
   { tName = "FutSettDate"
   , tnum = 64
   , tparser = toFIXString }

tSymbolSfx :: FIXTag
tSymbolSfx = FIXTag 
   { tName = "SymbolSfx"
   , tnum = 65
   , tparser = toFIXChar }

tListID :: FIXTag
tListID = FIXTag 
   { tName = "ListID"
   , tnum = 66
   , tparser = toFIXChar }

tListSeqNo :: FIXTag
tListSeqNo = FIXTag 
   { tName = "ListSeqNo"
   , tnum = 67
   , tparser = toFIXInt }

tListNoOrds :: FIXTag
tListNoOrds = FIXTag 
   { tName = "ListNoOrds"
   , tnum = 68
   , tparser = toFIXInt }

tListExecInst :: FIXTag
tListExecInst = FIXTag 
   { tName = "ListExecInst"
   , tnum = 69
   , tparser = toFIXChar }

tAllocID :: FIXTag
tAllocID = FIXTag 
   { tName = "AllocID"
   , tnum = 70
   , tparser = toFIXChar }

tAllocTransType :: FIXTag
tAllocTransType = FIXTag 
   { tName = "AllocTransType"
   , tnum = 71
   , tparser = toFIXChar }

tRefAllocID :: FIXTag
tRefAllocID = FIXTag 
   { tName = "RefAllocID"
   , tnum = 72
   , tparser = toFIXChar }

tNoOrders :: FIXTag
tNoOrders = FIXTag 
   { tName = "NoOrders"
   , tnum = 73
   , tparser = toFIXInt }

tAvgPrxPrecision :: FIXTag
tAvgPrxPrecision = FIXTag 
   { tName = "AvgPrxPrecision"
   , tnum = 74
   , tparser = toFIXInt }

tTradeDate :: FIXTag
tTradeDate = FIXTag 
   { tName = "TradeDate"
   , tnum = 75
   , tparser = toFIXString }

tExecBroker :: FIXTag
tExecBroker = FIXTag 
   { tName = "ExecBroker"
   , tnum = 76
   , tparser = toFIXChar }

tOpenClose :: FIXTag
tOpenClose = FIXTag 
   { tName = "OpenClose"
   , tnum = 77
   , tparser = toFIXChar }

tNoAllocs :: FIXTag
tNoAllocs = FIXTag 
   { tName = "NoAllocs"
   , tnum = 78
   , tparser = toFIXInt }

tAllocAccount :: FIXTag
tAllocAccount = FIXTag 
   { tName = "AllocAccount"
   , tnum = 79
   , tparser = toFIXChar }

tAllocShares :: FIXTag
tAllocShares = FIXTag 
   { tName = "AllocShares"
   , tnum = 80
   , tparser = toFIXInt }

tProcessCode :: FIXTag
tProcessCode = FIXTag 
   { tName = "ProcessCode"
   , tnum = 81
   , tparser = toFIXChar }

tNoRpts :: FIXTag
tNoRpts = FIXTag 
   { tName = "NoRpts"
   , tnum = 82
   , tparser = toFIXInt }

tRptSeq :: FIXTag
tRptSeq = FIXTag 
   { tName = "RptSeq"
   , tnum = 83
   , tparser = toFIXInt }

tCxlQty :: FIXTag
tCxlQty = FIXTag 
   { tName = "CxlQty"
   , tnum = 84
   , tparser = toFIXInt }

tNoDlvyInst :: FIXTag
tNoDlvyInst = FIXTag 
   { tName = "NoDlvyInst"
   , tnum = 85
   , tparser = toFIXInt }

tDlvyInst :: FIXTag
tDlvyInst = FIXTag 
   { tName = "DlvyInst"
   , tnum = 86
   , tparser = toFIXChar }

tAllocStatus :: FIXTag
tAllocStatus = FIXTag 
   { tName = "AllocStatus"
   , tnum = 87
   , tparser = toFIXInt }

tAllocRejCode :: FIXTag
tAllocRejCode = FIXTag 
   { tName = "AllocRejCode"
   , tnum = 88
   , tparser = toFIXInt }

tSignature :: FIXTag
tSignature = FIXTag 
   { tName = "Signature"
   , tnum = 89
   , tparser = toFIXString }

tSecureDataLen :: FIXTag
tSecureDataLen = FIXTag 
   { tName = "SecureDataLen"
   , tnum = 90
   , tparser = toFIXString }

tSecureData :: FIXTag
tSecureData = FIXTag 
   { tName = "SecureData"
   , tnum = 91
   , tparser = toFIXString }

tBrokerOfCredit :: FIXTag
tBrokerOfCredit = FIXTag 
   { tName = "BrokerOfCredit"
   , tnum = 92
   , tparser = toFIXChar }

tSignatureLength :: FIXTag
tSignatureLength = FIXTag 
   { tName = "SignatureLength"
   , tnum = 93
   , tparser = toFIXString }

tEmailType :: FIXTag
tEmailType = FIXTag 
   { tName = "EmailType"
   , tnum = 94
   , tparser = toFIXChar }

tRawDataLength :: FIXTag
tRawDataLength = FIXTag 
   { tName = "RawDataLength"
   , tnum = 95
   , tparser = toFIXString }

tRawData :: FIXTag
tRawData = FIXTag 
   { tName = "RawData"
   , tnum = 96
   , tparser = toFIXString }

tPossResend :: FIXTag
tPossResend = FIXTag 
   { tName = "PossResend"
   , tnum = 97
   , tparser = toFIXChar }

tEncryptMethod :: FIXTag
tEncryptMethod = FIXTag 
   { tName = "EncryptMethod"
   , tnum = 98
   , tparser = toFIXInt }

tStopPx :: FIXTag
tStopPx = FIXTag 
   { tName = "StopPx"
   , tnum = 99
   , tparser = toFIXFloat }

tExDestination :: FIXTag
tExDestination = FIXTag 
   { tName = "ExDestination"
   , tnum = 100
   , tparser = toFIXChar }

tCxlRejReason :: FIXTag
tCxlRejReason = FIXTag 
   { tName = "CxlRejReason"
   , tnum = 102
   , tparser = toFIXInt }

tOrdRejReason :: FIXTag
tOrdRejReason = FIXTag 
   { tName = "OrdRejReason"
   , tnum = 103
   , tparser = toFIXInt }

tIOIQualifier :: FIXTag
tIOIQualifier = FIXTag 
   { tName = "IOIQualifier"
   , tnum = 104
   , tparser = toFIXChar }

tWaveNo :: FIXTag
tWaveNo = FIXTag 
   { tName = "WaveNo"
   , tnum = 105
   , tparser = toFIXChar }

tIssuer :: FIXTag
tIssuer = FIXTag 
   { tName = "Issuer"
   , tnum = 106
   , tparser = toFIXChar }

tSecurityDesc :: FIXTag
tSecurityDesc = FIXTag 
   { tName = "SecurityDesc"
   , tnum = 107
   , tparser = toFIXChar }

tHeartBtInt :: FIXTag
tHeartBtInt = FIXTag 
   { tName = "HeartBtInt"
   , tnum = 108
   , tparser = toFIXInt }

tClientID :: FIXTag
tClientID = FIXTag 
   { tName = "ClientID"
   , tnum = 109
   , tparser = toFIXChar }

tMinQty :: FIXTag
tMinQty = FIXTag 
   { tName = "MinQty"
   , tnum = 110
   , tparser = toFIXInt }

tMaxFloor :: FIXTag
tMaxFloor = FIXTag 
   { tName = "MaxFloor"
   , tnum = 111
   , tparser = toFIXInt }

tTestReqID :: FIXTag
tTestReqID = FIXTag 
   { tName = "TestReqID"
   , tnum = 112
   , tparser = toFIXChar }

tReportToExch :: FIXTag
tReportToExch = FIXTag 
   { tName = "ReportToExch"
   , tnum = 113
   , tparser = toFIXChar }

tLocateReqd :: FIXTag
tLocateReqd = FIXTag 
   { tName = "LocateReqd"
   , tnum = 114
   , tparser = toFIXChar }

tOnBehalfOfCompID :: FIXTag
tOnBehalfOfCompID = FIXTag 
   { tName = "OnBehalfOfCompID"
   , tnum = 115
   , tparser = toFIXChar }

tOnBehalfOfSubID :: FIXTag
tOnBehalfOfSubID = FIXTag 
   { tName = "OnBehalfOfSubID"
   , tnum = 116
   , tparser = toFIXChar }

tQuoteID :: FIXTag
tQuoteID = FIXTag 
   { tName = "QuoteID"
   , tnum = 117
   , tparser = toFIXChar }

tNetMoney :: FIXTag
tNetMoney = FIXTag 
   { tName = "NetMoney"
   , tnum = 118
   , tparser = toFIXFloat }

tSettlCurrAmt :: FIXTag
tSettlCurrAmt = FIXTag 
   { tName = "SettlCurrAmt"
   , tnum = 119
   , tparser = toFIXFloat }

tSettlCurrency :: FIXTag
tSettlCurrency = FIXTag 
   { tName = "SettlCurrency"
   , tnum = 120
   , tparser = toFIXChar }

tForexReq :: FIXTag
tForexReq = FIXTag 
   { tName = "ForexReq"
   , tnum = 121
   , tparser = toFIXChar }

tOrigSendingTime :: FIXTag
tOrigSendingTime = FIXTag 
   { tName = "OrigSendingTime"
   , tnum = 122
   , tparser = toFIXString }

tGapFillFlag :: FIXTag
tGapFillFlag = FIXTag 
   { tName = "GapFillFlag"
   , tnum = 123
   , tparser = toFIXChar }

tNoExecs :: FIXTag
tNoExecs = FIXTag 
   { tName = "NoExecs"
   , tnum = 124
   , tparser = toFIXInt }

tCxlType :: FIXTag
tCxlType = FIXTag 
   { tName = "CxlType"
   , tnum = 125
   , tparser = toFIXString }

tExpireTime :: FIXTag
tExpireTime = FIXTag 
   { tName = "ExpireTime"
   , tnum = 126
   , tparser = toFIXString }

tDKReason :: FIXTag
tDKReason = FIXTag 
   { tName = "DKReason"
   , tnum = 127
   , tparser = toFIXChar }

tDeliverToCompID :: FIXTag
tDeliverToCompID = FIXTag 
   { tName = "DeliverToCompID"
   , tnum = 128
   , tparser = toFIXChar }

tDeliverToSubID :: FIXTag
tDeliverToSubID = FIXTag 
   { tName = "DeliverToSubID"
   , tnum = 129
   , tparser = toFIXChar }

tIOINaturalFlag :: FIXTag
tIOINaturalFlag = FIXTag 
   { tName = "IOINaturalFlag"
   , tnum = 130
   , tparser = toFIXChar }

tQuoteReqID :: FIXTag
tQuoteReqID = FIXTag 
   { tName = "QuoteReqID"
   , tnum = 131
   , tparser = toFIXChar }

tBidPx :: FIXTag
tBidPx = FIXTag 
   { tName = "BidPx"
   , tnum = 132
   , tparser = toFIXFloat }

tOfferPx :: FIXTag
tOfferPx = FIXTag 
   { tName = "OfferPx"
   , tnum = 133
   , tparser = toFIXFloat }

tBidSize :: FIXTag
tBidSize = FIXTag 
   { tName = "BidSize"
   , tnum = 134
   , tparser = toFIXInt }

tOfferSize :: FIXTag
tOfferSize = FIXTag 
   { tName = "OfferSize"
   , tnum = 135
   , tparser = toFIXInt }

tNoMiscFees :: FIXTag
tNoMiscFees = FIXTag 
   { tName = "NoMiscFees"
   , tnum = 136
   , tparser = toFIXInt }

tMiscFeeAmt :: FIXTag
tMiscFeeAmt = FIXTag 
   { tName = "MiscFeeAmt"
   , tnum = 137
   , tparser = toFIXFloat }

tMiscFeeCurr :: FIXTag
tMiscFeeCurr = FIXTag 
   { tName = "MiscFeeCurr"
   , tnum = 138
   , tparser = toFIXChar }

tMiscFeeType :: FIXTag
tMiscFeeType = FIXTag 
   { tName = "MiscFeeType"
   , tnum = 139
   , tparser = toFIXChar }

tPrevClosePx :: FIXTag
tPrevClosePx = FIXTag 
   { tName = "PrevClosePx"
   , tnum = 140
   , tparser = toFIXFloat }

tResetSeqNumFlag :: FIXTag
tResetSeqNumFlag = FIXTag 
   { tName = "ResetSeqNumFlag"
   , tnum = 141
   , tparser = toFIXChar }

tSenderLocationID :: FIXTag
tSenderLocationID = FIXTag 
   { tName = "SenderLocationID"
   , tnum = 142
   , tparser = toFIXChar }

tTargetLocationID :: FIXTag
tTargetLocationID = FIXTag 
   { tName = "TargetLocationID"
   , tnum = 143
   , tparser = toFIXChar }

tOnBehalfOfLocationID :: FIXTag
tOnBehalfOfLocationID = FIXTag 
   { tName = "OnBehalfOfLocationID"
   , tnum = 144
   , tparser = toFIXChar }

tDeliverToLocationID :: FIXTag
tDeliverToLocationID = FIXTag 
   { tName = "DeliverToLocationID"
   , tnum = 145
   , tparser = toFIXChar }

tNoRelatedSym :: FIXTag
tNoRelatedSym = FIXTag 
   { tName = "NoRelatedSym"
   , tnum = 146
   , tparser = toFIXInt }

tSubject :: FIXTag
tSubject = FIXTag 
   { tName = "Subject"
   , tnum = 147
   , tparser = toFIXChar }

tHeadline :: FIXTag
tHeadline = FIXTag 
   { tName = "Headline"
   , tnum = 148
   , tparser = toFIXChar }

tURLLink :: FIXTag
tURLLink = FIXTag 
   { tName = "URLLink"
   , tnum = 149
   , tparser = toFIXChar }

tExecType :: FIXTag
tExecType = FIXTag 
   { tName = "ExecType"
   , tnum = 150
   , tparser = toFIXChar }

tLeavesQty :: FIXTag
tLeavesQty = FIXTag 
   { tName = "LeavesQty"
   , tnum = 151
   , tparser = toFIXInt }

tCashOrderQty :: FIXTag
tCashOrderQty = FIXTag 
   { tName = "CashOrderQty"
   , tnum = 152
   , tparser = toFIXFloat }

tAllocAvgPx :: FIXTag
tAllocAvgPx = FIXTag 
   { tName = "AllocAvgPx"
   , tnum = 153
   , tparser = toFIXFloat }

tAllocNetMoney :: FIXTag
tAllocNetMoney = FIXTag 
   { tName = "AllocNetMoney"
   , tnum = 154
   , tparser = toFIXFloat }

tSettlCurrFxRate :: FIXTag
tSettlCurrFxRate = FIXTag 
   { tName = "SettlCurrFxRate"
   , tnum = 155
   , tparser = toFIXFloat }

tSettlCurrFxRateCalc :: FIXTag
tSettlCurrFxRateCalc = FIXTag 
   { tName = "SettlCurrFxRateCalc"
   , tnum = 156
   , tparser = toFIXChar }

tNumDaysInterest :: FIXTag
tNumDaysInterest = FIXTag 
   { tName = "NumDaysInterest"
   , tnum = 157
   , tparser = toFIXInt }

tAccruedInterestRate :: FIXTag
tAccruedInterestRate = FIXTag 
   { tName = "AccruedInterestRate"
   , tnum = 158
   , tparser = toFIXFloat }

tAccruedInterestAmt :: FIXTag
tAccruedInterestAmt = FIXTag 
   { tName = "AccruedInterestAmt"
   , tnum = 159
   , tparser = toFIXFloat }

tSettlInstMode :: FIXTag
tSettlInstMode = FIXTag 
   { tName = "SettlInstMode"
   , tnum = 160
   , tparser = toFIXChar }

tAllocText :: FIXTag
tAllocText = FIXTag 
   { tName = "AllocText"
   , tnum = 161
   , tparser = toFIXChar }

tSettlInstID :: FIXTag
tSettlInstID = FIXTag 
   { tName = "SettlInstID"
   , tnum = 162
   , tparser = toFIXChar }

tSettlInstTransType :: FIXTag
tSettlInstTransType = FIXTag 
   { tName = "SettlInstTransType"
   , tnum = 163
   , tparser = toFIXChar }

tEmailThreadID :: FIXTag
tEmailThreadID = FIXTag 
   { tName = "EmailThreadID"
   , tnum = 164
   , tparser = toFIXChar }

tSettlInstSource :: FIXTag
tSettlInstSource = FIXTag 
   { tName = "SettlInstSource"
   , tnum = 165
   , tparser = toFIXChar }

tSettlLocation :: FIXTag
tSettlLocation = FIXTag 
   { tName = "SettlLocation"
   , tnum = 166
   , tparser = toFIXChar }

tSecurityType :: FIXTag
tSecurityType = FIXTag 
   { tName = "SecurityType"
   , tnum = 167
   , tparser = toFIXChar }

tEffectiveTime :: FIXTag
tEffectiveTime = FIXTag 
   { tName = "EffectiveTime"
   , tnum = 168
   , tparser = toFIXString }

tStandInstDbType :: FIXTag
tStandInstDbType = FIXTag 
   { tName = "StandInstDbType"
   , tnum = 169
   , tparser = toFIXInt }

tStandInstDbName :: FIXTag
tStandInstDbName = FIXTag 
   { tName = "StandInstDbName"
   , tnum = 170
   , tparser = toFIXChar }

tStandInstDbID :: FIXTag
tStandInstDbID = FIXTag 
   { tName = "StandInstDbID"
   , tnum = 171
   , tparser = toFIXChar }

tSettlDeliveryType :: FIXTag
tSettlDeliveryType = FIXTag 
   { tName = "SettlDeliveryType"
   , tnum = 172
   , tparser = toFIXInt }

tSettlDepositoryCode :: FIXTag
tSettlDepositoryCode = FIXTag 
   { tName = "SettlDepositoryCode"
   , tnum = 173
   , tparser = toFIXChar }

tSettlBrkrCode :: FIXTag
tSettlBrkrCode = FIXTag 
   { tName = "SettlBrkrCode"
   , tnum = 174
   , tparser = toFIXChar }

tSettlInstCode :: FIXTag
tSettlInstCode = FIXTag 
   { tName = "SettlInstCode"
   , tnum = 175
   , tparser = toFIXChar }

tSecuritySettlAgentName :: FIXTag
tSecuritySettlAgentName = FIXTag 
   { tName = "SecuritySettlAgentName"
   , tnum = 176
   , tparser = toFIXChar }

tSecuritySettlAgentCode :: FIXTag
tSecuritySettlAgentCode = FIXTag 
   { tName = "SecuritySettlAgentCode"
   , tnum = 177
   , tparser = toFIXChar }

tSecuritySettlAgentAcctNum :: FIXTag
tSecuritySettlAgentAcctNum = FIXTag 
   { tName = "SecuritySettlAgentAcctNum"
   , tnum = 178
   , tparser = toFIXChar }

tSecuritySettlAgentAcctName :: FIXTag
tSecuritySettlAgentAcctName = FIXTag 
   { tName = "SecuritySettlAgentAcctName"
   , tnum = 179
   , tparser = toFIXChar }

tSecuritySettlAgentContactName :: FIXTag
tSecuritySettlAgentContactName = FIXTag 
   { tName = "SecuritySettlAgentContactName"
   , tnum = 180
   , tparser = toFIXChar }

tSecuritySettlAgentContactPhone :: FIXTag
tSecuritySettlAgentContactPhone = FIXTag 
   { tName = "SecuritySettlAgentContactPhone"
   , tnum = 181
   , tparser = toFIXChar }

tCashSettlAgentName :: FIXTag
tCashSettlAgentName = FIXTag 
   { tName = "CashSettlAgentName"
   , tnum = 182
   , tparser = toFIXChar }

tCashSettlAgentCode :: FIXTag
tCashSettlAgentCode = FIXTag 
   { tName = "CashSettlAgentCode"
   , tnum = 183
   , tparser = toFIXChar }

tCashSettlAgentAcctNum :: FIXTag
tCashSettlAgentAcctNum = FIXTag 
   { tName = "CashSettlAgentAcctNum"
   , tnum = 184
   , tparser = toFIXChar }

tCashSettlAgentAcctName :: FIXTag
tCashSettlAgentAcctName = FIXTag 
   { tName = "CashSettlAgentAcctName"
   , tnum = 185
   , tparser = toFIXChar }

tCashSettlAgentContactName :: FIXTag
tCashSettlAgentContactName = FIXTag 
   { tName = "CashSettlAgentContactName"
   , tnum = 186
   , tparser = toFIXChar }

tCashSettlAgentContactPhone :: FIXTag
tCashSettlAgentContactPhone = FIXTag 
   { tName = "CashSettlAgentContactPhone"
   , tnum = 187
   , tparser = toFIXChar }

tBidSpotRate :: FIXTag
tBidSpotRate = FIXTag 
   { tName = "BidSpotRate"
   , tnum = 188
   , tparser = toFIXFloat }

tBidForwardPoints :: FIXTag
tBidForwardPoints = FIXTag 
   { tName = "BidForwardPoints"
   , tnum = 189
   , tparser = toFIXFloat }

tOfferSpotRate :: FIXTag
tOfferSpotRate = FIXTag 
   { tName = "OfferSpotRate"
   , tnum = 190
   , tparser = toFIXFloat }

tOfferForwardPoints :: FIXTag
tOfferForwardPoints = FIXTag 
   { tName = "OfferForwardPoints"
   , tnum = 191
   , tparser = toFIXFloat }

tOrderQty2 :: FIXTag
tOrderQty2 = FIXTag 
   { tName = "OrderQty2"
   , tnum = 192
   , tparser = toFIXFloat }

tFutSettDate2 :: FIXTag
tFutSettDate2 = FIXTag 
   { tName = "FutSettDate2"
   , tnum = 193
   , tparser = toFIXString }

tLastSpotRate :: FIXTag
tLastSpotRate = FIXTag 
   { tName = "LastSpotRate"
   , tnum = 194
   , tparser = toFIXFloat }

tLastForwardPoints :: FIXTag
tLastForwardPoints = FIXTag 
   { tName = "LastForwardPoints"
   , tnum = 195
   , tparser = toFIXFloat }

tAllocLinkID :: FIXTag
tAllocLinkID = FIXTag 
   { tName = "AllocLinkID"
   , tnum = 196
   , tparser = toFIXChar }

tAllocLinkType :: FIXTag
tAllocLinkType = FIXTag 
   { tName = "AllocLinkType"
   , tnum = 197
   , tparser = toFIXInt }

tSecondaryOrderID :: FIXTag
tSecondaryOrderID = FIXTag 
   { tName = "SecondaryOrderID"
   , tnum = 198
   , tparser = toFIXChar }

tNoIOIQualifiers :: FIXTag
tNoIOIQualifiers = FIXTag 
   { tName = "NoIOIQualifiers"
   , tnum = 199
   , tparser = toFIXInt }

tMaturityMonthYear :: FIXTag
tMaturityMonthYear = FIXTag 
   { tName = "MaturityMonthYear"
   , tnum = 200
   , tparser = toFIXString }

tPutOrCall :: FIXTag
tPutOrCall = FIXTag 
   { tName = "PutOrCall"
   , tnum = 201
   , tparser = toFIXInt }

tStrikePrice :: FIXTag
tStrikePrice = FIXTag 
   { tName = "StrikePrice"
   , tnum = 202
   , tparser = toFIXFloat }

tCoveredOrUncovered :: FIXTag
tCoveredOrUncovered = FIXTag 
   { tName = "CoveredOrUncovered"
   , tnum = 203
   , tparser = toFIXInt }

tCustomerOrFirm :: FIXTag
tCustomerOrFirm = FIXTag 
   { tName = "CustomerOrFirm"
   , tnum = 204
   , tparser = toFIXInt }

tMaturityDay :: FIXTag
tMaturityDay = FIXTag 
   { tName = "MaturityDay"
   , tnum = 205
   , tparser = toFIXDayOfMonth }

tOptAttribute :: FIXTag
tOptAttribute = FIXTag 
   { tName = "OptAttribute"
   , tnum = 206
   , tparser = toFIXChar }

tSecurityExchange :: FIXTag
tSecurityExchange = FIXTag 
   { tName = "SecurityExchange"
   , tnum = 207
   , tparser = toFIXChar }

tNotifyBrokerOfCredit :: FIXTag
tNotifyBrokerOfCredit = FIXTag 
   { tName = "NotifyBrokerOfCredit"
   , tnum = 208
   , tparser = toFIXChar }

tAllocHandlInst :: FIXTag
tAllocHandlInst = FIXTag 
   { tName = "AllocHandlInst"
   , tnum = 209
   , tparser = toFIXInt }

tMaxShow :: FIXTag
tMaxShow = FIXTag 
   { tName = "MaxShow"
   , tnum = 210
   , tparser = toFIXInt }

tPegDifference :: FIXTag
tPegDifference = FIXTag 
   { tName = "PegDifference"
   , tnum = 211
   , tparser = toFIXFloat }

headerFIX41 :: FIXTags
headerFIX41 = 
   LT.insert (tnum tBeginString) tBeginString $
   LT.insert (tnum tBodyLength) tBodyLength $
   LT.insert (tnum tMsgType) tMsgType $
   LT.insert (tnum tSenderCompID) tSenderCompID $
   LT.insert (tnum tTargetCompID) tTargetCompID $
   LT.insert (tnum tOnBehalfOfCompID) tOnBehalfOfCompID $
   LT.insert (tnum tDeliverToCompID) tDeliverToCompID $
   LT.insert (tnum tSecureDataLen) tSecureDataLen $
   LT.insert (tnum tSecureData) tSecureData $
   LT.insert (tnum tMsgSeqNum) tMsgSeqNum $
   LT.insert (tnum tSenderSubID) tSenderSubID $
   LT.insert (tnum tSenderLocationID) tSenderLocationID $
   LT.insert (tnum tTargetSubID) tTargetSubID $
   LT.insert (tnum tTargetLocationID) tTargetLocationID $
   LT.insert (tnum tOnBehalfOfSubID) tOnBehalfOfSubID $
   LT.insert (tnum tOnBehalfOfLocationID) tOnBehalfOfLocationID $
   LT.insert (tnum tDeliverToSubID) tDeliverToSubID $
   LT.insert (tnum tDeliverToLocationID) tDeliverToLocationID $
   LT.insert (tnum tPossDupFlag) tPossDupFlag $
   LT.insert (tnum tPossResend) tPossResend $
   LT.insert (tnum tSendingTime) tSendingTime $
   LT.insert (tnum tOrigSendingTime) tOrigSendingTime    LT.new


trailerFIX41 :: FIXTags
trailerFIX41 = 
   LT.insert (tnum tSignatureLength) tSignatureLength $
   LT.insert (tnum tSignature) tSignature $
   LT.insert (tnum tCheckSum) tCheckSum    LT.new


mHeartbeat :: FIXMessageSpec
mHeartbeat = FMSpec
   { msName = "Heartbeat"
   , msType = C.pack "0"
   , msHeader = headerFIX41
   , msBody = mHeartbeatBody
   , msTrailer = trailerFIX41 }
   where
   mHeartbeatBody = 
      LT.insert (tnum tTestReqID) tTestReqID       LT.new


mTestRequest :: FIXMessageSpec
mTestRequest = FMSpec
   { msName = "TestRequest"
   , msType = C.pack "1"
   , msHeader = headerFIX41
   , msBody = mTestRequestBody
   , msTrailer = trailerFIX41 }
   where
   mTestRequestBody = 
      LT.insert (tnum tTestReqID) tTestReqID       LT.new


mResendRequest :: FIXMessageSpec
mResendRequest = FMSpec
   { msName = "ResendRequest"
   , msType = C.pack "2"
   , msHeader = headerFIX41
   , msBody = mResendRequestBody
   , msTrailer = trailerFIX41 }
   where
   mResendRequestBody = 
      LT.insert (tnum tBeginSeqNo) tBeginSeqNo $
      LT.insert (tnum tEndSeqNo) tEndSeqNo       LT.new


mReject :: FIXMessageSpec
mReject = FMSpec
   { msName = "Reject"
   , msType = C.pack "3"
   , msHeader = headerFIX41
   , msBody = mRejectBody
   , msTrailer = trailerFIX41 }
   where
   mRejectBody = 
      LT.insert (tnum tRefSeqNum) tRefSeqNum $
      LT.insert (tnum tText) tText       LT.new


mSequenceReset :: FIXMessageSpec
mSequenceReset = FMSpec
   { msName = "SequenceReset"
   , msType = C.pack "4"
   , msHeader = headerFIX41
   , msBody = mSequenceResetBody
   , msTrailer = trailerFIX41 }
   where
   mSequenceResetBody = 
      LT.insert (tnum tGapFillFlag) tGapFillFlag $
      LT.insert (tnum tNewSeqNo) tNewSeqNo       LT.new


mLogout :: FIXMessageSpec
mLogout = FMSpec
   { msName = "Logout"
   , msType = C.pack "5"
   , msHeader = headerFIX41
   , msBody = mLogoutBody
   , msTrailer = trailerFIX41 }
   where
   mLogoutBody = 
      LT.insert (tnum tText) tText       LT.new


mIndicationofInterest :: FIXMessageSpec
mIndicationofInterest = FMSpec
   { msName = "IndicationofInterest"
   , msType = C.pack "6"
   , msHeader = headerFIX41
   , msBody = mIndicationofInterestBody
   , msTrailer = trailerFIX41 }
   where
   mIndicationofInterestBody = 
      LT.insert (tnum tIOIid) tIOIid $
      LT.insert (tnum tIOITransType) tIOITransType $
      LT.insert (tnum tIOIRefID) tIOIRefID $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tIOIShares) tIOIShares $
      LT.insert (tnum tPrice) tPrice $
      LT.insert (tnum tCurrency) tCurrency $
      LT.insert (tnum tValidUntilTime) tValidUntilTime $
      LT.insert (tnum tIOIQltyInd) tIOIQltyInd $
      LT.insert (tnum tIOIOthSvc) tIOIOthSvc $
      LT.insert (tnum tIOINaturalFlag) tIOINaturalFlag $
      LT.insert (tnum tNoIOIQualifiers) gNoIOIQualifiers''' $
      LT.insert (tnum tText) tText $
      LT.insert (tnum tTransactTime) tTransactTime $
      LT.insert (tnum tURLLink) tURLLink       LT.new
      where
         gNoIOIQualifiers''' = FIXTag
            { tName = "NoIOIQualifiers"
            , tnum = tnum tNoIOIQualifiers
            , tparser = gNoIOIQualifiersP''' }

         gNoIOIQualifiersP''' = groupP FGSpec
            { gsLength = tNoIOIQualifiers
            , gsSeperator = tIOIQualifier
            , gsBody = gNoIOIQualifiersBody''' }
            where
            gNoIOIQualifiersBody''' = 
               LT.new



mAdvertisement :: FIXMessageSpec
mAdvertisement = FMSpec
   { msName = "Advertisement"
   , msType = C.pack "7"
   , msHeader = headerFIX41
   , msBody = mAdvertisementBody
   , msTrailer = trailerFIX41 }
   where
   mAdvertisementBody = 
      LT.insert (tnum tAdvId) tAdvId $
      LT.insert (tnum tAdvTransType) tAdvTransType $
      LT.insert (tnum tAdvRefID) tAdvRefID $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tAdvSide) tAdvSide $
      LT.insert (tnum tShares) tShares $
      LT.insert (tnum tPrice) tPrice $
      LT.insert (tnum tCurrency) tCurrency $
      LT.insert (tnum tTradeDate) tTradeDate $
      LT.insert (tnum tTransactTime) tTransactTime $
      LT.insert (tnum tText) tText $
      LT.insert (tnum tURLLink) tURLLink $
      LT.insert (tnum tLastMkt) tLastMkt       LT.new


mExecutionReport :: FIXMessageSpec
mExecutionReport = FMSpec
   { msName = "ExecutionReport"
   , msType = C.pack "8"
   , msHeader = headerFIX41
   , msBody = mExecutionReportBody
   , msTrailer = trailerFIX41 }
   where
   mExecutionReportBody = 
      LT.insert (tnum tOrderID) tOrderID $
      LT.insert (tnum tSecondaryOrderID) tSecondaryOrderID $
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tOrigClOrdID) tOrigClOrdID $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tExecID) tExecID $
      LT.insert (tnum tExecTransType) tExecTransType $
      LT.insert (tnum tExecRefID) tExecRefID $
      LT.insert (tnum tExecType) tExecType $
      LT.insert (tnum tOrdStatus) tOrdStatus $
      LT.insert (tnum tOrdRejReason) tOrdRejReason $
      LT.insert (tnum tAccount) tAccount $
      LT.insert (tnum tSettlmntTyp) tSettlmntTyp $
      LT.insert (tnum tFutSettDate) tFutSettDate $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tOrderQty) tOrderQty $
      LT.insert (tnum tOrdType) tOrdType $
      LT.insert (tnum tPrice) tPrice $
      LT.insert (tnum tStopPx) tStopPx $
      LT.insert (tnum tPegDifference) tPegDifference $
      LT.insert (tnum tCurrency) tCurrency $
      LT.insert (tnum tTimeInForce) tTimeInForce $
      LT.insert (tnum tExpireTime) tExpireTime $
      LT.insert (tnum tExecInst) tExecInst $
      LT.insert (tnum tRule80A) tRule80A $
      LT.insert (tnum tLastShares) tLastShares $
      LT.insert (tnum tLastPx) tLastPx $
      LT.insert (tnum tLastSpotRate) tLastSpotRate $
      LT.insert (tnum tLastForwardPoints) tLastForwardPoints $
      LT.insert (tnum tLastMkt) tLastMkt $
      LT.insert (tnum tLastCapacity) tLastCapacity $
      LT.insert (tnum tLeavesQty) tLeavesQty $
      LT.insert (tnum tCumQty) tCumQty $
      LT.insert (tnum tAvgPx) tAvgPx $
      LT.insert (tnum tTradeDate) tTradeDate $
      LT.insert (tnum tTransactTime) tTransactTime $
      LT.insert (tnum tReportToExch) tReportToExch $
      LT.insert (tnum tCommission) tCommission $
      LT.insert (tnum tCommType) tCommType $
      LT.insert (tnum tSettlCurrAmt) tSettlCurrAmt $
      LT.insert (tnum tSettlCurrency) tSettlCurrency $
      LT.insert (tnum tSettlCurrFxRate) tSettlCurrFxRate $
      LT.insert (tnum tSettlCurrFxRateCalc) tSettlCurrFxRateCalc $
      LT.insert (tnum tText) tText       LT.new


mOrderCancelReject :: FIXMessageSpec
mOrderCancelReject = FMSpec
   { msName = "OrderCancelReject"
   , msType = C.pack "9"
   , msHeader = headerFIX41
   , msBody = mOrderCancelRejectBody
   , msTrailer = trailerFIX41 }
   where
   mOrderCancelRejectBody = 
      LT.insert (tnum tOrderID) tOrderID $
      LT.insert (tnum tSecondaryOrderID) tSecondaryOrderID $
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tOrigClOrdID) tOrigClOrdID $
      LT.insert (tnum tOrdStatus) tOrdStatus $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tCxlRejReason) tCxlRejReason $
      LT.insert (tnum tText) tText       LT.new


mLogon :: FIXMessageSpec
mLogon = FMSpec
   { msName = "Logon"
   , msType = C.pack "A"
   , msHeader = headerFIX41
   , msBody = mLogonBody
   , msTrailer = trailerFIX41 }
   where
   mLogonBody = 
      LT.insert (tnum tEncryptMethod) tEncryptMethod $
      LT.insert (tnum tHeartBtInt) tHeartBtInt $
      LT.insert (tnum tRawDataLength) tRawDataLength $
      LT.insert (tnum tRawData) tRawData $
      LT.insert (tnum tResetSeqNumFlag) tResetSeqNumFlag       LT.new


mNews :: FIXMessageSpec
mNews = FMSpec
   { msName = "News"
   , msType = C.pack "B"
   , msHeader = headerFIX41
   , msBody = mNewsBody
   , msTrailer = trailerFIX41 }
   where
   mNewsBody = 
      LT.insert (tnum tOrigTime) tOrigTime $
      LT.insert (tnum tUrgency) tUrgency $
      LT.insert (tnum tHeadline) tHeadline $
      LT.insert (tnum tNoRelatedSym) gNoRelatedSym''' $
      LT.insert (tnum tLinesOfText) gLinesOfText''' $
      LT.insert (tnum tURLLink) tURLLink $
      LT.insert (tnum tRawDataLength) tRawDataLength $
      LT.insert (tnum tRawData) tRawData       LT.new
      where
         gLinesOfText''' = FIXTag
            { tName = "LinesOfText"
            , tnum = tnum tLinesOfText
            , tparser = gLinesOfTextP''' }

         gLinesOfTextP''' = groupP FGSpec
            { gsLength = tLinesOfText
            , gsSeperator = tText
            , gsBody = gLinesOfTextBody''' }
            where
            gLinesOfTextBody''' = 
               LT.new

         gNoRelatedSym''' = FIXTag
            { tName = "NoRelatedSym"
            , tnum = tnum tNoRelatedSym
            , tparser = gNoRelatedSymP''' }

         gNoRelatedSymP''' = groupP FGSpec
            { gsLength = tNoRelatedSym
            , gsSeperator = tRelatdSym
            , gsBody = gNoRelatedSymBody''' }
            where
            gNoRelatedSymBody''' = 
               LT.insert (tnum tSymbolSfx) tSymbolSfx $
               LT.insert (tnum tSecurityID) tSecurityID $
               LT.insert (tnum tIDSource) tIDSource $
               LT.insert (tnum tSecurityType) tSecurityType $
               LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
               LT.insert (tnum tMaturityDay) tMaturityDay $
               LT.insert (tnum tPutOrCall) tPutOrCall $
               LT.insert (tnum tStrikePrice) tStrikePrice $
               LT.insert (tnum tOptAttribute) tOptAttribute $
               LT.insert (tnum tSecurityExchange) tSecurityExchange $
               LT.insert (tnum tIssuer) tIssuer $
               LT.insert (tnum tSecurityDesc) tSecurityDesc                LT.new



mEmail :: FIXMessageSpec
mEmail = FMSpec
   { msName = "Email"
   , msType = C.pack "C"
   , msHeader = headerFIX41
   , msBody = mEmailBody
   , msTrailer = trailerFIX41 }
   where
   mEmailBody = 
      LT.insert (tnum tEmailThreadID) tEmailThreadID $
      LT.insert (tnum tEmailType) tEmailType $
      LT.insert (tnum tOrigTime) tOrigTime $
      LT.insert (tnum tSubject) tSubject $
      LT.insert (tnum tNoRelatedSym) gNoRelatedSym''' $
      LT.insert (tnum tOrderID) tOrderID $
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tLinesOfText) gLinesOfText''' $
      LT.insert (tnum tRawDataLength) tRawDataLength $
      LT.insert (tnum tRawData) tRawData       LT.new
      where
         gLinesOfText''' = FIXTag
            { tName = "LinesOfText"
            , tnum = tnum tLinesOfText
            , tparser = gLinesOfTextP''' }

         gLinesOfTextP''' = groupP FGSpec
            { gsLength = tLinesOfText
            , gsSeperator = tText
            , gsBody = gLinesOfTextBody''' }
            where
            gLinesOfTextBody''' = 
               LT.new

         gNoRelatedSym''' = FIXTag
            { tName = "NoRelatedSym"
            , tnum = tnum tNoRelatedSym
            , tparser = gNoRelatedSymP''' }

         gNoRelatedSymP''' = groupP FGSpec
            { gsLength = tNoRelatedSym
            , gsSeperator = tRelatdSym
            , gsBody = gNoRelatedSymBody''' }
            where
            gNoRelatedSymBody''' = 
               LT.insert (tnum tSymbolSfx) tSymbolSfx $
               LT.insert (tnum tSecurityID) tSecurityID $
               LT.insert (tnum tIDSource) tIDSource $
               LT.insert (tnum tSecurityType) tSecurityType $
               LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
               LT.insert (tnum tMaturityDay) tMaturityDay $
               LT.insert (tnum tPutOrCall) tPutOrCall $
               LT.insert (tnum tStrikePrice) tStrikePrice $
               LT.insert (tnum tOptAttribute) tOptAttribute $
               LT.insert (tnum tSecurityExchange) tSecurityExchange $
               LT.insert (tnum tIssuer) tIssuer $
               LT.insert (tnum tSecurityDesc) tSecurityDesc                LT.new



mNewOrderSingle :: FIXMessageSpec
mNewOrderSingle = FMSpec
   { msName = "NewOrderSingle"
   , msType = C.pack "D"
   , msHeader = headerFIX41
   , msBody = mNewOrderSingleBody
   , msTrailer = trailerFIX41 }
   where
   mNewOrderSingleBody = 
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tAccount) tAccount $
      LT.insert (tnum tSettlmntTyp) tSettlmntTyp $
      LT.insert (tnum tFutSettDate) tFutSettDate $
      LT.insert (tnum tHandlInst) tHandlInst $
      LT.insert (tnum tExecInst) tExecInst $
      LT.insert (tnum tMinQty) tMinQty $
      LT.insert (tnum tMaxFloor) tMaxFloor $
      LT.insert (tnum tExDestination) tExDestination $
      LT.insert (tnum tProcessCode) tProcessCode $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tPrevClosePx) tPrevClosePx $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tLocateReqd) tLocateReqd $
      LT.insert (tnum tOrderQty) tOrderQty $
      LT.insert (tnum tCashOrderQty) tCashOrderQty $
      LT.insert (tnum tOrdType) tOrdType $
      LT.insert (tnum tPrice) tPrice $
      LT.insert (tnum tStopPx) tStopPx $
      LT.insert (tnum tCurrency) tCurrency $
      LT.insert (tnum tIOIid) tIOIid $
      LT.insert (tnum tQuoteID) tQuoteID $
      LT.insert (tnum tTimeInForce) tTimeInForce $
      LT.insert (tnum tExpireTime) tExpireTime $
      LT.insert (tnum tCommission) tCommission $
      LT.insert (tnum tCommType) tCommType $
      LT.insert (tnum tRule80A) tRule80A $
      LT.insert (tnum tForexReq) tForexReq $
      LT.insert (tnum tSettlCurrency) tSettlCurrency $
      LT.insert (tnum tText) tText $
      LT.insert (tnum tFutSettDate2) tFutSettDate2 $
      LT.insert (tnum tOrderQty2) tOrderQty2 $
      LT.insert (tnum tOpenClose) tOpenClose $
      LT.insert (tnum tCoveredOrUncovered) tCoveredOrUncovered $
      LT.insert (tnum tCustomerOrFirm) tCustomerOrFirm $
      LT.insert (tnum tMaxShow) tMaxShow $
      LT.insert (tnum tPegDifference) tPegDifference       LT.new


mNewOrderList :: FIXMessageSpec
mNewOrderList = FMSpec
   { msName = "NewOrderList"
   , msType = C.pack "E"
   , msHeader = headerFIX41
   , msBody = mNewOrderListBody
   , msTrailer = trailerFIX41 }
   where
   mNewOrderListBody = 
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tWaveNo) tWaveNo $
      LT.insert (tnum tListSeqNo) tListSeqNo $
      LT.insert (tnum tListNoOrds) tListNoOrds $
      LT.insert (tnum tListExecInst) tListExecInst $
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tAccount) tAccount $
      LT.insert (tnum tSettlmntTyp) tSettlmntTyp $
      LT.insert (tnum tFutSettDate) tFutSettDate $
      LT.insert (tnum tHandlInst) tHandlInst $
      LT.insert (tnum tExecInst) tExecInst $
      LT.insert (tnum tMinQty) tMinQty $
      LT.insert (tnum tMaxFloor) tMaxFloor $
      LT.insert (tnum tExDestination) tExDestination $
      LT.insert (tnum tProcessCode) tProcessCode $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tPrevClosePx) tPrevClosePx $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tLocateReqd) tLocateReqd $
      LT.insert (tnum tOrderQty) tOrderQty $
      LT.insert (tnum tOrdType) tOrdType $
      LT.insert (tnum tPrice) tPrice $
      LT.insert (tnum tStopPx) tStopPx $
      LT.insert (tnum tPegDifference) tPegDifference $
      LT.insert (tnum tCurrency) tCurrency $
      LT.insert (tnum tTimeInForce) tTimeInForce $
      LT.insert (tnum tExpireTime) tExpireTime $
      LT.insert (tnum tCommission) tCommission $
      LT.insert (tnum tCommType) tCommType $
      LT.insert (tnum tRule80A) tRule80A $
      LT.insert (tnum tForexReq) tForexReq $
      LT.insert (tnum tSettlCurrency) tSettlCurrency $
      LT.insert (tnum tText) tText $
      LT.insert (tnum tFutSettDate2) tFutSettDate2 $
      LT.insert (tnum tOrderQty2) tOrderQty2 $
      LT.insert (tnum tOpenClose) tOpenClose $
      LT.insert (tnum tCoveredOrUncovered) tCoveredOrUncovered $
      LT.insert (tnum tCustomerOrFirm) tCustomerOrFirm $
      LT.insert (tnum tMaxShow) tMaxShow       LT.new


mOrderCancelRequest :: FIXMessageSpec
mOrderCancelRequest = FMSpec
   { msName = "OrderCancelRequest"
   , msType = C.pack "F"
   , msHeader = headerFIX41
   , msBody = mOrderCancelRequestBody
   , msTrailer = trailerFIX41 }
   where
   mOrderCancelRequestBody = 
      LT.insert (tnum tOrigClOrdID) tOrigClOrdID $
      LT.insert (tnum tOrderID) tOrderID $
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tOrderQty) tOrderQty $
      LT.insert (tnum tCashOrderQty) tCashOrderQty $
      LT.insert (tnum tText) tText       LT.new


mOrderCancelReplaceRequest :: FIXMessageSpec
mOrderCancelReplaceRequest = FMSpec
   { msName = "OrderCancelReplaceRequest"
   , msType = C.pack "G"
   , msHeader = headerFIX41
   , msBody = mOrderCancelReplaceRequestBody
   , msTrailer = trailerFIX41 }
   where
   mOrderCancelReplaceRequestBody = 
      LT.insert (tnum tOrderID) tOrderID $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tOrigClOrdID) tOrigClOrdID $
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tAccount) tAccount $
      LT.insert (tnum tSettlmntTyp) tSettlmntTyp $
      LT.insert (tnum tFutSettDate) tFutSettDate $
      LT.insert (tnum tHandlInst) tHandlInst $
      LT.insert (tnum tExecInst) tExecInst $
      LT.insert (tnum tMinQty) tMinQty $
      LT.insert (tnum tMaxFloor) tMaxFloor $
      LT.insert (tnum tExDestination) tExDestination $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tOrderQty) tOrderQty $
      LT.insert (tnum tCashOrderQty) tCashOrderQty $
      LT.insert (tnum tOrdType) tOrdType $
      LT.insert (tnum tPrice) tPrice $
      LT.insert (tnum tStopPx) tStopPx $
      LT.insert (tnum tPegDifference) tPegDifference $
      LT.insert (tnum tCurrency) tCurrency $
      LT.insert (tnum tTimeInForce) tTimeInForce $
      LT.insert (tnum tExpireTime) tExpireTime $
      LT.insert (tnum tCommission) tCommission $
      LT.insert (tnum tCommType) tCommType $
      LT.insert (tnum tRule80A) tRule80A $
      LT.insert (tnum tForexReq) tForexReq $
      LT.insert (tnum tSettlCurrency) tSettlCurrency $
      LT.insert (tnum tText) tText $
      LT.insert (tnum tFutSettDate2) tFutSettDate2 $
      LT.insert (tnum tOrderQty2) tOrderQty2 $
      LT.insert (tnum tOpenClose) tOpenClose $
      LT.insert (tnum tCoveredOrUncovered) tCoveredOrUncovered $
      LT.insert (tnum tCustomerOrFirm) tCustomerOrFirm $
      LT.insert (tnum tMaxShow) tMaxShow $
      LT.insert (tnum tLocateReqd) tLocateReqd       LT.new


mOrderStatusRequest :: FIXMessageSpec
mOrderStatusRequest = FMSpec
   { msName = "OrderStatusRequest"
   , msType = C.pack "H"
   , msHeader = headerFIX41
   , msBody = mOrderStatusRequestBody
   , msTrailer = trailerFIX41 }
   where
   mOrderStatusRequestBody = 
      LT.insert (tnum tOrderID) tOrderID $
      LT.insert (tnum tClOrdID) tClOrdID $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tSide) tSide       LT.new


mAllocation :: FIXMessageSpec
mAllocation = FMSpec
   { msName = "Allocation"
   , msType = C.pack "J"
   , msHeader = headerFIX41
   , msBody = mAllocationBody
   , msTrailer = trailerFIX41 }
   where
   mAllocationBody = 
      LT.insert (tnum tAllocID) tAllocID $
      LT.insert (tnum tAllocTransType) tAllocTransType $
      LT.insert (tnum tRefAllocID) tRefAllocID $
      LT.insert (tnum tAllocLinkID) tAllocLinkID $
      LT.insert (tnum tAllocLinkType) tAllocLinkType $
      LT.insert (tnum tNoOrders) gNoOrders''' $
      LT.insert (tnum tNoExecs) gNoExecs''' $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tShares) tShares $
      LT.insert (tnum tLastMkt) tLastMkt $
      LT.insert (tnum tAvgPx) tAvgPx $
      LT.insert (tnum tCurrency) tCurrency $
      LT.insert (tnum tAvgPrxPrecision) tAvgPrxPrecision $
      LT.insert (tnum tTradeDate) tTradeDate $
      LT.insert (tnum tTransactTime) tTransactTime $
      LT.insert (tnum tSettlmntTyp) tSettlmntTyp $
      LT.insert (tnum tFutSettDate) tFutSettDate $
      LT.insert (tnum tNetMoney) tNetMoney $
      LT.insert (tnum tOpenClose) tOpenClose $
      LT.insert (tnum tText) tText $
      LT.insert (tnum tNumDaysInterest) tNumDaysInterest $
      LT.insert (tnum tAccruedInterestRate) tAccruedInterestRate $
      LT.insert (tnum tNoAllocs) gNoAllocs'''       LT.new
      where
         gNoAllocs''' = FIXTag
            { tName = "NoAllocs"
            , tnum = tnum tNoAllocs
            , tparser = gNoAllocsP''' }

         gNoAllocsP''' = groupP FGSpec
            { gsLength = tNoAllocs
            , gsSeperator = tAllocAccount
            , gsBody = gNoAllocsBody''' }
            where
            gNoAllocsBody''' = 
               LT.insert (tnum tAllocShares) tAllocShares $
               LT.insert (tnum tProcessCode) tProcessCode $
               LT.insert (tnum tBrokerOfCredit) tBrokerOfCredit $
               LT.insert (tnum tNotifyBrokerOfCredit) tNotifyBrokerOfCredit $
               LT.insert (tnum tAllocHandlInst) tAllocHandlInst $
               LT.insert (tnum tAllocText) tAllocText $
               LT.insert (tnum tExecBroker) tExecBroker $
               LT.insert (tnum tClientID) tClientID $
               LT.insert (tnum tCommission) tCommission $
               LT.insert (tnum tCommType) tCommType $
               LT.insert (tnum tAllocAvgPx) tAllocAvgPx $
               LT.insert (tnum tAllocNetMoney) tAllocNetMoney $
               LT.insert (tnum tSettlCurrAmt) tSettlCurrAmt $
               LT.insert (tnum tSettlCurrency) tSettlCurrency $
               LT.insert (tnum tSettlCurrFxRate) tSettlCurrFxRate $
               LT.insert (tnum tSettlCurrFxRateCalc) tSettlCurrFxRateCalc $
               LT.insert (tnum tAccruedInterestAmt) tAccruedInterestAmt $
               LT.insert (tnum tSettlInstMode) tSettlInstMode $
               LT.insert (tnum tNoMiscFees) gNoMiscFees''''''                LT.new
               where
                  gNoMiscFees'''''' = FIXTag
                     { tName = "NoMiscFees"
                     , tnum = tnum tNoMiscFees
                     , tparser = gNoMiscFeesP'''''' }

                  gNoMiscFeesP'''''' = groupP FGSpec
                     { gsLength = tNoMiscFees
                     , gsSeperator = tMiscFeeAmt
                     , gsBody = gNoMiscFeesBody'''''' }
                     where
                     gNoMiscFeesBody'''''' = 
                        LT.insert (tnum tMiscFeeCurr) tMiscFeeCurr $
                        LT.insert (tnum tMiscFeeType) tMiscFeeType                         LT.new


         gNoExecs''' = FIXTag
            { tName = "NoExecs"
            , tnum = tnum tNoExecs
            , tparser = gNoExecsP''' }

         gNoExecsP''' = groupP FGSpec
            { gsLength = tNoExecs
            , gsSeperator = tLastShares
            , gsBody = gNoExecsBody''' }
            where
            gNoExecsBody''' = 
               LT.insert (tnum tExecID) tExecID $
               LT.insert (tnum tLastPx) tLastPx $
               LT.insert (tnum tLastCapacity) tLastCapacity                LT.new

         gNoOrders''' = FIXTag
            { tName = "NoOrders"
            , tnum = tnum tNoOrders
            , tparser = gNoOrdersP''' }

         gNoOrdersP''' = groupP FGSpec
            { gsLength = tNoOrders
            , gsSeperator = tClOrdID
            , gsBody = gNoOrdersBody''' }
            where
            gNoOrdersBody''' = 
               LT.insert (tnum tOrderID) tOrderID $
               LT.insert (tnum tSecondaryOrderID) tSecondaryOrderID $
               LT.insert (tnum tListID) tListID $
               LT.insert (tnum tWaveNo) tWaveNo                LT.new



mListCancelRequest :: FIXMessageSpec
mListCancelRequest = FMSpec
   { msName = "ListCancelRequest"
   , msType = C.pack "K"
   , msHeader = headerFIX41
   , msBody = mListCancelRequestBody
   , msTrailer = trailerFIX41 }
   where
   mListCancelRequestBody = 
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tWaveNo) tWaveNo $
      LT.insert (tnum tText) tText       LT.new


mListExecute :: FIXMessageSpec
mListExecute = FMSpec
   { msName = "ListExecute"
   , msType = C.pack "L"
   , msHeader = headerFIX41
   , msBody = mListExecuteBody
   , msTrailer = trailerFIX41 }
   where
   mListExecuteBody = 
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tWaveNo) tWaveNo $
      LT.insert (tnum tText) tText       LT.new


mListStatusRequest :: FIXMessageSpec
mListStatusRequest = FMSpec
   { msName = "ListStatusRequest"
   , msType = C.pack "M"
   , msHeader = headerFIX41
   , msBody = mListStatusRequestBody
   , msTrailer = trailerFIX41 }
   where
   mListStatusRequestBody = 
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tWaveNo) tWaveNo $
      LT.insert (tnum tText) tText       LT.new


mListStatus :: FIXMessageSpec
mListStatus = FMSpec
   { msName = "ListStatus"
   , msType = C.pack "N"
   , msHeader = headerFIX41
   , msBody = mListStatusBody
   , msTrailer = trailerFIX41 }
   where
   mListStatusBody = 
      LT.insert (tnum tListID) tListID $
      LT.insert (tnum tWaveNo) tWaveNo $
      LT.insert (tnum tNoRpts) tNoRpts $
      LT.insert (tnum tRptSeq) tRptSeq $
      LT.insert (tnum tNoOrders) gNoOrders'''       LT.new
      where
         gNoOrders''' = FIXTag
            { tName = "NoOrders"
            , tnum = tnum tNoOrders
            , tparser = gNoOrdersP''' }

         gNoOrdersP''' = groupP FGSpec
            { gsLength = tNoOrders
            , gsSeperator = tClOrdID
            , gsBody = gNoOrdersBody''' }
            where
            gNoOrdersBody''' = 
               LT.insert (tnum tCumQty) tCumQty $
               LT.insert (tnum tLeavesQty) tLeavesQty $
               LT.insert (tnum tCxlQty) tCxlQty $
               LT.insert (tnum tAvgPx) tAvgPx                LT.new



mAllocationACK :: FIXMessageSpec
mAllocationACK = FMSpec
   { msName = "AllocationACK"
   , msType = C.pack "P"
   , msHeader = headerFIX41
   , msBody = mAllocationACKBody
   , msTrailer = trailerFIX41 }
   where
   mAllocationACKBody = 
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tAllocID) tAllocID $
      LT.insert (tnum tTradeDate) tTradeDate $
      LT.insert (tnum tTransactTime) tTransactTime $
      LT.insert (tnum tAllocStatus) tAllocStatus $
      LT.insert (tnum tAllocRejCode) tAllocRejCode $
      LT.insert (tnum tText) tText       LT.new


mDontKnowTrade :: FIXMessageSpec
mDontKnowTrade = FMSpec
   { msName = "DontKnowTrade"
   , msType = C.pack "Q"
   , msHeader = headerFIX41
   , msBody = mDontKnowTradeBody
   , msTrailer = trailerFIX41 }
   where
   mDontKnowTradeBody = 
      LT.insert (tnum tOrderID) tOrderID $
      LT.insert (tnum tExecID) tExecID $
      LT.insert (tnum tDKReason) tDKReason $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tOrderQty) tOrderQty $
      LT.insert (tnum tCashOrderQty) tCashOrderQty $
      LT.insert (tnum tLastShares) tLastShares $
      LT.insert (tnum tLastPx) tLastPx $
      LT.insert (tnum tText) tText       LT.new


mQuoteRequest :: FIXMessageSpec
mQuoteRequest = FMSpec
   { msName = "QuoteRequest"
   , msType = C.pack "R"
   , msHeader = headerFIX41
   , msBody = mQuoteRequestBody
   , msTrailer = trailerFIX41 }
   where
   mQuoteRequestBody = 
      LT.insert (tnum tQuoteReqID) tQuoteReqID $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tPrevClosePx) tPrevClosePx $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tOrderQty) tOrderQty $
      LT.insert (tnum tFutSettDate) tFutSettDate $
      LT.insert (tnum tOrdType) tOrdType $
      LT.insert (tnum tFutSettDate2) tFutSettDate2 $
      LT.insert (tnum tOrderQty2) tOrderQty2       LT.new


mQuote :: FIXMessageSpec
mQuote = FMSpec
   { msName = "Quote"
   , msType = C.pack "S"
   , msHeader = headerFIX41
   , msBody = mQuoteBody
   , msTrailer = trailerFIX41 }
   where
   mQuoteBody = 
      LT.insert (tnum tQuoteReqID) tQuoteReqID $
      LT.insert (tnum tQuoteID) tQuoteID $
      LT.insert (tnum tSymbol) tSymbol $
      LT.insert (tnum tSymbolSfx) tSymbolSfx $
      LT.insert (tnum tSecurityID) tSecurityID $
      LT.insert (tnum tIDSource) tIDSource $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tMaturityMonthYear) tMaturityMonthYear $
      LT.insert (tnum tMaturityDay) tMaturityDay $
      LT.insert (tnum tPutOrCall) tPutOrCall $
      LT.insert (tnum tStrikePrice) tStrikePrice $
      LT.insert (tnum tOptAttribute) tOptAttribute $
      LT.insert (tnum tSecurityExchange) tSecurityExchange $
      LT.insert (tnum tIssuer) tIssuer $
      LT.insert (tnum tSecurityDesc) tSecurityDesc $
      LT.insert (tnum tBidPx) tBidPx $
      LT.insert (tnum tOfferPx) tOfferPx $
      LT.insert (tnum tBidSize) tBidSize $
      LT.insert (tnum tOfferSize) tOfferSize $
      LT.insert (tnum tValidUntilTime) tValidUntilTime $
      LT.insert (tnum tBidSpotRate) tBidSpotRate $
      LT.insert (tnum tOfferSpotRate) tOfferSpotRate $
      LT.insert (tnum tBidForwardPoints) tBidForwardPoints $
      LT.insert (tnum tOfferForwardPoints) tOfferForwardPoints $
      LT.insert (tnum tTransactTime) tTransactTime $
      LT.insert (tnum tFutSettDate) tFutSettDate $
      LT.insert (tnum tOrdType) tOrdType $
      LT.insert (tnum tFutSettDate2) tFutSettDate2 $
      LT.insert (tnum tOrderQty2) tOrderQty2       LT.new


mSettlementInstructions :: FIXMessageSpec
mSettlementInstructions = FMSpec
   { msName = "SettlementInstructions"
   , msType = C.pack "T"
   , msHeader = headerFIX41
   , msBody = mSettlementInstructionsBody
   , msTrailer = trailerFIX41 }
   where
   mSettlementInstructionsBody = 
      LT.insert (tnum tSettlInstID) tSettlInstID $
      LT.insert (tnum tSettlInstTransType) tSettlInstTransType $
      LT.insert (tnum tSettlInstMode) tSettlInstMode $
      LT.insert (tnum tSettlInstSource) tSettlInstSource $
      LT.insert (tnum tAllocAccount) tAllocAccount $
      LT.insert (tnum tSettlLocation) tSettlLocation $
      LT.insert (tnum tTradeDate) tTradeDate $
      LT.insert (tnum tAllocID) tAllocID $
      LT.insert (tnum tLastMkt) tLastMkt $
      LT.insert (tnum tSide) tSide $
      LT.insert (tnum tSecurityType) tSecurityType $
      LT.insert (tnum tEffectiveTime) tEffectiveTime $
      LT.insert (tnum tTransactTime) tTransactTime $
      LT.insert (tnum tClientID) tClientID $
      LT.insert (tnum tExecBroker) tExecBroker $
      LT.insert (tnum tStandInstDbType) tStandInstDbType $
      LT.insert (tnum tStandInstDbName) tStandInstDbName $
      LT.insert (tnum tStandInstDbID) tStandInstDbID $
      LT.insert (tnum tSettlDeliveryType) tSettlDeliveryType $
      LT.insert (tnum tSettlDepositoryCode) tSettlDepositoryCode $
      LT.insert (tnum tSettlBrkrCode) tSettlBrkrCode $
      LT.insert (tnum tSettlInstCode) tSettlInstCode $
      LT.insert (tnum tSecuritySettlAgentName) tSecuritySettlAgentName $
      LT.insert (tnum tSecuritySettlAgentCode) tSecuritySettlAgentCode $
      LT.insert (tnum tSecuritySettlAgentAcctNum) tSecuritySettlAgentAcctNum $
      LT.insert (tnum tSecuritySettlAgentAcctName) tSecuritySettlAgentAcctName $
      LT.insert (tnum tSecuritySettlAgentContactName) tSecuritySettlAgentContactName $
      LT.insert (tnum tSecuritySettlAgentContactPhone) tSecuritySettlAgentContactPhone $
      LT.insert (tnum tCashSettlAgentName) tCashSettlAgentName $
      LT.insert (tnum tCashSettlAgentCode) tCashSettlAgentCode $
      LT.insert (tnum tCashSettlAgentAcctNum) tCashSettlAgentAcctNum $
      LT.insert (tnum tCashSettlAgentAcctName) tCashSettlAgentAcctName $
      LT.insert (tnum tCashSettlAgentContactName) tCashSettlAgentContactName $
      LT.insert (tnum tCashSettlAgentContactPhone) tCashSettlAgentContactPhone       LT.new


fix41 :: FIXSpec
fix41 = FSpec
   { fsHeader = headerFIX41
   , fsTrailer = trailerFIX41
   , fsMessages = fix41Messages }
   where
      fix41Messages =
          LT.insert (msType mHeartbeat) mHeartbeat $
          LT.insert (msType mTestRequest) mTestRequest $
          LT.insert (msType mResendRequest) mResendRequest $
          LT.insert (msType mReject) mReject $
          LT.insert (msType mSequenceReset) mSequenceReset $
          LT.insert (msType mLogout) mLogout $
          LT.insert (msType mIndicationofInterest) mIndicationofInterest $
          LT.insert (msType mAdvertisement) mAdvertisement $
          LT.insert (msType mExecutionReport) mExecutionReport $
          LT.insert (msType mOrderCancelReject) mOrderCancelReject $
          LT.insert (msType mLogon) mLogon $
          LT.insert (msType mNews) mNews $
          LT.insert (msType mEmail) mEmail $
          LT.insert (msType mNewOrderSingle) mNewOrderSingle $
          LT.insert (msType mNewOrderList) mNewOrderList $
          LT.insert (msType mOrderCancelRequest) mOrderCancelRequest $
          LT.insert (msType mOrderCancelReplaceRequest) mOrderCancelReplaceRequest $
          LT.insert (msType mOrderStatusRequest) mOrderStatusRequest $
          LT.insert (msType mAllocation) mAllocation $
          LT.insert (msType mListCancelRequest) mListCancelRequest $
          LT.insert (msType mListExecute) mListExecute $
          LT.insert (msType mListStatusRequest) mListStatusRequest $
          LT.insert (msType mListStatus) mListStatus $
          LT.insert (msType mAllocationACK) mAllocationACK $
          LT.insert (msType mDontKnowTrade) mDontKnowTrade $
          LT.insert (msType mQuoteRequest) mQuoteRequest $
          LT.insert (msType mQuote) mQuote $
          LT.insert (msType mSettlementInstructions) mSettlementInstructions           LT.new 
