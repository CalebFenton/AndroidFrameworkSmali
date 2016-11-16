.class final Landroid/icu/impl/CacheValue$SoftValue;
.super Landroid/icu/impl/CacheValue;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SoftValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/CacheValue",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private ref:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "this":Landroid/icu/impl/CacheValue$SoftValue;, "Landroid/icu/impl/CacheValue<TV;>.SoftValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    #@3
    new-instance v0, Ljava/lang/ref/SoftReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;

    #@a
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p0, "this":Landroid/icu/impl/CacheValue$SoftValue;, "Landroid/icu/impl/CacheValue<TV;>.SoftValue<TV;>;"
    iget-object v0, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/CacheValue$SoftValue;, "Landroid/icu/impl/CacheValue<TV;>.SoftValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;

    #@3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 140
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    #@9
    .line 141
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@b
    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v1, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 142
    return-object p1

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 146
    return-object v0

    #@14
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method
