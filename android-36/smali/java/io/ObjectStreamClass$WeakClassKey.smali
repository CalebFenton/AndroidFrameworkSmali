.class Ljava/io/ObjectStreamClass$WeakClassKey;
.super Ljava/lang/ref/WeakReference;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakClassKey"
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
.method constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 2544
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2545
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/io/ObjectStreamClass$WeakClassKey;->hash:I

    .line 2546
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2562
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2563
    return v0

    .line 2566
    :cond_4
    instance-of v1, p1, Ljava/io/ObjectStreamClass$WeakClassKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 2567
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$WeakClassKey;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2568
    .local v1, "referent":Ljava/lang/Object;
    if-eqz v1, :cond_19

    move-object v3, p1

    check-cast v3, Ljava/io/ObjectStreamClass$WeakClassKey;

    .line 2569
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass$WeakClassKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 2568
    :goto_1a
    return v0

    .line 2571
    .end local v1    # "referent":Ljava/lang/Object;
    :cond_1b
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2552
    iget v0, p0, Ljava/io/ObjectStreamClass$WeakClassKey;->hash:I

    return v0
.end method
