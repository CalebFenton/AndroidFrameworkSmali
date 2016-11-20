.class Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;
.super Ljava/util/concurrent/Executors$DelegatedExecutorService;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizableDelegatedExecutorService"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    #@0
    .prologue
    .line 632
    invoke-direct {p0, p1}, Ljava/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    #@3
    .line 631
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 635
    invoke-super {p0}, Ljava/util/concurrent/Executors$DelegatedExecutorService;->shutdown()V

    #@3
    .line 634
    return-void
.end method
