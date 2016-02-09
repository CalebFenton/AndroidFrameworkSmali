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
.field final mAddress:Ljava/lang/String;

.field final mMessageCount:I

.field final mReferenceNumber:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    #@9
    .line 197
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    #@f
    .line 198
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    #@15
    .line 195
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    instance-of v2, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 214
    check-cast v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    #@8
    .line 215
    .local v0, "other":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    #@a
    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 216
    iget v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    #@14
    iget v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    #@16
    if-ne v2, v3, :cond_0

    #@18
    .line 217
    iget v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    #@1a
    iget v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 215
    :cond_0
    return v1

    #@20
    .line 219
    .end local v0    # "other":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    :cond_1
    return v1
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 202
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 203
    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 202
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 208
    iget v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x1f

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    return v0
.end method
