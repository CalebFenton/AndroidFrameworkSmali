.class public Lcom/google/android/mms/pdu/ReadOrigInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "ReadOrigInd.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 35
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/ReadOrigInd;->setMessageType(I)V

    .line 36
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .registers 2
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist getDate()J
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageId()[B
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getReadStatus()I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public blacklist getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setDate(J)V
    .registers 5
    .param p1, "value"    # J

    .line 63
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 64
    return-void
.end method

.method public blacklist setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 84
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 85
    return-void
.end method

.method public blacklist setMessageId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 104
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 105
    return-void
.end method

.method public blacklist setReadStatus(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 125
    return-void
.end method

.method public blacklist setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 143
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 144
    return-void
.end method
