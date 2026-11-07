.class public Landroid/net/wifi/SynchronousExecutor;
.super Ljava/lang/Object;
.source "SynchronousExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 27
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 28
    return-void
.end method
