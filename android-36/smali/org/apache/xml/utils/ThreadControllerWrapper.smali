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
.field private static greylist m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    invoke-direct {v0}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;-><init>()V

    sput-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;
    .registers 3

    .line 35
    sget-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    invoke-virtual {v0, p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;->run(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static greylist waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 41
    sget-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    invoke-virtual {v0, p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method
