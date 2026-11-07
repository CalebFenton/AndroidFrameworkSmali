.class abstract Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.super Landroid/media/internal/guava_common/collect/ForwardingConcurrentMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ForwardingConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x3L


# instance fields
.field final blacklist concurrencyLevel:I

.field transient blacklist delegate:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final blacklist keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

.field final blacklist valueEquivalence:Landroid/media/internal/guava_common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;Landroid/media/internal/guava_common/base/Equivalence;Landroid/media/internal/guava_common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2883
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ForwardingConcurrentMap;-><init>()V

    .line 2884
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 2885
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 2886
    iput-object p3, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 2887
    iput-object p4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 2888
    iput p5, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    .line 2889
    iput-object p6, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist delegate()Ljava/lang/Object;
    .registers 1

    .line 2865
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic blacklist delegate()Ljava/util/Map;
    .registers 1

    .line 2865
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist delegate()Ljava/util/concurrent/ConcurrentMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2894
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method blacklist readEntries(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2922
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2926
    :cond_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 2927
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method blacklist readMapMaker(Ljava/io/ObjectInputStream;)Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2909
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    .line 2910
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMaker;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/MapMaker;-><init>()V

    .line 2911
    invoke-virtual {v0, p1}, Landroid/media/internal/guava_common/collect/MapMaker;->initialCapacity(I)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object p1

    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 2912
    invoke-virtual {p1, v0}, Landroid/media/internal/guava_common/collect/MapMaker;->setKeyStrength(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object p1

    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 2913
    invoke-virtual {p1, v0}, Landroid/media/internal/guava_common/collect/MapMaker;->setValueStrength(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object p1

    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 2914
    invoke-virtual {p1, v0}, Landroid/media/internal/guava_common/collect/MapMaker;->keyEquivalence(Landroid/media/internal/guava_common/base/Equivalence;)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object p1

    iget p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    .line 2915
    invoke-virtual {p1, p0}, Landroid/media/internal/guava_common/collect/MapMaker;->concurrencyLevel(I)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object p0

    return-object p0
.end method

.method blacklist writeMapTo(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2898
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2899
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2900
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2901
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_13

    :cond_2e
    const/4 p0, 0x0

    .line 2903
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
