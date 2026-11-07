.class public Lcom/google/android/mms/pdu/DeliveryInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "DeliveryInd.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 39
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/DeliveryInd;->setMessageType(I)V

    .line 40
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .registers 2
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 50
    return-void
.end method


# virtual methods
.method public greylist-max-r getDate()J
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getMessageId()[B
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getStatus()I
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setDate(J)V
    .registers 5
    .param p1, "value"    # J

    .line 68
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 69
    return-void
.end method

.method public blacklist setMessageId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 88
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 89
    return-void
.end method

.method public blacklist setStatus(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 109
    return-void
.end method

.method public blacklist setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 128
    iget-object v0, p0, Lcom/google/android/mms/pdu/DeliveryInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 129
    return-void
.end method
