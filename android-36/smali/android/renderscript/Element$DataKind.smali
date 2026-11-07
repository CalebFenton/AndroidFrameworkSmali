.class public final enum Landroid/renderscript/Element$DataKind;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_A:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_L:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_LA:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_RGB:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_YUV:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist USER:Landroid/renderscript/Element$DataKind;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/Element$DataKind;
    .registers 8

    .line 185
    sget-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    sget-object v3, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    sget-object v6, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    sget-object v7, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    filled-new-array/range {v0 .. v7}, [Landroid/renderscript/Element$DataKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 186
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 188
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_L"

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    .line 189
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const/4 v1, 0x2

    const/16 v2, 0x8

    const-string v4, "PIXEL_A"

    invoke-direct {v0, v4, v1, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    .line 190
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v4, "PIXEL_LA"

    invoke-direct {v0, v4, v1, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    .line 191
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const/4 v1, 0x4

    const/16 v2, 0xa

    const-string v4, "PIXEL_RGB"

    invoke-direct {v0, v4, v1, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    .line 192
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const/4 v1, 0x5

    const/16 v2, 0xb

    const-string v4, "PIXEL_RGBA"

    invoke-direct {v0, v4, v1, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    .line 193
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const/4 v1, 0x6

    const/16 v2, 0xc

    const-string v4, "PIXEL_DEPTH"

    invoke-direct {v0, v4, v1, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    .line 194
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_YUV"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 185
    invoke-static {}, Landroid/renderscript/Element$DataKind;->$values()[Landroid/renderscript/Element$DataKind;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
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

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 198
    iput p3, p0, Landroid/renderscript/Element$DataKind;->mID:I

    .line 199
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataKind;
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

    .line 185
    const-class v0, Landroid/renderscript/Element$DataKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public static whitelist values()[Landroid/renderscript/Element$DataKind;
    .registers 1

    .line 185
    sget-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataKind;

    return-object v0
.end method
