.class public final enum Landroid/graphics/PorterDuff$Mode;
.super Ljava/lang/Enum;
.source "PorterDuff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PorterDuff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/PorterDuff$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist ADD:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist CLEAR:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist DARKEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist DST:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist DST_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist DST_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist DST_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist DST_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist LIGHTEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist MULTIPLY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist OVERLAY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist SCREEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist SRC:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist SRC_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist SRC_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist SRC_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum whitelist XOR:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public final greylist nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/PorterDuff$Mode;
    .registers 19

    .line 181
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    sget-object v17, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    filled-new-array/range {v1 .. v18}, [Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 191
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 200
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "SRC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 209
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "DST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    .line 218
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "SRC_OVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 227
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "DST_OVER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 237
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "SRC_IN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 247
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "DST_IN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 258
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "SRC_OUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 269
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "DST_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 279
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "SRC_ATOP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 289
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "DST_ATOP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 299
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "XOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 309
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "DARKEN"

    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 319
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "LIGHTEN"

    const/16 v4, 0xd

    const/16 v5, 0x11

    invoke-direct {v0, v1, v4, v5}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 328
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "MULTIPLY"

    const/16 v6, 0xe

    invoke-direct {v0, v1, v6, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 338
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "SCREEN"

    const/16 v4, 0xf

    invoke-direct {v0, v1, v4, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 348
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 361
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "OVERLAY"

    invoke-direct {v0, v1, v5, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    .line 181
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->$values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

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

    .line 363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 364
    iput p3, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    .line 365
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
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

    .line 181
    const-class v0, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 181
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, [Landroid/graphics/PorterDuff$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method
