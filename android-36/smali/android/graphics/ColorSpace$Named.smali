.class public final enum Landroid/graphics/ColorSpace$Named;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Named"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Named;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist ACES:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist ACESCG:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist BT2020:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist BT2020_HLG:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist BT2020_PQ:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist BT709:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist CIE_LAB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist CIE_XYZ:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist DCI_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum blacklist DISPLAY_BT2020:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist NTSC_1953:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist OK_LAB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist SMPTE_C:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist SRGB:Landroid/graphics/ColorSpace$Named;


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/ColorSpace$Named;
    .registers 21

    .line 264
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    sget-object v5, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    sget-object v6, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    sget-object v7, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    sget-object v8, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    sget-object v9, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    sget-object v10, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    sget-object v11, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    sget-object v12, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    sget-object v13, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    sget-object v14, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    sget-object v15, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    sget-object v16, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    sget-object v17, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    sget-object v18, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    sget-object v19, Landroid/graphics/ColorSpace$Named;->OK_LAB:Landroid/graphics/ColorSpace$Named;

    sget-object v20, Landroid/graphics/ColorSpace$Named;->DISPLAY_BT2020:Landroid/graphics/ColorSpace$Named;

    filled-new-array/range {v1 .. v20}, [Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 300
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 327
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "LINEAR_SRGB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 366
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "EXTENDED_SRGB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 393
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "LINEAR_EXTENDED_SRGB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 428
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "BT709"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    .line 463
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "BT2020"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    .line 490
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "DCI_P3"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    .line 525
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "DISPLAY_P3"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    .line 560
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "NTSC_1953"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    .line 595
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "SMPTE_C"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    .line 622
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "ADOBE_RGB"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    .line 657
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "PRO_PHOTO_RGB"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    .line 684
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "ACES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    .line 711
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "ACESCG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    .line 722
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "CIE_XYZ"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    .line 733
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "CIE_LAB"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    .line 744
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "BT2020_HLG"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    .line 755
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "BT2020_PQ"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    .line 770
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "OK_LAB"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->OK_LAB:Landroid/graphics/ColorSpace$Named;

    .line 807
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "DISPLAY_BT2020"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_BT2020:Landroid/graphics/ColorSpace$Named;

    .line 264
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->$values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    sput-object v0, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

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

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Named;
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

    .line 264
    const-class v0, Landroid/graphics/ColorSpace$Named;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/ColorSpace$Named;
    .registers 1

    .line 264
    sget-object v0, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Named;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method
