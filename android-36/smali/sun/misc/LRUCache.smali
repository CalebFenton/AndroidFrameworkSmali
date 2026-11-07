.class public abstract Lsun/misc/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o oa:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private final greylist-max-o size:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 38
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 39
    iput p1, p0, Lsun/misc/LRUCache;->size:I

    .line 40
    return-void
.end method

.method public static blacklist moveToFront([Ljava/lang/Object;I)V
    .registers 5
    .param p0, "oa"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    .line 47
    aget-object v0, p0, p1

    .line 48
    .local v0, "ob":Ljava/lang/Object;
    move v1, p1

    .local v1, "j":I
    :goto_3
    if-lez v1, :cond_e

    .line 49
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 50
    .end local v1    # "j":I
    :cond_e
    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation
.end method

.method public blacklist forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    .local p1, "name":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 56
    iget v0, p0, Lsun/misc/LRUCache;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .local v0, "temp":[Ljava/lang/Object;, "[TV;"
    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 58
    .end local v0    # "temp":[Ljava/lang/Object;, "[TV;"
    goto :goto_29

    .line 59
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 60
    iget-object v1, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 61
    .local v1, "ob":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_18

    .line 62
    goto :goto_26

    .line 63
    :cond_18
    invoke-virtual {p0, v1, p1}, Lsun/misc/LRUCache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 64
    if-lez v0, :cond_25

    .line 65
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    invoke-static {v2, v0}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 66
    :cond_25
    return-object v1

    .line 59
    .end local v1    # "ob":Ljava/lang/Object;, "TV;"
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 72
    .end local v0    # "i":I
    :cond_29
    :goto_29
    invoke-virtual {p0, p1}, Lsun/misc/LRUCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "ob":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 74
    iget-object v1, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 75
    return-object v0
.end method

.method protected abstract blacklist hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TN;)Z"
        }
    .end annotation
.end method
