.class public abstract Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.super Ljava/util/TimerTask;
.source "SIPStackTimerTask.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;->runTask()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 33
    goto :goto_f

    .line 30
    :catchall_4
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SIP stack timer task failed due to exception:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f
    return-void
.end method

.method protected abstract greylist runTask()V
.end method
