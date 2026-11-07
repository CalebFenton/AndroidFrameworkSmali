.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
.super Landroid/util/Pools$SynchronizedPool;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pools$SynchronizedPool<",
        "Lcom/android/internal/util/function/pooled/PooledLambdaImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 86
    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Landroid/util/Pools$SynchronizedPool;-><init>(ILjava/lang/Object;)V

    .line 87
    return-void
.end method
