.class Landroid/text/style/MetricAffectingSpan$Passthrough;
.super Landroid/text/style/MetricAffectingSpan;
.source "MetricAffectingSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/MetricAffectingSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Passthrough"
.end annotation


# instance fields
.field private greylist-max-o mStyle:Landroid/text/style/MetricAffectingSpan;


# direct methods
.method constructor greylist-max-o <init>(Landroid/text/style/MetricAffectingSpan;)V
    .registers 2
    .param p1, "cs"    # Landroid/text/style/MetricAffectingSpan;

    .line 63
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist getUnderlying()Landroid/text/style/CharacterStyle;
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroid/text/style/MetricAffectingSpan$Passthrough;->getUnderlying()Landroid/text/style/MetricAffectingSpan;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnderlying()Landroid/text/style/MetricAffectingSpan;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v0}, Landroid/text/style/MetricAffectingSpan;->getUnderlying()Landroid/text/style/MetricAffectingSpan;

    move-result-object v0

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 72
    iget-object v0, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 73
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 80
    iget-object v0, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 81
    return-void
.end method
