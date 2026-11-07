.class public final enum Landroid/graphics/BlendMode;
.super Ljava/lang/Enum;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/BlendMode;

.field private static final blacklist BLEND_MODES:[Landroid/graphics/BlendMode;

.field public static final enum whitelist CLEAR:Landroid/graphics/BlendMode;

.field public static final enum whitelist COLOR:Landroid/graphics/BlendMode;

.field public static final enum whitelist COLOR_BURN:Landroid/graphics/BlendMode;

.field public static final enum whitelist COLOR_DODGE:Landroid/graphics/BlendMode;

.field public static final enum whitelist DARKEN:Landroid/graphics/BlendMode;

.field public static final enum whitelist DIFFERENCE:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_ATOP:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_IN:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_OUT:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_OVER:Landroid/graphics/BlendMode;

.field public static final enum whitelist EXCLUSION:Landroid/graphics/BlendMode;

.field public static final enum whitelist HARD_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum whitelist HUE:Landroid/graphics/BlendMode;

.field public static final enum whitelist LIGHTEN:Landroid/graphics/BlendMode;

.field public static final enum whitelist LUMINOSITY:Landroid/graphics/BlendMode;

.field public static final enum whitelist MODULATE:Landroid/graphics/BlendMode;

.field public static final enum whitelist MULTIPLY:Landroid/graphics/BlendMode;

.field public static final enum whitelist OVERLAY:Landroid/graphics/BlendMode;

.field public static final enum whitelist PLUS:Landroid/graphics/BlendMode;

.field public static final enum whitelist SATURATION:Landroid/graphics/BlendMode;

.field public static final enum whitelist SCREEN:Landroid/graphics/BlendMode;

.field public static final enum whitelist SOFT_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_ATOP:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_IN:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_OUT:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_OVER:Landroid/graphics/BlendMode;

.field public static final enum whitelist XOR:Landroid/graphics/BlendMode;


# instance fields
.field private final blacklist mXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/BlendMode;
    .registers 30

    .line 22
    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    sget-object v2, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    sget-object v3, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    sget-object v4, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    sget-object v5, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    sget-object v6, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    sget-object v7, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    sget-object v8, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    sget-object v9, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    sget-object v10, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sget-object v11, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    sget-object v12, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    sget-object v13, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    sget-object v14, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    sget-object v15, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    sget-object v16, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    sget-object v17, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    sget-object v18, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    sget-object v19, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    sget-object v20, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    sget-object v21, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    sget-object v22, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    sget-object v23, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    sget-object v24, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    sget-object v25, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    sget-object v26, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    sget-object v27, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    sget-object v28, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    sget-object v29, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    filled-new-array/range {v1 .. v29}, [Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 35
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    .line 47
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    .line 59
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    .line 71
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_OVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    .line 83
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_OVER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    .line 96
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_IN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 109
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_IN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    .line 123
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_OUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    .line 137
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    .line 150
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SRC_ATOP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 163
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DST_ATOP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    .line 178
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "XOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    .line 191
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "PLUS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    .line 204
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "MODULATE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 219
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SCREEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    .line 238
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "OVERLAY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    .line 256
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "DARKEN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    .line 272
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "LIGHTEN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    .line 296
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "COLOR_DODGE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 321
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "COLOR_BURN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 345
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "HARD_LIGHT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    .line 393
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "SOFT_LIGHT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    .line 414
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "DIFFERENCE"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 434
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "EXCLUSION"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    .line 448
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "MULTIPLY"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    .line 461
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "HUE"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    .line 474
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "SATURATION"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    .line 487
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    .line 500
    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "LUMINOSITY"

    invoke-direct {v0, v3, v1, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    .line 22
    invoke-static {}, Landroid/graphics/BlendMode;->$values()[Landroid/graphics/BlendMode;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    .line 502
    invoke-static {}, Landroid/graphics/BlendMode;->values()[Landroid/graphics/BlendMode;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "mode"    # I
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

    .line 577
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 578
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1}, Landroid/graphics/PorterDuffXfermode;-><init>()V

    iput-object p1, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 579
    iget-object p1, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    iput p3, p1, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 580
    return-void
.end method

.method public static blacklist blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "mode"    # Landroid/graphics/BlendMode;

    .line 527
    const/4 v0, 0x0

    if-eqz p0, :cond_41

    .line 528
    invoke-virtual {p0}, Landroid/graphics/BlendMode;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 567
    return-object v0

    .line 556
    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 554
    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 565
    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 561
    :pswitch_14
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 559
    :pswitch_17
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 563
    :pswitch_1a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 552
    :pswitch_1d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 550
    :pswitch_20
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 548
    :pswitch_23
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 546
    :pswitch_26
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 544
    :pswitch_29
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 542
    :pswitch_2c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 540
    :pswitch_2f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 538
    :pswitch_32
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 536
    :pswitch_35
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 534
    :pswitch_38
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 532
    :pswitch_3b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 530
    :pswitch_3e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 570
    :cond_41
    return-object v0

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist fromValue(I)Landroid/graphics/BlendMode;
    .registers 6
    .param p0, "value"    # I

    .line 508
    sget-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 509
    .local v3, "mode":Landroid/graphics/BlendMode;
    iget-object v4, v3, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    iget v4, v4, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    if-ne v4, p0, :cond_f

    .line 510
    return-object v3

    .line 508
    .end local v3    # "mode":Landroid/graphics/BlendMode;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 513
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist toValue(Landroid/graphics/BlendMode;)I
    .registers 2
    .param p0, "mode"    # Landroid/graphics/BlendMode;

    .line 520
    invoke-virtual {p0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    return v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/BlendMode;
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

    .line 22
    const-class v0, Landroid/graphics/BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/BlendMode;
    .registers 1

    .line 22
    sget-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    invoke-virtual {v0}, [Landroid/graphics/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/BlendMode;

    return-object v0
.end method


# virtual methods
.method public blacklist getXfermode()Landroid/graphics/PorterDuffXfermode;
    .registers 2

    .line 587
    iget-object v0, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    return-object v0
.end method
