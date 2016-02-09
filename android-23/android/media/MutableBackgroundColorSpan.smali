.class Landroid/media/MutableBackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 1055
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 1056
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    #@5
    .line 1055
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 1064
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    #@2
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 1060
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    #@2
    .line 1059
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 1069
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    #@2
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    #@4
    .line 1068
    return-void
.end method
