.class public Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;
.super Ljava/lang/Object;
.source "ThreadControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/utils/ThreadControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;I)Ljava/lang/Thread;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    #@0
    .prologue
    .line 69
    new-instance v0, Ljava/lang/Thread;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@5
    .line 71
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@8
    .line 75
    return-object v0
.end method

.method public waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "worker"    # Ljava/lang/Thread;
    .param p2, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    #@3
    .line 88
    return-void
.end method
