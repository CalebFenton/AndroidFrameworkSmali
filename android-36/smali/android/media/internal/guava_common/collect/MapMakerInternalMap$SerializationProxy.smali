.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$SerializationProxy;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x3L


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

    .line 2946
    invoke-direct/range {p0 .. p6}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;Landroid/media/internal/guava_common/base/Equivalence;Landroid/media/internal/guava_common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2957
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2958
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object v0

    .line 2959
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 2960
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 1

    .line 2964
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2951
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2952
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
