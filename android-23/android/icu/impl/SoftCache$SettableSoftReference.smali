.class final Landroid/icu/impl/SoftCache$SettableSoftReference;
.super Ljava/lang/Object;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettableSoftReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private ref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/impl/SoftCache$SettableSoftReference;)Ljava/lang/ref/SoftReference;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/SoftCache$SettableSoftReference;->ref:Ljava/lang/ref/SoftReference;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/impl/SoftCache$SettableSoftReference;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/impl/SoftCache$SettableSoftReference;->ref:Ljava/lang/ref/SoftReference;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/icu/impl/SoftCache$SettableSoftReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/SoftCache$SettableSoftReference;->setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p0, "this":Landroid/icu/impl/SoftCache$SettableSoftReference;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>.SettableSoftReference<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    new-instance v0, Ljava/lang/ref/SoftReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/icu/impl/SoftCache$SettableSoftReference;->ref:Ljava/lang/ref/SoftReference;

    #@a
    .line 82
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/icu/impl/SoftCache$SettableSoftReference;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/SoftCache$SettableSoftReference;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>.SettableSoftReference<TV;>;"
    invoke-direct {p0, p1}, Landroid/icu/impl/SoftCache$SettableSoftReference;-><init>(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private declared-synchronized setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/SoftCache$SettableSoftReference;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>.SettableSoftReference<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/SoftCache$SettableSoftReference;->ref:Ljava/lang/ref/SoftReference;

    #@3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 94
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    #@9
    .line 95
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@b
    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v1, p0, Landroid/icu/impl/SoftCache$SettableSoftReference;->ref:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 96
    return-object p1

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 98
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
