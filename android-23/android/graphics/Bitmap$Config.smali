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
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Bitmap$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Bitmap$Config;

.field public static final enum ALPHA_8:Landroid/graphics/Bitmap$Config;

.field public static final enum ARGB_4444:Landroid/graphics/Bitmap$Config;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ARGB_8888:Landroid/graphics/Bitmap$Config;

.field public static final enum RGB_565:Landroid/graphics/Bitmap$Config;

.field private static sConfigs:[Landroid/graphics/Bitmap$Config;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x3

    #@4
    const/4 v3, 0x1

    #@5
    .line 391
    new-instance v0, Landroid/graphics/Bitmap$Config;

    #@7
    const-string/jumbo v1, "ALPHA_8"

    #@a
    invoke-direct {v0, v1, v5, v3}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    #@d
    .line 399
    sput-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@f
    .line 401
    new-instance v0, Landroid/graphics/Bitmap$Config;

    #@11
    const-string/jumbo v1, "RGB_565"

    #@14
    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    #@17
    .line 415
    sput-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@19
    .line 417
    new-instance v0, Landroid/graphics/Bitmap$Config;

    #@1b
    const-string/jumbo v1, "ARGB_4444"

    #@1e
    invoke-direct {v0, v1, v6, v7}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    #@21
    .line 437
    sput-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    #@23
    .line 439
    new-instance v0, Landroid/graphics/Bitmap$Config;

    #@25
    const-string/jumbo v1, "ARGB_8888"

    #@28
    .line 447
    const/4 v2, 0x5

    #@29
    .line 439
    invoke-direct {v0, v1, v4, v2}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    #@2c
    .line 447
    sput-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@2e
    .line 390
    new-array v0, v7, [Landroid/graphics/Bitmap$Config;

    #@30
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@32
    aput-object v1, v0, v5

    #@34
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@36
    aput-object v1, v0, v3

    #@38
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    #@3a
    aput-object v1, v0, v6

    #@3c
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@3e
    aput-object v1, v0, v4

    #@40
    sput-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    #@42
    .line 451
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    #@45
    .line 452
    const/4 v1, 0x0

    #@46
    aput-object v1, v0, v5

    #@48
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@4a
    aput-object v1, v0, v3

    #@4c
    const/4 v1, 0x0

    #@4d
    aput-object v1, v0, v6

    #@4f
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@51
    aput-object v1, v0, v4

    #@53
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    #@55
    aput-object v1, v0, v7

    #@57
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@59
    const/4 v2, 0x5

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 451
    sput-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    #@5e
    .line 390
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I

    #@0
    .prologue
    .line 455
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 456
    iput p3, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@5
    .line 455
    return-void
.end method

.method static nativeToConfig(I)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "ni"    # I

    #@0
    .prologue
    .line 460
    sget-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    #@2
    aget-object v0, v0, p0

    #@4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 390
    const-class v0, Landroid/graphics/Bitmap$Config;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Bitmap$Config;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Bitmap$Config;
    .locals 1

    #@0
    .prologue
    .line 390
    sget-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    #@2
    return-object v0
.end method
