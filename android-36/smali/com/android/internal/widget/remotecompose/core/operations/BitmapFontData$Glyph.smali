.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
.super Ljava/lang/Object;
.source "BitmapFontData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Glyph"
.end annotation


# instance fields
.field public blacklist mBitmapHeight:S

.field public blacklist mBitmapId:I

.field public blacklist mBitmapWidth:S

.field public blacklist mChars:Ljava/lang/String;

.field public blacklist mMarginBottom:S

.field public blacklist mMarginLeft:S

.field public blacklist mMarginRight:S

.field public blacklist mMarginTop:S


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ISSSSSS)V
    .registers 9
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "bitmapId"    # I
    .param p3, "marginLeft"    # S
    .param p4, "marginTop"    # S
    .param p5, "marginRight"    # S
    .param p6, "marginBottom"    # S
    .param p7, "width"    # S
    .param p8, "height"    # S

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    .line 84
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    .line 85
    iput-short p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    .line 86
    iput-short p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    .line 87
    iput-short p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginBottom:S

    .line 88
    iput-short p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    .line 89
    iput-short p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    .line 90
    return-void
.end method
