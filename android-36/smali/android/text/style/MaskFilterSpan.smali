.class public Landroid/text/style/MaskFilterSpan;
.super Landroid/text/style/CharacterStyle;
.source "MaskFilterSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private greylist-max-o mFilter:Landroid/graphics/MaskFilter;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/MaskFilter;)V
    .registers 2
    .param p1, "filter"    # Landroid/graphics/MaskFilter;

    .line 43
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist getMaskFilter()Landroid/graphics/MaskFilter;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaskFilterSpan{filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/MaskFilterSpan;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 58
    iget-object v0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 59
    return-void
.end method
