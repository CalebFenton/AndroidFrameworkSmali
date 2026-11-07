.class final Ljdk/internal/util/WeakReferenceKey;
.super Ljava/lang/ref/WeakReference;
.source "WeakReferenceKey.java"

# interfaces
.implements Ljdk/internal/util/ReferenceKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TT;>;",
        "Ljdk/internal/util/ReferenceKey<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist hashcode:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Ljdk/internal/util/WeakReferenceKey;, "Ljdk/internal/util/WeakReferenceKey<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljdk/internal/util/WeakReferenceKey;->hashcode:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    .local p0, "this":Ljdk/internal/util/WeakReferenceKey;, "Ljdk/internal/util/WeakReferenceKey<TT;>;"
    if-ne p1, p0, :cond_4

    .line 70
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_4
    instance-of v0, p1, Ljdk/internal/util/ReferenceKey;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljdk/internal/util/ReferenceKey;

    .line 74
    .local v0, "key":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<*>;"
    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->get()Ljava/lang/Object;

    move-result-object p1

    .line 78
    .end local v0    # "key":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<*>;"
    :cond_f
    invoke-virtual {p0}, Ljdk/internal/util/WeakReferenceKey;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 84
    .local p0, "this":Ljdk/internal/util/WeakReferenceKey;, "Ljdk/internal/util/WeakReferenceKey<TT;>;"
    iget v0, p0, Ljdk/internal/util/WeakReferenceKey;->hashcode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 89
    .local p0, "this":Ljdk/internal/util/WeakReferenceKey;, "Ljdk/internal/util/WeakReferenceKey<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unused()V
    .registers 1

    .line 63
    .local p0, "this":Ljdk/internal/util/WeakReferenceKey;, "Ljdk/internal/util/WeakReferenceKey<TT;>;"
    invoke-virtual {p0}, Ljdk/internal/util/WeakReferenceKey;->clear()V

    .line 64
    return-void
.end method
