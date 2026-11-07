.class final Ljava/lang/reflect/WeakCache$CacheValue;
.super Ljava/lang/ref/WeakReference;
.source "WeakCache.java"

# interfaces
.implements Ljava/lang/reflect/WeakCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;",
        "Ljava/lang/reflect/WeakCache$Value<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o hash:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 302
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 303
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/WeakCache$CacheValue;->hash:I

    .line 304
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 314
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    if-eq p1, p0, :cond_19

    instance-of v0, p1, Ljava/lang/reflect/WeakCache$Value;

    if-eqz v0, :cond_17

    .line 317
    invoke-virtual {p0}, Ljava/lang/reflect/WeakCache$CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WeakCache$Value;

    .line 318
    invoke-interface {v0}, Ljava/lang/reflect/WeakCache$Value;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_17

    goto :goto_19

    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 314
    :goto_1a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 308
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    iget v0, p0, Ljava/lang/reflect/WeakCache$CacheValue;->hash:I

    return v0
.end method
