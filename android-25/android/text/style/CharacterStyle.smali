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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
    .locals 1
    .param p0, "cs"    # Landroid/text/style/CharacterStyle;

    #@0
    .prologue
    .line 37
    instance-of v0, p0, Landroid/text/style/MetricAffectingSpan;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 38
    new-instance v0, Landroid/text/style/MetricAffectingSpan$Passthrough;

    #@6
    check-cast p0, Landroid/text/style/MetricAffectingSpan;

    #@8
    .end local p0    # "cs":Landroid/text/style/CharacterStyle;
    invoke-direct {v0, p0}, Landroid/text/style/MetricAffectingSpan$Passthrough;-><init>(Landroid/text/style/MetricAffectingSpan;)V

    #@b
    return-object v0

    #@c
    .line 40
    .restart local p0    # "cs":Landroid/text/style/CharacterStyle;
    :cond_0
    new-instance v0, Landroid/text/style/CharacterStyle$Passthrough;

    #@e
    invoke-direct {v0, p0}, Landroid/text/style/CharacterStyle$Passthrough;-><init>(Landroid/text/style/CharacterStyle;)V

    #@11
    return-object v0
.end method


# virtual methods
.method public getUnderlying()Landroid/text/style/CharacterStyle;
    .locals 0

    #@0
    .prologue
    .line 50
    return-object p0
.end method

.method public abstract updateDrawState(Landroid/text/TextPaint;)V
.end method
