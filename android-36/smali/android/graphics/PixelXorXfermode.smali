.class public Landroid/graphics/PixelXorXfermode;
.super Landroid/graphics/Xfermode;
.source "PixelXorXfermode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist <init>(I)V
    .registers 2
    .param p1, "opColor"    # I

    .line 26
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 27
    return-void
.end method
