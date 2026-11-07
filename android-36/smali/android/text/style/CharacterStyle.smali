.class public abstract Landroid/text/style/CharacterStyle;
.super Ljava/lang/Object;
.source "CharacterStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/CharacterStyle$Passthrough;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
    .registers 3
    .param p0, "cs"    # Landroid/text/style/CharacterStyle;

    .line 38
    instance-of v0, p0, Landroid/text/style/MetricAffectingSpan;

    if-eqz v0, :cond_d

    .line 39
    new-instance v0, Landroid/text/style/MetricAffectingSpan$Passthrough;

    move-object v1, p0

    check-cast v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/style/MetricAffectingSpan$Passthrough;-><init>(Landroid/text/style/MetricAffectingSpan;)V

    return-object v0

    .line 41
    :cond_d
    new-instance v0, Landroid/text/style/CharacterStyle$Passthrough;

    invoke-direct {v0, p0}, Landroid/text/style/CharacterStyle$Passthrough;-><init>(Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getUnderlying()Landroid/text/style/CharacterStyle;
    .registers 1

    .line 51
    return-object p0
.end method

.method public abstract whitelist updateDrawState(Landroid/text/TextPaint;)V
.end method
