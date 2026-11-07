.class public Lcom/google/android/mms/pdu/NotificationInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "NotificationInd.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageType(I)V

    .line 41
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .registers 2
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 51
    return-void
.end method


# virtual methods
.method public greylist getContentClass()I
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getContentLocation()[B
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getDeliveryReport()I
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getExpiry()J
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageClass()[B
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageSize()J
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTransactionId()[B
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist setContentClass(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0xba

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 73
    return-void
.end method

.method public greylist setContentLocation([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 96
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 97
    return-void
.end method

.method public greylist setDeliveryReport(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 257
    return-void
.end method

.method public greylist setExpiry(J)V
    .registers 5
    .param p1, "value"    # J

    .line 120
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 121
    return-void
.end method

.method public greylist setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 144
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 145
    return-void
.end method

.method public greylist setMessageClass([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 168
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 169
    return-void
.end method

.method public greylist setMessageSize(J)V
    .registers 5
    .param p1, "value"    # J

    .line 190
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 191
    return-void
.end method

.method public greylist setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 212
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 213
    return-void
.end method

.method public greylist setTransactionId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 234
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 235
    return-void
.end method
