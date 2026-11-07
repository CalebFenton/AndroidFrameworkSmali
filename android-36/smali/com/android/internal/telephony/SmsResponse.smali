.class public Lcom/android/internal/telephony/SmsResponse;
.super Ljava/lang/Object;
.source "SmsResponse.java"


# static fields
.field public static final blacklist NO_ERROR_CODE:I = -0x1


# instance fields
.field greylist-max-r mAckPdu:Ljava/lang/String;

.field public greylist-max-r mErrorCode:I

.field public blacklist mMessageId:J

.field greylist-max-r mMessageRef:I


# direct methods
.method public constructor greylist <init>(ILjava/lang/String;I)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;IJ)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 54
    iput-wide p4, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageId:J

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mMessageRef = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAckPdu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageId:J

    .line 62
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
