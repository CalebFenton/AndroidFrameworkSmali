.class final Ljava/lang/reflect/Proxy$Key2;
.super Ljava/lang/ref/WeakReference;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o hash:I

.field private final greylist-max-o ref2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 486
    .local p1, "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/reflect/Proxy$Key2;->hash:I

    .line 488
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/lang/reflect/Proxy$Key2;->ref2:Ljava/lang/ref/WeakReference;

    .line 489
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 499
    if-eq p0, p1, :cond_37

    if-eqz p1, :cond_35

    .line 501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Proxy$Key2;

    if-ne v0, v1, :cond_35

    .line 502
    invoke-virtual {p0}, Ljava/lang/reflect/Proxy$Key2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .local v1, "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_35

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Proxy$Key2;

    .line 503
    invoke-virtual {v0}, Ljava/lang/reflect/Proxy$Key2;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_35

    iget-object v0, p0, Ljava/lang/reflect/Proxy$Key2;->ref2:Ljava/lang/ref/WeakReference;

    .line 504
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .local v2, "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_35

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Proxy$Key2;

    iget-object v0, v0, Ljava/lang/reflect/Proxy$Key2;->ref2:Ljava/lang/ref/WeakReference;

    .line 505
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_35

    goto :goto_37

    .end local v1    # "intf1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "intf2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    .line 499
    :goto_38
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 493
    iget v0, p0, Ljava/lang/reflect/Proxy$Key2;->hash:I

    return v0
.end method
