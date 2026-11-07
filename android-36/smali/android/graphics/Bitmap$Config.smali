.class public final enum Landroid/graphics/Bitmap$Config;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Bitmap$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist ALPHA_8:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist ARGB_4444:Landroid/graphics/Bitmap$Config;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist ARGB_8888:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist HARDWARE:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist RGBA_1010102:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist RGBA_F16:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist RGB_565:Landroid/graphics/Bitmap$Config;

.field private static greylist-max-o sConfigs:[Landroid/graphics/Bitmap$Config;


# instance fields
.field final greylist nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Bitmap$Config;
    .registers 7

    .line 487
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGBA_1010102:Landroid/graphics/Bitmap$Config;

    filled-new-array/range {v0 .. v6}, [Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 497
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "ALPHA_8"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 519
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "RGB_565"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 540
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "ARGB_4444"

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 557
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "ARGB_8888"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 573
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "RGBA_F16"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 582
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "HARDWARE"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 599
    new-instance v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "RGBA_1010102"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$Config;->RGBA_1010102:Landroid/graphics/Bitmap$Config;

    .line 487
    invoke-static {}, Landroid/graphics/Bitmap$Config;->$values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sput-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    .line 604
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    sget-object v8, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGBA_1010102:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    const/4 v3, 0x0

    filled-new-array/range {v1 .. v9}, [Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sput-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

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

    .line 608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 609
    iput p3, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 610
    return-void
.end method

.method static greylist nativeToConfig(I)Landroid/graphics/Bitmap$Config;
    .registers 2
    .param p0, "ni"    # I

    .line 614
    sget-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;
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

    .line 487
    const-class v0, Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Bitmap$Config;
    .registers 1

    .line 487
    sget-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
