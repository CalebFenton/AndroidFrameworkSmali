.class public Lcom/android/commands/monkey/MonkeyThrottleEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyThrottleEvent.java"


# instance fields
.field private mThrottle:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "throttle"    # J

    #@0
    .prologue
    .line 32
    const/4 v0, 0x6

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 33
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    #@6
    .line 31
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 7
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 39
    if-le p3, v6, :cond_0

    #@3
    .line 40
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Sleeping for "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    #@13
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " milliseconds"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@25
    .line 43
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    #@27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 49
    return v6

    #@2b
    .line 44
    :catch_0
    move-exception v0

    #@2c
    .line 45
    .local v0, "e1":Ljava/lang/InterruptedException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2e
    const-string/jumbo v2, "** Monkey interrupted in sleep."

    #@31
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 46
    const/4 v1, 0x0

    #@35
    return v1
.end method
