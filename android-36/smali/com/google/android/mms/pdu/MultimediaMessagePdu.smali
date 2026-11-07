.class public Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private blacklist mMessageBody:Lcom/google/android/mms/pdu/PduBody;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 40
    return-void
.end method

.method constructor blacklist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .registers 2
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .registers 3
    .param p1, "header"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 51
    iput-object p2, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    .line 52
    return-void
.end method


# virtual methods
.method public greylist-max-r addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 122
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 123
    return-void
.end method

.method public greylist getBody()Lcom/google/android/mms/pdu/PduBody;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public greylist getDate()J
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getPriority()I
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist setBody(Lcom/google/android/mms/pdu/PduBody;)V
    .registers 2
    .param p1, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .line 80
    iput-object p1, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    .line 81
    return-void
.end method

.method public greylist-max-r setDate(J)V
    .registers 5
    .param p1, "value"    # J

    .line 163
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 164
    return-void
.end method

.method public greylist-max-r setPriority(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 144
    return-void
.end method

.method public greylist setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 101
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 102
    return-void
.end method
