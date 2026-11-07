.class public Lcom/google/android/mms/pdu/ReadRecInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "ReadRecInd.java"


# direct methods
.method public constructor greylist <init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 7
    .param p1, "from"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "messageId"    # [B
    .param p3, "mmsVersion"    # I
    .param p4, "readStatus"    # I
    .param p5, "to"    # [Lcom/google/android/mms/pdu/EncodedStringValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 43
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/ReadRecInd;->setMessageType(I)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/ReadRecInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/ReadRecInd;->setMessageId([B)V

    .line 46
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/ReadRecInd;->setMmsVersion(I)V

    .line 47
    invoke-virtual {p0, p5}, Lcom/google/android/mms/pdu/ReadRecInd;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 48
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/ReadRecInd;->setReadStatus(I)V

    .line 49
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .registers 2
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist getDate()J
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getMessageId()[B
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReadStatus()I
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public blacklist getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist setDate(J)V
    .registers 5
    .param p1, "value"    # J

    .line 77
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 78
    return-void
.end method

.method public blacklist setMessageId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 97
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 98
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

    .line 135
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 136
    return-void
.end method

.method public blacklist setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 116
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 117
    return-void
.end method
