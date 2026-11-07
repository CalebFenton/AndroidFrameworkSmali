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
.method public constructor greylist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist run(Ljava/lang/Runnable;I)Ljava/lang/Thread;
    .registers 3

    .line 69
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public greylist waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    return-void
.end method
