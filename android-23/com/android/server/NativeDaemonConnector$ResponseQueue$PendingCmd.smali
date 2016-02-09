.class Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingCmd"
.end annotation


# instance fields
.field public availableResponseCount:I

.field public final cmdNum:I

.field public final logCmd:Ljava/lang/String;

.field public responses:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/server/NativeDaemonEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "cmdNum"    # I
    .param p2, "logCmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 545
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    #@5
    const/16 v1, 0xa

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    #@a
    .line 544
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    #@c
    .line 565
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    #@e
    .line 566
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    #@10
    .line 564
    return-void
.end method
