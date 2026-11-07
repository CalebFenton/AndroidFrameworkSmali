.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DummyInternalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public blacklist getHash()I
    .registers 1

    .line 1024
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public blacklist getKey()Ljava/lang/Object;
    .registers 1

    .line 1029
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;
    .registers 1

    .line 1019
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 1

    .line 1011
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .registers 1

    .line 1034
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
