.class abstract enum Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

.field public static final enum blacklist STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

.field public static final enum blacklist WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;


# direct methods
.method private static synthetic blacklist $values()[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 2

    .line 249
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    filled-new-array {v0, v1}, [Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 250
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 257
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength$2;

    const-string v1, "WEAK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 249
    invoke-static {}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->$values()[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->$VALUES:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V
    .registers 4

    .line 249
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 249
    const-class v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method public static blacklist values()[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 249
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->$VALUES:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0}, [Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method


# virtual methods
.method abstract blacklist defaultEquivalence()Landroid/media/internal/guava_common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
