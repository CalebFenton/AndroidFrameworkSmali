.class final enum Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength$2;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p1, p2, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method blacklist defaultEquivalence()Landroid/media/internal/guava_common/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/media/internal/guava_common/base/Equivalence;->identity()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object p0

    return-object p0
.end method
