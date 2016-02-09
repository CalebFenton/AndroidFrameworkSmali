.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public inBitmap:Landroid/graphics/Bitmap;

.field public inDensity:I

.field public inDither:Z

.field public inInputShareable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public inJustDecodeBounds:Z

.field public inMutable:Z

.field public inPreferQualityOverSpeed:Z

.field public inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public inPremultiplied:Z

.field public inPurgeable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public inSampleSize:I

.field public inScaled:Z

.field public inScreenDensity:I

.field public inTargetDensity:I

.field public inTempStorage:[B

.field public mCancel:Z

.field public outHeight:I

.field public outMimeType:Ljava/lang/String;

.field public outWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 139
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@6
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    #@8
    .line 44
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    #@b
    .line 45
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    #@d
    .line 46
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    #@f
    .line 43
    return-void
.end method

.method private native requestCancel()V
.end method


# virtual methods
.method public requestCancelDecode()V
    .locals 1

    #@0
    .prologue
    .line 370
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    #@3
    .line 371
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;->requestCancel()V

    #@6
    .line 369
    return-void
.end method
