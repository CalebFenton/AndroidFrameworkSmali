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
.field private blacklist cache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist size:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    .line 47
    iput p1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    .line 48
    return-void
.end method

.method private blacklist moveToFront([Ljava/lang/Object;I)V
    .registers 6
    .param p1, "oa"    # [Ljava/lang/Object;
    .param p2, "i"    # I

    .line 53
    aget-object v0, p1, p2

    .line 54
    .local v0, "ob":Ljava/lang/Object;
    move v1, p2

    .local v1, "j":I
    :goto_3
    if-lez v1, :cond_e

    .line 55
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v1

    .line 54
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 56
    .end local v1    # "j":I
    :cond_e
    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 57
    return-void
.end method


# virtual methods
.method abstract blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method blacklist forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 63
    .local v0, "oa":[Ljava/lang/Object;
    if-nez v0, :cond_14

    .line 64
    iget v1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2c

    .line 67
    :cond_14
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    .line 68
    aget-object v2, v0, v1

    .line 69
    .local v2, "ob":Ljava/lang/Object;
    if-nez v2, :cond_1d

    .line 70
    goto :goto_29

    .line 71
    :cond_1d
    invoke-virtual {p0, v2, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 72
    if-lez v1, :cond_28

    .line 73
    invoke-direct {p0, v0, v1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 74
    :cond_28
    return-object v2

    .line 67
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 80
    .end local v1    # "i":I
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "ob":Ljava/lang/Object;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 82
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v2}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 83
    return-object v1
.end method

.method abstract blacklist hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
