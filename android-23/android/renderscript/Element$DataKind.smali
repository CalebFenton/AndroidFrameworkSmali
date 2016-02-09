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
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_A:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_L:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_LA:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGB:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_YUV:Landroid/renderscript/Element$DataKind;

.field public static final enum USER:Landroid/renderscript/Element$DataKind;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x7

    #@4
    const/4 v4, 0x0

    #@5
    .line 179
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@7
    const-string/jumbo v1, "USER"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    #@f
    .line 181
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@11
    const-string/jumbo v1, "PIXEL_L"

    #@14
    invoke-direct {v0, v1, v6, v5}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    #@19
    .line 182
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@1b
    const-string/jumbo v1, "PIXEL_A"

    #@1e
    const/16 v2, 0x8

    #@20
    invoke-direct {v0, v1, v7, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@23
    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    #@25
    .line 183
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@27
    const-string/jumbo v1, "PIXEL_LA"

    #@2a
    const/16 v2, 0x9

    #@2c
    invoke-direct {v0, v1, v8, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@2f
    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    #@31
    .line 184
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@33
    const-string/jumbo v1, "PIXEL_RGB"

    #@36
    const/4 v2, 0x4

    #@37
    const/16 v3, 0xa

    #@39
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@3c
    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@3e
    .line 185
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@40
    const-string/jumbo v1, "PIXEL_RGBA"

    #@43
    const/4 v2, 0x5

    #@44
    const/16 v3, 0xb

    #@46
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@49
    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@4b
    .line 186
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@4d
    const-string/jumbo v1, "PIXEL_DEPTH"

    #@50
    const/4 v2, 0x6

    #@51
    const/16 v3, 0xc

    #@53
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@56
    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    #@58
    .line 187
    new-instance v0, Landroid/renderscript/Element$DataKind;

    #@5a
    const-string/jumbo v1, "PIXEL_YUV"

    #@5d
    const/16 v2, 0xd

    #@5f
    invoke-direct {v0, v1, v5, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    #@62
    sput-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    #@64
    .line 178
    const/16 v0, 0x8

    #@66
    new-array v0, v0, [Landroid/renderscript/Element$DataKind;

    #@68
    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    #@6a
    aput-object v1, v0, v4

    #@6c
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    #@6e
    aput-object v1, v0, v6

    #@70
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    #@72
    aput-object v1, v0, v7

    #@74
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    #@76
    aput-object v1, v0, v8

    #@78
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@7a
    const/4 v2, 0x4

    #@7b
    aput-object v1, v0, v2

    #@7d
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@7f
    const/4 v2, 0x5

    #@80
    aput-object v1, v0, v2

    #@82
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    #@84
    const/4 v2, 0x6

    #@85
    aput-object v1, v0, v2

    #@87
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    #@89
    aput-object v1, v0, v5

    #@8b
    sput-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    #@8d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 191
    iput p3, p0, Landroid/renderscript/Element$DataKind;->mID:I

    #@5
    .line 190
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    const-class v0, Landroid/renderscript/Element$DataKind;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Element$DataKind;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Element$DataKind;
    .locals 1

    #@0
    .prologue
    .line 178
    sget-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    #@2
    return-object v0
.end method
