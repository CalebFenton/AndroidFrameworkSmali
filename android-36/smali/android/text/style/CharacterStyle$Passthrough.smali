.class Landroid/text/style/CharacterStyle$Passthrough;
.super Landroid/text/style/CharacterStyle;
.source "CharacterStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/CharacterStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Passthrough"
.end annotation


# instance fields
.field private greylist-max-o mStyle:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/text/style/CharacterStyle;)V
    .registers 2
    .param p1, "cs"    # Landroid/text/style/CharacterStyle;

    .line 67
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/text/style/CharacterStyle$Passthrough;->mStyle:Landroid/text/style/CharacterStyle;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist getUnderlying()Landroid/text/style/CharacterStyle;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/text/style/CharacterStyle$Passthrough;->mStyle:Landroid/text/style/CharacterStyle;

    invoke-virtual {v0}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 76
    iget-object v0, p0, Landroid/text/style/CharacterStyle$Passthrough;->mStyle:Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, p1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 77
    return-void
.end method
