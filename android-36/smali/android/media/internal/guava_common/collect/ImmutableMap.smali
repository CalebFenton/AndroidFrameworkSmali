.class public abstract Landroid/media/internal/guava_common/collect/ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use ImmutableMap.of or another implementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;,
        Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "**>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0xdecafL


# instance fields
.field private transient blacklist entrySet:Landroid/media/internal/guava_common/collect/ImmutableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist keySet:Landroid/media/internal/guava_common/collect/ImmutableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist values:Landroid/media/internal/guava_common/collect/ImmutableCollection;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 757
    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Landroid/media/internal/guava_common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1211
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final whitelist test-api clear()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 861
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 871
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 876
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->values()Landroid/media/internal/guava_common/collect/ImmutableCollection;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method abstract blacklist createEntrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method abstract blacklist createKeySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method abstract blacklist createValues()Landroid/media/internal/guava_common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public blacklist entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap;->entrySet:Landroid/media/internal/guava_common/collect/ImmutableSet;

    if-nez v0, :cond_a

    .line 942
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->createEntrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap;->entrySet:Landroid/media/internal/guava_common/collect/ImmutableSet;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic whitelist test-api entrySet()Ljava/util/Set;
    .registers 1

    .line 67
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1100
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Maps;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 924
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    return-object p2
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1107
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 866
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isHashCodeFast()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist keySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap;->keySet:Landroid/media/internal/guava_common/collect/ImmutableSet;

    if-nez v0, :cond_a

    .line 956
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->createKeySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap;->keySet:Landroid/media/internal/guava_common/collect/ImmutableSet;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/Set;
    .registers 1

    .line 67
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->keySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 821
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api putAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 848
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 835
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 1116
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist values()Landroid/media/internal/guava_common/collect/ImmutableCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap;->values:Landroid/media/internal/guava_common/collect/ImmutableCollection;

    if-nez v0, :cond_a

    .line 990
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->createValues()Landroid/media/internal/guava_common/collect/ImmutableCollection;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap;->values:Landroid/media/internal/guava_common/collect/ImmutableCollection;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic whitelist test-api values()Ljava/util/Collection;
    .registers 1

    .line 67
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->values()Landroid/media/internal/guava_common/collect/ImmutableCollection;

    move-result-object p0

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1206
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;-><init>(Landroid/media/internal/guava_common/collect/ImmutableMap;)V

    return-object v0
.end method
