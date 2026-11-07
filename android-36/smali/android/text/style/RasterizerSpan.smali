.class public Landroid/text/style/RasterizerSpan;
.super Landroid/text/style/CharacterStyle;
.source "RasterizerSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private greylist-max-o mRasterizer:Landroid/graphics/Rasterizer;


# direct methods
.method public constructor greylist <init>(Landroid/graphics/Rasterizer;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/Rasterizer;

    .line 30
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 32
    return-void
.end method


# virtual methods
.method public greylist getRasterizer()Landroid/graphics/Rasterizer;
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 40
    iget-object v0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;

    .line 41
    return-void
.end method
