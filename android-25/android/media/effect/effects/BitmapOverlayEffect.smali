.class public Landroid/media/effect/effects/BitmapOverlayEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "BitmapOverlayEffect.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    const-class v3, Landroid/filterpacks/imageproc/BitmapOverlayFilter;

    #@2
    const-string/jumbo v4, "image"

    #@5
    const-string/jumbo v5, "image"

    #@8
    const/4 v0, 0x0

    #@9
    new-array v6, v0, [Ljava/lang/Object;

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    invoke-direct/range {v0 .. v6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@11
    .line 29
    return-void
.end method
