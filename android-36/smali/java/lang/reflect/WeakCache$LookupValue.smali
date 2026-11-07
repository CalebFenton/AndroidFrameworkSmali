.class final Ljava/lang/reflect/WeakCache$LookupValue;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Ljava/lang/reflect/WeakCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LookupValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/WeakCache$Value<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    .line 273
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 287
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    if-eq p1, p0, :cond_14

    instance-of v0, p1, Ljava/lang/reflect/WeakCache$Value;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/WeakCache$Value;

    .line 289
    invoke-interface {v1}, Ljava/lang/reflect/WeakCache$Value;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 287
    :goto_15
    return v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 277
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    iget-object v0, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 282
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    iget-object v0, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
