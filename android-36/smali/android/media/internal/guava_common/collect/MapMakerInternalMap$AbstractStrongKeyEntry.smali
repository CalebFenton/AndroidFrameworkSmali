.class abstract Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractStrongKeyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final blacklist hash:I

.field final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->key:Ljava/lang/Object;

    .line 350
    iput p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->hash:I

    return-void
.end method


# virtual methods
.method public final blacklist getHash()I
    .registers 1

    .line 360
    iget p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->hash:I

    return p0
.end method

.method public final blacklist getKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 355
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
