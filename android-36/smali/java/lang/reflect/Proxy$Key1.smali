.class final Ljava/lang/reflect/Proxy$Key1;
.super Ljava/lang/ref/WeakReference;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key1"
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


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 458
    .local p1, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 459
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/Proxy$Key1;->hash:I

    .line 460
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 470
    if-eq p0, p1, :cond_21

    if-eqz p1, :cond_1f

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Proxy$Key1;

    if-ne v0, v1, :cond_1f

    .line 473
    invoke-virtual {p0}, Ljava/lang/reflect/Proxy$Key1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .local v1, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Proxy$Key1;

    .line 474
    invoke-virtual {v0}, Ljava/lang/reflect/Proxy$Key1;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_1f

    goto :goto_21

    .end local v1    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 470
    :goto_22
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 464
    iget v0, p0, Ljava/lang/reflect/Proxy$Key1;->hash:I

    return v0
.end method
