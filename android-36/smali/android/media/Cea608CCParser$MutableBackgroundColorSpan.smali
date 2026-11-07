.class public Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableBackgroundColorSpan"
.end annotation


# instance fields
.field private greylist-max-o mColor:I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "color"    # I

    .line 636
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 637
    iput p1, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    .line 638
    return-void
.end method


# virtual methods
.method public greylist-max-o getBackgroundColor()I
    .registers 2

    .line 645
    iget v0, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    return v0
.end method

.method public greylist-max-o setBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 641
    iput p1, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    .line 642
    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 650
    iget v0, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 651
    return-void
.end method
