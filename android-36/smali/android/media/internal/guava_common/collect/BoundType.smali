.class public final enum Landroid/media/internal/guava_common/collect/BoundType;
.super Ljava/lang/Enum;
.source "BoundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/internal/guava_common/collect/BoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/media/internal/guava_common/collect/BoundType;

.field public static final enum blacklist CLOSED:Landroid/media/internal/guava_common/collect/BoundType;

.field public static final enum blacklist OPEN:Landroid/media/internal/guava_common/collect/BoundType;


# instance fields
.field final blacklist inclusive:Z


# direct methods
.method private static synthetic blacklist $values()[Landroid/media/internal/guava_common/collect/BoundType;
    .registers 2

    .line 26
    sget-object v0, Landroid/media/internal/guava_common/collect/BoundType;->OPEN:Landroid/media/internal/guava_common/collect/BoundType;

    sget-object v1, Landroid/media/internal/guava_common/collect/BoundType;->CLOSED:Landroid/media/internal/guava_common/collect/BoundType;

    filled-new-array {v0, v1}, [Landroid/media/internal/guava_common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Landroid/media/internal/guava_common/collect/BoundType;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/media/internal/guava_common/collect/BoundType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Landroid/media/internal/guava_common/collect/BoundType;->OPEN:Landroid/media/internal/guava_common/collect/BoundType;

    .line 31
    new-instance v0, Landroid/media/internal/guava_common/collect/BoundType;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/media/internal/guava_common/collect/BoundType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Landroid/media/internal/guava_common/collect/BoundType;->CLOSED:Landroid/media/internal/guava_common/collect/BoundType;

    .line 26
    invoke-static {}, Landroid/media/internal/guava_common/collect/BoundType;->$values()[Landroid/media/internal/guava_common/collect/BoundType;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/collect/BoundType;->$VALUES:[Landroid/media/internal/guava_common/collect/BoundType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-boolean p3, p0, Landroid/media/internal/guava_common/collect/BoundType;->inclusive:Z

    return-void
.end method

.method static blacklist forBoolean(Z)Landroid/media/internal/guava_common/collect/BoundType;
    .registers 1

    if-eqz p0, :cond_5

    .line 41
    sget-object p0, Landroid/media/internal/guava_common/collect/BoundType;->CLOSED:Landroid/media/internal/guava_common/collect/BoundType;

    return-object p0

    :cond_5
    sget-object p0, Landroid/media/internal/guava_common/collect/BoundType;->OPEN:Landroid/media/internal/guava_common/collect/BoundType;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/media/internal/guava_common/collect/BoundType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Landroid/media/internal/guava_common/collect/BoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/collect/BoundType;

    return-object p0
.end method

.method public static blacklist values()[Landroid/media/internal/guava_common/collect/BoundType;
    .registers 1

    .line 26
    sget-object v0, Landroid/media/internal/guava_common/collect/BoundType;->$VALUES:[Landroid/media/internal/guava_common/collect/BoundType;

    invoke-virtual {v0}, [Landroid/media/internal/guava_common/collect/BoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/internal/guava_common/collect/BoundType;

    return-object v0
.end method
