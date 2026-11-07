.class public Landroid/media/effect/effects/CrossProcessEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "CrossProcessEffect.java"


# direct methods
.method public constructor blacklist <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 29
    const-class v3, Landroid/filterpacks/imageproc/CrossProcessFilter;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v4, "image"

    const-string v5, "image"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "context":Landroid/media/effect/EffectContext;
    .end local p2    # "name":Ljava/lang/String;
    .local v1, "context":Landroid/media/effect/EffectContext;
    .local v2, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method
