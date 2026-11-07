.class public final enum Landroid/graphics/Path$Direction;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Path$Direction;

.field public static final enum whitelist CCW:Landroid/graphics/Path$Direction;

.field public static final enum whitelist CW:Landroid/graphics/Path$Direction;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Path$Direction;
    .registers 2

    .line 547
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    filled-new-array {v0, v1}, [Landroid/graphics/Path$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 549
    new-instance v0, Landroid/graphics/Path$Direction;

    const-string v1, "CW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 551
    new-instance v0, Landroid/graphics/Path$Direction;

    const-string v1, "CCW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 547
    invoke-static {}, Landroid/graphics/Path$Direction;->$values()[Landroid/graphics/Path$Direction;

    move-result-object v0

    sput-object v0, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "ni"    # I
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
            "(I)V"
        }
    .end annotation

    .line 553
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 554
    iput p3, p0, Landroid/graphics/Path$Direction;->nativeInt:I

    .line 555
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Path$Direction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 547
    const-class v0, Landroid/graphics/Path$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$Direction;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Path$Direction;
    .registers 1

    .line 547
    sget-object v0, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

    invoke-virtual {v0}, [Landroid/graphics/Path$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$Direction;

    return-object v0
.end method
