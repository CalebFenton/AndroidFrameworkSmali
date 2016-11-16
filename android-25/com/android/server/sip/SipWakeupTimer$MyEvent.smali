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
.field mCallback:Ljava/lang/Runnable;

.field mLastTriggerTime:J

.field mMaxPeriod:I

.field mPeriod:I

.field mTriggerTime:J


# direct methods
.method constructor <init>(ILjava/lang/Runnable;J)V
    .locals 1
    .param p1, "period"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 295
    iput p1, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@5
    iput p1, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@7
    .line 296
    iput-object p2, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    #@9
    .line 297
    iput-wide p3, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    #@b
    .line 294
    return-void
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 310
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v2, "$"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 311
    .local v0, "index":I
    if-lez v0, :cond_0

    #@d
    add-int/lit8 v2, v0, 0x1

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 312
    :cond_0
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 302
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 303
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "@"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ":"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@21
    div-int/lit16 v2, v2, 0x3e8

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, ":"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@30
    div-int/lit16 v2, v2, 0x3e8

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, ":"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 305
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    #@3f
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    return-object v1
.end method
