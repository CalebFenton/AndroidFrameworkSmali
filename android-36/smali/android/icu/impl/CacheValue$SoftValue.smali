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
        "Landroid/icu/impl/CacheValue<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile greylist-max-o ref:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Landroid/icu/impl/CacheValue$SoftValue;, "Landroid/icu/impl/CacheValue$SoftValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public blacklist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 139
    .local p0, "this":Landroid/icu/impl/CacheValue$SoftValue;, "Landroid/icu/impl/CacheValue$SoftValue<TV;>;"
    iget-object v0, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .local p0, "this":Landroid/icu/impl/CacheValue$SoftValue;, "Landroid/icu/impl/CacheValue$SoftValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_12

    .line 144
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/icu/impl/CacheValue$SoftValue;->ref:Ljava/lang/ref/Reference;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    .line 145
    monitor-exit p0

    return-object p1

    .line 149
    .end local p0    # "this":Landroid/icu/impl/CacheValue$SoftValue;, "Landroid/icu/impl/CacheValue$SoftValue<TV;>;"
    :cond_12
    monitor-exit p0

    return-object v0

    .line 141
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
