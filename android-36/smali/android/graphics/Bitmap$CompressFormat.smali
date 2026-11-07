.class public final enum Landroid/graphics/Bitmap$CompressFormat;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Bitmap$CompressFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist JPEG:Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist PNG:Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist WEBP:Landroid/graphics/Bitmap$CompressFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Bitmap$CompressFormat;
    .registers 5

    .line 1501
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1507
    new-instance v0, Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1512
    new-instance v0, Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "PNG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1524
    new-instance v0, Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "WEBP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 1531
    new-instance v0, Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "WEBP_LOSSY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    .line 1539
    new-instance v0, Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "WEBP_LOSSLESS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    .line 1501
    invoke-static {}, Landroid/graphics/Bitmap$CompressFormat;->$values()[Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    sput-object v0, Landroid/graphics/Bitmap$CompressFormat;->$VALUES:[Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "nativeInt"    # I
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

    .line 1541
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1542
    iput p3, p0, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    .line 1543
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
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

    .line 1501
    const-class v0, Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Bitmap$CompressFormat;
    .registers 1

    .line 1501
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->$VALUES:[Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$CompressFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method
