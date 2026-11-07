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
.field private greylist isThreadActive:Z

.field private greylist thread:Ljava/lang/Thread;

.field private greylist threadAuditor:Lgov/nist/core/ThreadAuditor;


# direct methods
.method public constructor greylist <init>(Lgov/nist/core/ThreadAuditor;Lgov/nist/core/ThreadAuditor;)V
    .registers 4
    .param p1, "this$0"    # Lgov/nist/core/ThreadAuditor;
    .param p2, "aThreadAuditor"    # Lgov/nist/core/ThreadAuditor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    .line 45
    iput-object p2, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    .line 46
    return-void
.end method


# virtual methods
.method public greylist getPingIntervalInMillisecs()J
    .registers 3

    .line 70
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getThread()Ljava/lang/Thread;
    .registers 2

    .line 60
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public greylist isThreadActive()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    return v0
.end method

.method public greylist ping()V
    .registers 2

    .line 65
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    invoke-virtual {v0, p0}, Lgov/nist/core/ThreadAuditor;->ping(Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    .line 66
    return-void
.end method

.method protected greylist setThreadActive(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 55
    iput-boolean p1, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    .line 56
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    const-string v1, "Thread Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    const-string v1, ", Alive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 82
    .local v0, "toString":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
