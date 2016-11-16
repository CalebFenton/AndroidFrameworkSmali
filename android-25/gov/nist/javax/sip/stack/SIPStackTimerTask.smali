.class public abstract Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.super Ljava/util/TimerTask;
.source "SIPStackTimerTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    #@0
    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;->runTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 27
    :goto_0
    return-void

    #@4
    .line 30
    :catch_0
    move-exception v0

    #@5
    .line 31
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    const-string/jumbo v2, "SIP stack timer task failed due to exception:"

    #@a
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d
    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@10
    goto :goto_0
.end method

.method protected abstract runTask()V
.end method
