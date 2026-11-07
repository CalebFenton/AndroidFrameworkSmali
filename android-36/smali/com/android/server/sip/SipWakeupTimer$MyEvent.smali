.class Lcom/android/server/sip/SipWakeupTimer$MyEvent;
.super Ljava/lang/Object;
.source "SipWakeupTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipWakeupTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEvent"
.end annotation


# instance fields
.field blacklist mCallback:Ljava/lang/Runnable;

.field blacklist mLastTriggerTime:J

.field blacklist mMaxPeriod:I

.field blacklist mPeriod:I

.field blacklist mTriggerTime:J


# direct methods
.method constructor blacklist <init>(ILjava/lang/Runnable;J)V
    .registers 5
    .param p1, "period"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "now"    # J

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    iput p1, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 296
    iput-object p2, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    .line 297
    iput-wide p3, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    .line 298
    return-void
.end method

.method private blacklist toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "s":Ljava/lang/String;
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 311
    .local v1, "index":I
    if-lez v1, :cond_12

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_12
    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 302
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "s":Ljava/lang/String;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    .line 305
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    return-object v1
.end method
