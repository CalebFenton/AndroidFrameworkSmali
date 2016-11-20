.class abstract Lsun/nio/cs/ThreadLocalCoders$Cache;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/lang/ThreadLocal;

.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    #@5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@8
    iput-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    #@a
    .line 48
    iput p1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    #@c
    .line 47
    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .locals 4
    .param p1, "oa"    # [Ljava/lang/Object;
    .param p2, "i"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 54
    aget-object v1, p1, p2

    #@3
    .line 55
    .local v1, "ob":Ljava/lang/Object;
    move v0, p2

    #@4
    .local v0, "j":I
    :goto_0
    if-lez v0, :cond_0

    #@6
    .line 56
    add-int/lit8 v2, v0, -0x1

    #@8
    aget-object v2, p1, v2

    #@a
    aput-object v2, p1, v0

    #@c
    .line 55
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0

    #@f
    .line 57
    :cond_0
    aput-object v1, p1, v3

    #@11
    .line 53
    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 63
    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, [Ljava/lang/Object;

    #@8
    .line 64
    .local v1, "oa":[Ljava/lang/Object;
    if-nez v1, :cond_1

    #@a
    .line 65
    iget v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    #@c
    new-array v1, v3, [Ljava/lang/Object;

    #@e
    .line 66
    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    #@10
    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@13
    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    .line 82
    .local v2, "ob":Ljava/lang/Object;
    array-length v3, v1

    #@18
    add-int/lit8 v3, v3, -0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 83
    array-length v3, v1

    #@1d
    add-int/lit8 v3, v3, -0x1

    #@1f
    invoke-direct {p0, v1, v3}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    #@22
    .line 84
    return-object v2

    #@23
    .line 68
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@25
    if-ge v0, v3, :cond_0

    #@27
    .line 69
    aget-object v2, v1, v0

    #@29
    .line 70
    .restart local v2    # "ob":Ljava/lang/Object;
    if-nez v2, :cond_3

    #@2b
    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 72
    :cond_3
    invoke-virtual {p0, v2, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_2

    #@34
    .line 73
    if-lez v0, :cond_4

    #@36
    .line 74
    invoke-direct {p0, v1, v0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    #@39
    .line 75
    :cond_4
    return-object v2
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
