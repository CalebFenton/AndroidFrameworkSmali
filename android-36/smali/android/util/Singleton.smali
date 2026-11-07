.class public abstract Landroid/util/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    .local p0, "this":Landroid/util/Singleton;, "Landroid/util/Singleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final greylist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroid/util/Singleton;, "Landroid/util/Singleton<TT;>;"
    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 44
    invoke-virtual {p0}, Landroid/util/Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    .line 46
    :cond_b
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 47
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
