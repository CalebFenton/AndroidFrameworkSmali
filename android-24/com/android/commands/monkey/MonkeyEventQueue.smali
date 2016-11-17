.class public Lcom/android/commands/monkey/MonkeyEventQueue;
.super Ljava/util/LinkedList;
.source "MonkeyEventQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/android/commands/monkey/MonkeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mRandom:Ljava/util/Random;

.field private mRandomizeThrottle:Z

.field private mThrottle:J


# direct methods
.method public constructor <init>(Ljava/util/Random;JZ)V
    .locals 0
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "throttle"    # J
    .param p4, "randomizeThrottle"    # Z

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandom:Ljava/util/Random;

    #@5
    .line 35
    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    #@7
    .line 36
    iput-boolean p4, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandomizeThrottle:Z

    #@9
    .line 32
    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyEvent;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 41
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@5
    .line 42
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyEvent;->isThrottlable()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 43
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    #@d
    .line 44
    .local v0, "throttle":J
    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandomizeThrottle:Z

    #@f
    if-eqz v2, :cond_1

    #@11
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    #@13
    cmp-long v2, v2, v4

    #@15
    if-lez v2, :cond_1

    #@17
    .line 45
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandom:Ljava/util/Random;

    #@19
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    #@1c
    move-result-wide v0

    #@1d
    .line 46
    cmp-long v2, v0, v4

    #@1f
    if-gez v2, :cond_0

    #@21
    .line 47
    neg-long v0, v0

    #@22
    .line 49
    :cond_0
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    #@24
    rem-long/2addr v0, v2

    #@25
    .line 50
    const-wide/16 v2, 0x1

    #@27
    add-long/2addr v0, v2

    #@28
    .line 52
    :cond_1
    new-instance v2, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    #@2a
    invoke-direct {v2, v0, v1}, Lcom/android/commands/monkey/MonkeyThrottleEvent;-><init>(J)V

    #@2d
    invoke-super {p0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@30
    .line 40
    .end local v0    # "throttle":J
    :cond_2
    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    check-cast p1, Lcom/android/commands/monkey/MonkeyEvent;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@5
    return-void
.end method
