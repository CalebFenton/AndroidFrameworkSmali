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
.field private oa:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 38
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@6
    .line 39
    iput p1, p0, Lsun/misc/LRUCache;->size:I

    #@8
    .line 38
    return-void
.end method

.method public static moveToFront([Ljava/lang/Object;I)V
    .locals 4
    .param p0, "oa"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 47
    aget-object v1, p0, p1

    #@3
    .line 48
    .local v1, "ob":Ljava/lang/Object;
    move v0, p1

    #@4
    .local v0, "j":I
    :goto_0
    if-lez v0, :cond_0

    #@6
    .line 49
    add-int/lit8 v2, v0, -0x1

    #@8
    aget-object v2, p0, v2

    #@a
    aput-object v2, p0, v0

    #@c
    .line 48
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0

    #@f
    .line 50
    :cond_0
    aput-object v1, p0, v3

    #@11
    .line 46
    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation
.end method

.method public forName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    .local p1, "name":Ljava/lang/Object;, "TN;"
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 55
    iget v2, p0, Lsun/misc/LRUCache;->size:I

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    iput-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@a
    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lsun/misc/LRUCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 71
    .local v1, "ob":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@10
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@12
    array-length v3, v3

    #@13
    add-int/lit8 v3, v3, -0x1

    #@15
    aput-object v1, v2, v3

    #@17
    .line 72
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@19
    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@1b
    array-length v3, v3

    #@1c
    add-int/lit8 v3, v3, -0x1

    #@1e
    invoke-static {v2, v3}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    #@21
    .line 73
    return-object v1

    #@22
    .line 57
    .end local v1    # "ob":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@25
    array-length v2, v2

    #@26
    if-ge v0, v2, :cond_0

    #@28
    .line 58
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@2a
    aget-object v1, v2, v0

    #@2c
    .line 59
    .restart local v1    # "ob":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_3

    #@2e
    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 61
    :cond_3
    invoke-virtual {p0, v1, p1}, Lsun/misc/LRUCache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_2

    #@37
    .line 62
    if-lez v0, :cond_4

    #@39
    .line 63
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    #@3b
    invoke-static {v2, v0}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    #@3e
    .line 64
    :cond_4
    return-object v1
.end method

.method protected abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TN;)Z"
        }
    .end annotation
.end method
