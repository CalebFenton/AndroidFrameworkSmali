.class abstract Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;
.super Landroid/media/internal/guava_common/collect/ImmutableSet;
.source "ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;-><init>()V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 127
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use EntrySetSerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 93
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 94
    check-cast p1, Ljava/util/Map$Entry;

    .line 95
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;->map()Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 96
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 114
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;->map()Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->hashCode()I

    move-result p0

    return p0
.end method

.method blacklist isHashCodeFast()Z
    .registers 1

    .line 109
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;->map()Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->isHashCodeFast()Z

    move-result p0

    return p0
.end method

.method abstract blacklist map()Landroid/media/internal/guava_common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 88
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;->map()Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 121
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;->map()Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;-><init>(Landroid/media/internal/guava_common/collect/ImmutableMap;)V

    return-object v0
.end method
