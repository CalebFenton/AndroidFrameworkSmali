.class public Lgov/nist/core/ThreadAuditor$ThreadHandle;
.super Ljava/lang/Object;
.source "ThreadAuditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/core/ThreadAuditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadHandle"
.end annotation


# instance fields
.field private isThreadActive:Z

.field final synthetic this$0:Lgov/nist/core/ThreadAuditor;

.field private thread:Ljava/lang/Thread;

.field private threadAuditor:Lgov/nist/core/ThreadAuditor;


# direct methods
.method public constructor <init>(Lgov/nist/core/ThreadAuditor;Lgov/nist/core/ThreadAuditor;)V
    .locals 1
    .param p1, "this$0"    # Lgov/nist/core/ThreadAuditor;
    .param p2, "aThreadAuditor"    # Lgov/nist/core/ThreadAuditor;

    #@0
    .prologue
    .line 42
    iput-object p1, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->this$0:Lgov/nist/core/ThreadAuditor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 43
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    #@8
    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    #@e
    .line 45
    iput-object p2, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    #@10
    .line 42
    return-void
.end method


# virtual methods
.method public getPingIntervalInMillisecs()J
    .locals 2

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method public isThreadActive()Z
    .locals 1

    #@0
    .prologue
    .line 50
    iget-boolean v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    #@2
    return v0
.end method

.method public ping()V
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    #@2
    invoke-virtual {v0, p0}, Lgov/nist/core/ThreadAuditor;->ping(Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    #@5
    .line 64
    return-void
.end method

.method protected setThreadActive(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 55
    iput-boolean p1, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    #@2
    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 80
    const-string/jumbo v2, "Thread Name: "

    #@8
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    .line 80
    iget-object v2, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    #@e
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    move-result-object v1

    #@16
    .line 81
    const-string/jumbo v2, ", Alive: "

    #@19
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v1

    #@1d
    .line 81
    iget-object v2, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    #@1f
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    #@22
    move-result v2

    #@23
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@26
    move-result-object v0

    #@27
    .line 82
    .local v0, "toString":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method
