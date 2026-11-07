.class public final Landroid/graphics/pdf/component/PdfPageImageObject;
.super Landroid/graphics/pdf/component/PdfPageObject;
.source "PdfPageImageObject.java"


# instance fields
.field private blacklist mImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .line 38
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/pdf/component/PdfPageObject;-><init>(I)V

    .line 39
    iput-object p1, p0, Landroid/graphics/pdf/component/PdfPageImageObject;->mImage:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/graphics/pdf/component/PdfPageImageObject;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .line 58
    iput-object p1, p0, Landroid/graphics/pdf/component/PdfPageImageObject;->mImage:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method
