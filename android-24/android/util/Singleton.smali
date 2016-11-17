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
.field private mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    .local p0, "this":Landroid/util/Singleton;, "Landroid/util/Singleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 32
    .local p0, "this":Landroid/util/Singleton;, "Landroid/util/Singleton<TT;>;"
    monitor-enter p0

    #@1
    .line 33
    :try_start_0
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 34
    invoke-virtual {p0}, Landroid/util/Singleton;->create()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    #@b
    .line 36
    :cond_0
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    .line 32
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
