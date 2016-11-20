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
.field private mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 636
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 637
    iput p1, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    #@5
    .line 636
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 645
    iget v0, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    #@2
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 641
    iput p1, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    #@2
    .line 640
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 650
    iget v0, p0, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    #@2
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    #@4
    .line 649
    return-void
.end method
