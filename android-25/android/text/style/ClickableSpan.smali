.class public abstract Landroid/text/style/ClickableSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClickableSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract onClick(Landroid/view/View;)V
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 40
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    #@2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    #@5
    .line 41
    const/4 v0, 0x1

    #@6
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    #@9
    .line 39
    return-void
.end method
