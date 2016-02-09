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
.field private height:I

.field private width:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "h"    # I
    .param p2, "w"    # I

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 386
    iput p1, p0, Landroid/icu/util/LocaleData$PaperSize;->height:I

    #@5
    .line 387
    iput p2, p0, Landroid/icu/util/LocaleData$PaperSize;->width:I

    #@7
    .line 385
    return-void
.end method

.method synthetic constructor <init>(IILandroid/icu/util/LocaleData$PaperSize;)V
    .locals 0
    .param p1, "h"    # I
    .param p2, "w"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/util/LocaleData$PaperSize;-><init>(II)V

    #@3
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 395
    iget v0, p0, Landroid/icu/util/LocaleData$PaperSize;->height:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 403
    iget v0, p0, Landroid/icu/util/LocaleData$PaperSize;->width:I

    #@2
    return v0
.end method
