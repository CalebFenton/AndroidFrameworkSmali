.class final Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultForkJoinWorkerThreadFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    #@0
    .prologue
    .line 533
    new-instance v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;)V

    #@5
    return-object v0
.end method
