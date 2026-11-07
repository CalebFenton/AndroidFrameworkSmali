.class Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field private final blacklist keys:Ljava/lang/Object;

.field private final blacklist values:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1139
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1142
    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/ImmutableMap;->entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/ImmutableSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1147
    :cond_33
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    .line 1148
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final blacklist legacyReadResolve()Ljava/lang/Object;
    .registers 6

    .line 1178
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1179
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 1181
    array-length v2, v0

    invoke-virtual {p0, v2}, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->makeBuilder(I)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;

    move-result-object p0

    const/4 v2, 0x0

    .line 1183
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_1b

    .line 1184
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-virtual {p0, v3, v4}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1186
    :cond_1b
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->buildOrThrow()Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method blacklist makeBuilder(I)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/media/internal/guava_common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1193
    new-instance p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;-><init>(I)V

    return-object p0
.end method

.method final whitelist readResolve()Ljava/lang/Object;
    .registers 5

    .line 1157
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    instance-of v1, v0, Landroid/media/internal/guava_common/collect/ImmutableSet;

    if-nez v1, :cond_b

    .line 1158
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->legacyReadResolve()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_b
    check-cast v0, Landroid/media/internal/guava_common/collect/ImmutableSet;

    .line 1162
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    check-cast v1, Landroid/media/internal/guava_common/collect/ImmutableCollection;

    .line 1164
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;->makeBuilder(I)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;

    move-result-object p0

    .line 1166
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 1167
    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object v1

    .line 1169
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;

    goto :goto_21

    .line 1173
    :cond_33
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->buildOrThrow()Landroid/media/internal/guava_common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method
