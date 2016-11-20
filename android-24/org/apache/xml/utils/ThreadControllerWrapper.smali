.class public Lorg/apache/xml/utils/ThreadControllerWrapper;
.super Ljava/lang/Object;
.source "ThreadControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;
    }
.end annotation


# static fields
.field private static m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    new-instance v0, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    #@2
    invoke-direct {v0}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;-><init>()V

    #@5
    sput-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 35
    sget-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    #@2
    invoke-virtual {v0, p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;->run(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "worker"    # Ljava/lang/Thread;
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    sget-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    #@2
    invoke-virtual {v0, p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    #@5
    .line 39
    return-void
.end method
