.class public final enum Landroid/graphics/Path$FillType;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$FillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Path$FillType;

.field public static final enum whitelist EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum whitelist INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum whitelist INVERSE_WINDING:Landroid/graphics/Path$FillType;

.field public static final enum whitelist WINDING:Landroid/graphics/Path$FillType;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Path$FillType;
    .registers 4

    .line 200
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/Path$FillType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 206
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "WINDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 211
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "EVEN_ODD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 215
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "INVERSE_WINDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    .line 219
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "INVERSE_EVEN_ODD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 200
    invoke-static {}, Landroid/graphics/Path$FillType;->$values()[Landroid/graphics/Path$FillType;

    move-result-object v0

    sput-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

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

    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput p3, p0, Landroid/graphics/Path$FillType;->nativeInt:I

    .line 223
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Path$FillType;
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

    .line 200
    const-class v0, Landroid/graphics/Path$FillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Path$FillType;
    .registers 1

    .line 200
    sget-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    invoke-virtual {v0}, [Landroid/graphics/Path$FillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$FillType;

    return-object v0
.end method
