.class final Ljdk/internal/util/StrongReferenceKey;
.super Ljava/lang/Object;
.source "StrongReferenceKey.java"

# interfaces
.implements Ljdk/internal/util/ReferenceKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljdk/internal/util/ReferenceKey<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Ljdk/internal/util/StrongReferenceKey;, "Ljdk/internal/util/StrongReferenceKey<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljdk/internal/util/StrongReferenceKey;->key:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 70
    .local p0, "this":Ljdk/internal/util/StrongReferenceKey;, "Ljdk/internal/util/StrongReferenceKey<TT;>;"
    instance-of v0, p1, Ljdk/internal/util/ReferenceKey;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljdk/internal/util/ReferenceKey;

    .line 71
    .local v0, "key":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<*>;"
    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->get()Ljava/lang/Object;

    move-result-object p1

    .line 73
    .end local v0    # "key":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<*>;"
    :cond_b
    invoke-virtual {p0}, Ljdk/internal/util/StrongReferenceKey;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    .local p0, "this":Ljdk/internal/util/StrongReferenceKey;, "Ljdk/internal/util/StrongReferenceKey<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/StrongReferenceKey;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 81
    .local p0, "this":Ljdk/internal/util/StrongReferenceKey;, "Ljdk/internal/util/StrongReferenceKey<TT;>;"
    invoke-virtual {p0}, Ljdk/internal/util/StrongReferenceKey;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "nonNullKey":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 87
    .local p0, "this":Ljdk/internal/util/StrongReferenceKey;, "Ljdk/internal/util/StrongReferenceKey<TT;>;"
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
    .registers 2

    .line 64
    .local p0, "this":Ljdk/internal/util/StrongReferenceKey;, "Ljdk/internal/util/StrongReferenceKey<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljdk/internal/util/StrongReferenceKey;->key:Ljava/lang/Object;

    .line 65
    return-void
.end method
