.class public Lcom/google/android/mms/pdu/DeliveryInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "DeliveryInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    #@3
    .line 36
    const/16 v0, 0x86

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/DeliveryInd;->setMessageType(I)V

    #@8
    .line 34
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 44
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getStatus()I
    .locals 2

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x95

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@7
    .line 62
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 81
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x95

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 100
    return-void
.end method

.method public setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 119
    return-void
.end method
