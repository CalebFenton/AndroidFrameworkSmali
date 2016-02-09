.class public Landroid/text/style/MaskFilterSpan;
.super Landroid/text/style/CharacterStyle;
.source "MaskFilterSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mFilter:Landroid/graphics/MaskFilter;


# direct methods
.method public constructor <init>(Landroid/graphics/MaskFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/MaskFilter;

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    #@5
    .line 26
    return-void
.end method


# virtual methods
.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    #@2
    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    #@2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@5
    .line 35
    return-void
.end method
