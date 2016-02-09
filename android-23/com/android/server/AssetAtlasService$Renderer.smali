.class Lcom/android/server/AssetAtlasService$Renderer;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixelCount:I

.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AssetAtlasService;
    .param p3, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    .local p2, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 202
    iput-object p2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    #@7
    .line 203
    iput p3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    #@9
    .line 201
    return-void
.end method

.method private releaseCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "atlasBitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@4
    .line 312
    return-void
.end method

.method private renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z
    .locals 28
    .param p1, "buffer"    # Landroid/view/GraphicBuffer;
    .param p2, "atlas"    # Landroid/graphics/Atlas;
    .param p3, "packCount"    # I

    #@0
    .prologue
    .line 250
    new-instance v17, Landroid/graphics/Paint;

    #@2
    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    #@5
    .line 251
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    #@7
    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@9
    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@c
    move-object/from16 v0, v17

    #@e
    move-object/from16 v1, v23

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@13
    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getWidth()I

    #@16
    move-result v23

    #@17
    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getHeight()I

    #@1a
    move-result v24

    #@1b
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1d
    .line 255
    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@20
    move-result-object v4

    #@21
    .line 257
    .local v4, "atlasBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    #@23
    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@26
    .line 259
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Atlas$Entry;

    #@28
    invoke-direct {v9}, Landroid/graphics/Atlas$Entry;-><init>()V

    #@2b
    .line 261
    .local v9, "entry":Landroid/graphics/Atlas$Entry;
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@2f
    move-object/from16 v23, v0

    #@31
    mul-int/lit8 v24, p3, 0x3

    #@33
    move/from16 v0, v24

    #@35
    new-array v0, v0, [J

    #@37
    move-object/from16 v24, v0

    #@39
    invoke-static/range {v23 .. v24}, Lcom/android/server/AssetAtlasService;->-set0(Lcom/android/server/AssetAtlasService;[J)[J

    #@3c
    .line 262
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@40
    move-object/from16 v23, v0

    #@42
    invoke-static/range {v23 .. v23}, Lcom/android/server/AssetAtlasService;->-get0(Lcom/android/server/AssetAtlasService;)[J

    #@45
    move-result-object v5

    #@46
    .line 263
    .local v5, "atlasMap":[J
    const/4 v15, 0x0

    #@47
    .line 265
    .local v15, "mapIndex":I
    const/16 v19, 0x0

    #@49
    .line 266
    .local v19, "result":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4c
    move-result-wide v20

    #@4d
    .line 267
    .local v20, "startRender":J
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    #@51
    move-object/from16 v23, v0

    #@53
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v8

    #@57
    .line 269
    .local v8, "count":I
    const/4 v14, 0x0

    #@58
    .local v14, "i":I
    move/from16 v16, v15

    #@5a
    .end local v15    # "mapIndex":I
    .local v16, "mapIndex":I
    :goto_0
    if-ge v14, v8, :cond_0

    #@5c
    .line 270
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    #@60
    move-object/from16 v23, v0

    #@62
    move-object/from16 v0, v23

    #@64
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v6

    #@68
    check-cast v6, Landroid/graphics/Bitmap;

    #@6a
    .line 271
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    #@6d
    move-result v23

    #@6e
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    #@71
    move-result v24

    #@72
    move-object/from16 v0, p2

    #@74
    move/from16 v1, v23

    #@76
    move/from16 v2, v24

    #@78
    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    #@7b
    move-result-object v23

    #@7c
    if-eqz v23, :cond_2

    #@7e
    .line 275
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@82
    move-object/from16 v23, v0

    #@84
    invoke-static/range {v23 .. v23}, Lcom/android/server/AssetAtlasService;->-get0(Lcom/android/server/AssetAtlasService;)[J

    #@87
    move-result-object v23

    #@88
    move-object/from16 v0, v23

    #@8a
    array-length v0, v0

    #@8b
    move/from16 v23, v0

    #@8d
    move/from16 v0, v16

    #@8f
    move/from16 v1, v23

    #@91
    if-lt v0, v1, :cond_1

    #@93
    .line 276
    invoke-static {}, Lcom/android/server/AssetAtlasService;->-wrap2()V

    #@96
    .line 290
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@99
    move-result-wide v10

    #@9a
    .line 291
    .local v10, "endRender":J
    move-object/from16 v0, p0

    #@9c
    invoke-direct {v0, v7, v4}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    #@9f
    .line 292
    move-object/from16 v0, p1

    #@a1
    invoke-static {v0, v4}, Lcom/android/server/AssetAtlasService;->-wrap0(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z

    #@a4
    move-result v19

    #@a5
    .line 293
    .local v19, "result":Z
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #@a8
    .line 294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@ab
    move-result-wide v12

    #@ac
    .line 297
    .local v12, "endUpload":J
    sub-long v24, v10, v20

    #@ae
    move-wide/from16 v0, v24

    #@b0
    long-to-float v0, v0

    #@b1
    move/from16 v23, v0

    #@b3
    const/high16 v24, 0x447a0000    # 1000.0f

    #@b5
    div-float v23, v23, v24

    #@b7
    const/high16 v24, 0x447a0000    # 1000.0f

    #@b9
    div-float v18, v23, v24

    #@bb
    .line 298
    .local v18, "renderDuration":F
    sub-long v24, v12, v10

    #@bd
    move-wide/from16 v0, v24

    #@bf
    long-to-float v0, v0

    #@c0
    move/from16 v23, v0

    #@c2
    const/high16 v24, 0x447a0000    # 1000.0f

    #@c4
    div-float v23, v23, v24

    #@c6
    const/high16 v24, 0x447a0000    # 1000.0f

    #@c8
    div-float v22, v23, v24

    #@ca
    .line 299
    .local v22, "uploadDuration":F
    const-string/jumbo v23, "AssetAtlas"

    #@cd
    const-string/jumbo v24, "Rendered atlas in %.2fms (%.2f+%.2fms)"

    #@d0
    const/16 v25, 0x3

    #@d2
    move/from16 v0, v25

    #@d4
    new-array v0, v0, [Ljava/lang/Object;

    #@d6
    move-object/from16 v25, v0

    #@d8
    .line 300
    add-float v26, v18, v22

    #@da
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@dd
    move-result-object v26

    #@de
    const/16 v27, 0x0

    #@e0
    aput-object v26, v25, v27

    #@e2
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e5
    move-result-object v26

    #@e6
    const/16 v27, 0x1

    #@e8
    aput-object v26, v25, v27

    #@ea
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@ed
    move-result-object v26

    #@ee
    const/16 v27, 0x2

    #@f0
    aput-object v26, v25, v27

    #@f2
    .line 299
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f5
    move-result-object v24

    #@f6
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f9
    .line 303
    return v19

    #@fa
    .line 280
    .end local v10    # "endRender":J
    .end local v12    # "endUpload":J
    .end local v18    # "renderDuration":F
    .end local v22    # "uploadDuration":F
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .local v19, "result":Z
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    #@fd
    .line 281
    iget v0, v9, Landroid/graphics/Atlas$Entry;->x:I

    #@ff
    move/from16 v23, v0

    #@101
    move/from16 v0, v23

    #@103
    int-to-float v0, v0

    #@104
    move/from16 v23, v0

    #@106
    iget v0, v9, Landroid/graphics/Atlas$Entry;->y:I

    #@108
    move/from16 v24, v0

    #@10a
    move/from16 v0, v24

    #@10c
    int-to-float v0, v0

    #@10d
    move/from16 v24, v0

    #@10f
    move/from16 v0, v23

    #@111
    move/from16 v1, v24

    #@113
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@116
    .line 282
    const/16 v23, 0x0

    #@118
    const/16 v24, 0x0

    #@11a
    const/16 v25, 0x0

    #@11c
    move/from16 v0, v23

    #@11e
    move/from16 v1, v24

    #@120
    move-object/from16 v2, v25

    #@122
    invoke-virtual {v7, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@125
    .line 283
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    #@128
    .line 284
    add-int/lit8 v15, v16, 0x1

    #@12a
    .end local v16    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->refSkPixelRef()J

    #@12d
    move-result-wide v24

    #@12e
    aput-wide v24, v5, v16

    #@130
    .line 285
    add-int/lit8 v16, v15, 0x1

    #@132
    .end local v15    # "mapIndex":I
    .restart local v16    # "mapIndex":I
    iget v0, v9, Landroid/graphics/Atlas$Entry;->x:I

    #@134
    move/from16 v23, v0

    #@136
    move/from16 v0, v23

    #@138
    int-to-long v0, v0

    #@139
    move-wide/from16 v24, v0

    #@13b
    aput-wide v24, v5, v15

    #@13d
    .line 286
    add-int/lit8 v15, v16, 0x1

    #@13f
    .end local v16    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    iget v0, v9, Landroid/graphics/Atlas$Entry;->y:I

    #@141
    move/from16 v23, v0

    #@143
    move/from16 v0, v23

    #@145
    int-to-long v0, v0

    #@146
    move-wide/from16 v24, v0

    #@148
    aput-wide v24, v5, v16

    #@14a
    .line 269
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@14c
    move/from16 v16, v15

    #@14e
    .end local v15    # "mapIndex":I
    .restart local v16    # "mapIndex":I
    goto/16 :goto_0

    #@150
    :cond_2
    move/from16 v15, v16

    #@152
    .end local v16    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 219
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@3
    iget-object v3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    #@5
    iget v4, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    #@7
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@9
    invoke-static {v5}, Lcom/android/server/AssetAtlasService;->-get3(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AssetAtlasService;->-wrap1(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    #@10
    move-result-object v1

    #@11
    .line 220
    .local v1, "config":Lcom/android/server/AssetAtlasService$Configuration;
    const-string/jumbo v2, "AssetAtlas"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Loaded configuration: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 222
    if-eqz v1, :cond_0

    #@2d
    .line 223
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@2f
    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    #@31
    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    #@33
    .line 224
    const/16 v5, 0x100

    #@35
    .line 223
    invoke-static {v3, v4, v6, v5}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    #@38
    move-result-object v3

    #@39
    invoke-static {v2, v3}, Lcom/android/server/AssetAtlasService;->-set1(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;

    #@3c
    .line 226
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@3e
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->-get2(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    #@41
    move-result-object v2

    #@42
    if-eqz v2, :cond_0

    #@44
    .line 227
    new-instance v0, Landroid/graphics/Atlas;

    #@46
    iget-object v2, v1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    #@48
    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    #@4a
    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    #@4c
    iget v5, v1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    #@4e
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    #@51
    .line 228
    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@53
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->-get2(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    #@56
    move-result-object v2

    #@57
    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    #@59
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AssetAtlasService$Renderer;->renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_0

    #@5f
    .line 229
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #@61
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->-get1(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@68
    .line 218
    .end local v0    # "atlas":Landroid/graphics/Atlas;
    :cond_0
    return-void
.end method
