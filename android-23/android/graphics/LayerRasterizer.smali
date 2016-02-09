.class public Landroid/graphics/LayerRasterizer;
.super Landroid/graphics/Rasterizer;
.source "LayerRasterizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Landroid/graphics/Rasterizer;-><init>()V

    #@3
    .line 22
    invoke-static {}, Landroid/graphics/LayerRasterizer;->nativeConstructor()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:J

    #@9
    .line 21
    return-void
.end method

.method private static native nativeAddLayer(JJFF)V
.end method

.method private static native nativeConstructor()J
.end method


# virtual methods
.method public addLayer(Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 35
    iget-wide v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:J

    #@3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@6
    move-result-wide v2

    #@7
    move v5, v4

    #@8
    invoke-static/range {v0 .. v5}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(JJFF)V

    #@b
    .line 34
    return-void
.end method

.method public addLayer(Landroid/graphics/Paint;FF)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    #@0
    .prologue
    .line 31
    iget-wide v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v2

    #@6
    move v4, p2

    #@7
    move v5, p3

    #@8
    invoke-static/range {v0 .. v5}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(JJFF)V

    #@b
    .line 30
    return-void
.end method
