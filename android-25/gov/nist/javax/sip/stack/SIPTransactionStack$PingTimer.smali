.class Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPTransactionStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "a_oThreadHandle"    # Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@0
    .prologue
    .line 371
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 372
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@7
    .line 371
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 4

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 379
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 382
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@18
    .line 386
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@1a
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    #@1d
    .line 389
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@22
    move-result-object v0

    #@23
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;

    #@25
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@27
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@29
    invoke-direct {v1, v2, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    #@2c
    .line 390
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@2e
    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    #@31
    move-result-wide v2

    #@32
    .line 389
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@35
    .line 375
    :cond_1
    return-void
.end method
