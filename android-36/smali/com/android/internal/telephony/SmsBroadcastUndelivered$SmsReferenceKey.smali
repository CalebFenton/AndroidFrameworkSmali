.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsReferenceKey"
.end annotation


# instance fields
.field final blacklist mAddress:Ljava/lang/String;

.field final blacklist mFormat:Ljava/lang/String;

.field final blacklist mIs3gpp2:Z

.field final blacklist mMessageCount:I

.field final blacklist mQuery:Ljava/lang/String;

.field final blacklist mReferenceNumber:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .registers 3

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 355
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mQuery:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mIs3gpp2:Z

    .line 357
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 376
    instance-of v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 377
    check-cast p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 378
    iget-object v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    iget v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    if-ne v0, v2, :cond_1f

    iget p1, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    iget p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    if-ne p1, p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method blacklist getDeleteWhere()Ljava/lang/String;
    .registers 1

    .line 366
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getDeleteWhereArgs()[Ljava/lang/String;
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 362
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 371
    iget v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
