.class Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;
.super Ljava/lang/Object;
.source "AndroidPaintContext.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mTileModes:[Landroid/graphics/Shader$TileMode;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public blacklist clear(J)V
    .registers 7
    .param p1, "mask"    # J

    .line 756
    const-wide/16 v0, 0x2000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 757
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 759
    :cond_11
    return-void
.end method

.method public blacklist setAlpha(F)V
    .registers 4
    .param p1, "a"    # F

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 732
    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .registers 3
    .param p1, "aa"    # Z

    .line 751
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 752
    return-void
.end method

.method public blacklist setBlendMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToBlendMode(I)Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 727
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 666
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 667
    return-void
.end method

.method public blacklist setColorFilter(II)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "mode"    # I

    .line 810
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 811
    .local v0, "pmode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_12

    .line 812
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 814
    :cond_12
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .registers 3
    .param p1, "filter"    # Z

    .line 746
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 747
    return-void
.end method

.method public blacklist setImageFilterQuality(I)V
    .registers 4
    .param p1, "quality"    # I

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quality ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 722
    return-void
.end method

.method public blacklist setLinearGradient([I[FFFFFI)V
    .registers 17
    .param p1, "colors"    # [I
    .param p2, "stops"    # [F
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "endX"    # F
    .param p6, "endY"    # F
    .param p7, "tileMode"    # I

    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object v8, v2, p7

    move-object v6, p1

    move-object v7, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 784
    return-void
.end method

.method public blacklist setRadialGradient([I[FFFFI)V
    .registers 15
    .param p1, "colors"    # [I
    .param p2, "stops"    # [F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "radius"    # F
    .param p6, "tileMode"    # I

    .line 794
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object v7, v2, p6

    move-object v5, p1

    move-object v6, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .end local p1    # "colors":[I
    .end local p2    # "stops":[F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p5    # "radius":F
    .local v2, "centerX":F
    .local v3, "centerY":F
    .local v4, "radius":F
    .local v5, "colors":[I
    .local v6, "stops":[F
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 797
    return-void
.end method

.method public blacklist setShader(I)V
    .registers 13
    .param p1, "shaderId"    # I

    .line 683
    if-nez p1, :cond_b

    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 685
    return-void

    .line 687
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object v0

    .line 688
    .local v0, "data":Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    if-nez v0, :cond_14

    .line 689
    return-void

    .line 691
    :cond_14
    new-instance v1, Landroid/graphics/RuntimeShader;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, "shader":Landroid/graphics/RuntimeShader;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloatNames()[Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    array-length v4, v2

    if-ge v3, v4, :cond_37

    .line 694
    aget-object v4, v2, v3

    .line 695
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 696
    .local v5, "val":[F
    invoke-virtual {v1, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    .line 693
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "val":[F
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 698
    .end local v3    # "i":I
    :cond_37
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformIntegerNames()[Ljava/lang/String;

    move-result-object v2

    .line 699
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3c
    array-length v4, v2

    if-ge v3, v4, :cond_4b

    .line 700
    aget-object v4, v2, v3

    .line 701
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformInts(Ljava/lang/String;)[I

    move-result-object v5

    .line 702
    .local v5, "val":[I
    invoke-virtual {v1, v4, v5}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;[I)V

    .line 699
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "val":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 704
    .end local v3    # "i":I
    :cond_4b
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapNames()[Ljava/lang/String;

    move-result-object v2

    .line 705
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_50
    array-length v4, v2

    if-ge v3, v4, :cond_78

    .line 706
    aget-object v4, v2, v3

    .line 707
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapId(Ljava/lang/String;)I

    move-result v5

    .line 708
    .local v5, "val":I
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    # getter for: Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 709
    .local v6, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v7, v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 710
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v7, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 713
    .local v8, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v1, v4, v8}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    .line 705
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "val":I
    .end local v6    # "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapShader":Landroid/graphics/BitmapShader;
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 715
    .end local v3    # "i":I
    :cond_78
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 716
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .registers 4
    .param p1, "cap"    # I

    .line 671
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 672
    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .registers 4
    .param p1, "join"    # I

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 742
    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .registers 3
    .param p1, "miter"    # F

    .line 736
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 737
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .registers 3
    .param p1, "width"    # F

    .line 661
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 662
    return-void
.end method

.method public blacklist setStyle(I)V
    .registers 4
    .param p1, "style"    # I

    .line 676
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 677
    return-void
.end method

.method public blacklist setSweepGradient([I[FFF)V
    .registers 7
    .param p1, "colors"    # [I
    .param p2, "stops"    # [F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 805
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 806
    return-void
.end method

.method public blacklist setTextSize(F)V
    .registers 3
    .param p1, "size"    # F

    .line 610
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 611
    return-void
.end method

.method public blacklist setTypeFace(IIZ)V
    .registers 8
    .param p1, "fontType"    # I
    .param p2, "weight"    # I
    .param p3, "italic"    # Z

    .line 615
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    .line 623
    .local v0, "type":[I
    const/16 v1, 0x190

    packed-switch p1, :pswitch_data_80

    goto/16 :goto_7f

    .line 648
    :pswitch_f
    if-ne p2, v1, :cond_1d

    if-nez p3, :cond_1d

    .line 649
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7f

    .line 651
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 652
    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 651
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7f

    .line 633
    :pswitch_2b
    if-ne p2, v1, :cond_39

    if-nez p3, :cond_39

    .line 634
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7f

    .line 636
    :cond_39
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 638
    goto :goto_7f

    .line 640
    :pswitch_47
    if-ne p2, v1, :cond_55

    if-nez p3, :cond_55

    .line 641
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7f

    .line 643
    :cond_55
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 644
    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 643
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 646
    goto :goto_7f

    .line 625
    :pswitch_63
    if-ne p2, v1, :cond_71

    if-nez p3, :cond_71

    .line 626
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7f

    .line 628
    :cond_71
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 629
    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 628
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 631
    nop

    .line 657
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_63
        :pswitch_47
        :pswitch_2b
        :pswitch_f
    .end packed-switch
.end method
