.class public final Landroid/icu/util/LocaleData$PaperSize;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaperSize"
.end annotation


# instance fields
.field private greylist-max-o height:I

.field private greylist-max-o width:I


# direct methods
.method private constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "h"    # I
    .param p2, "w"    # I

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput p1, p0, Landroid/icu/util/LocaleData$PaperSize;->height:I

    .line 379
    iput p2, p0, Landroid/icu/util/LocaleData$PaperSize;->width:I

    .line 380
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/icu/util/LocaleData-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/util/LocaleData$PaperSize;-><init>(II)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getHeight()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/icu/util/LocaleData$PaperSize;->height:I

    return v0
.end method

.method public whitelist test-api getWidth()I
    .registers 2

    .line 393
    iget v0, p0, Landroid/icu/util/LocaleData$PaperSize;->width:I

    return v0
.end method
