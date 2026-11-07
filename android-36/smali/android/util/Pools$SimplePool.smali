.class public Landroid/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist mPool:[Ljava/lang/Object;

.field private greylist-max-o mPoolSize:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 4
    .param p1, "maxPoolSize"    # I

    .line 96
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-lez p1, :cond_a

    .line 100
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 101
    return-void

    .line 98
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isInPool(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 132
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v1, :cond_10

    .line 133
    iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 134
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist acquire()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 107
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 108
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, -0x1

    .line 109
    .local v0, "lastPooledIndex":I
    iget-object v2, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 110
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 111
    iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 112
    return-object v2

    .line 114
    .end local v0    # "lastPooledIndex":I
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    :cond_18
    return-object v1
.end method

.method public greylist release(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 120
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 123
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 124
    iget-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    aput-object p1, v0, v1

    .line 125
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 126
    return v1

    .line 128
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
