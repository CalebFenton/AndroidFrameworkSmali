.class final Ljava/lang/reflect/Proxy$KeyX;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyX"
.end annotation


# instance fields
.field private final greylist-max-o hash:I

.field private final greylist-max-o refs:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>([Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 518
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/Proxy$KeyX;->hash:I

    .line 520
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_20

    .line 522
    iget-object v1, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 524
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private static greylist-max-o equals([Ljava/lang/ref/WeakReference;[Ljava/lang/ref/WeakReference;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    .line 541
    .local p0, "refs1":[Ljava/lang/ref/WeakReference;, "[Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    .local p1, "refs2":[Ljava/lang/ref/WeakReference;, "[Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 542
    return v2

    .line 544
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_21

    .line 545
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 546
    .local v1, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_20

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_1d

    goto :goto_20

    .line 544
    .end local v1    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 547
    .restart local v1    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    :goto_20
    return v2

    .line 550
    .end local v0    # "i":I
    .end local v1    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 533
    if-eq p0, p1, :cond_1c

    if-eqz p1, :cond_1a

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Proxy$KeyX;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Proxy$KeyX;

    iget-object v1, v1, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    .line 536
    invoke-static {v0, v1}, Ljava/lang/reflect/Proxy$KeyX;->equals([Ljava/lang/ref/WeakReference;[Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 533
    :goto_1d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 528
    iget v0, p0, Ljava/lang/reflect/Proxy$KeyX;->hash:I

    return v0
.end method
