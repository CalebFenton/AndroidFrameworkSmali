.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field final mForceDefaultOrientation:Z

.field final mInnerRect:Landroid/graphics/Rect;

.field final mOuterRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V
    .locals 12
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "outer"    # Landroid/graphics/Rect;
    .param p3, "inner"    # Landroid/graphics/Rect;
    .param p4, "layer"    # I
    .param p5, "layerStack"    # I
    .param p6, "forceDefaultOrientation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    new-instance v1, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    #@a
    .line 97
    const/16 v1, 0x9

    #@c
    new-array v1, v1, [F

    #@e
    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    #@10
    .line 98
    const/4 v1, 0x4

    #@11
    new-array v1, v1, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@13
    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@15
    .line 117
    const/4 v10, 0x0

    #@16
    .line 119
    .local v10, "success":Z
    move/from16 v0, p6

    #@18
    iput-boolean v0, p0, Lcom/android/server/wm/BlackFrame;->mForceDefaultOrientation:Z

    #@1a
    .line 121
    new-instance v1, Landroid/graphics/Rect;

    #@1c
    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@1f
    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    #@21
    .line 122
    new-instance v1, Landroid/graphics/Rect;

    #@23
    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@26
    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    #@28
    .line 124
    :try_start_0
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@2a
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@2c
    if-ge v1, v2, :cond_0

    #@2e
    .line 125
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@30
    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@32
    .line 126
    iget v5, p2, Landroid/graphics/Rect;->left:I

    #@34
    iget v6, p2, Landroid/graphics/Rect;->top:I

    #@36
    iget v7, p3, Landroid/graphics/Rect;->right:I

    #@38
    iget v8, p3, Landroid/graphics/Rect;->top:I

    #@3a
    move-object v2, p0

    #@3b
    move-object v3, p1

    #@3c
    move/from16 v4, p4

    #@3e
    move/from16 v9, p5

    #@40
    .line 125
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    #@43
    const/4 v2, 0x0

    #@44
    aput-object v1, v11, v2

    #@46
    .line 128
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@48
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@4a
    if-ge v1, v2, :cond_1

    #@4c
    .line 129
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@4e
    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@50
    .line 130
    iget v5, p2, Landroid/graphics/Rect;->left:I

    #@52
    iget v6, p3, Landroid/graphics/Rect;->top:I

    #@54
    iget v7, p3, Landroid/graphics/Rect;->left:I

    #@56
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    #@58
    move-object v2, p0

    #@59
    move-object v3, p1

    #@5a
    move/from16 v4, p4

    #@5c
    move/from16 v9, p5

    #@5e
    .line 129
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    #@61
    const/4 v2, 0x1

    #@62
    aput-object v1, v11, v2

    #@64
    .line 132
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@66
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@68
    if-le v1, v2, :cond_2

    #@6a
    .line 133
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@6c
    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@6e
    .line 134
    iget v5, p3, Landroid/graphics/Rect;->left:I

    #@70
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    #@72
    iget v7, p2, Landroid/graphics/Rect;->right:I

    #@74
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    #@76
    move-object v2, p0

    #@77
    move-object v3, p1

    #@78
    move/from16 v4, p4

    #@7a
    move/from16 v9, p5

    #@7c
    .line 133
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    #@7f
    const/4 v2, 0x2

    #@80
    aput-object v1, v11, v2

    #@82
    .line 136
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@84
    iget v2, p3, Landroid/graphics/Rect;->right:I

    #@86
    if-le v1, v2, :cond_3

    #@88
    .line 137
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@8a
    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@8c
    .line 138
    iget v5, p3, Landroid/graphics/Rect;->right:I

    #@8e
    iget v6, p2, Landroid/graphics/Rect;->top:I

    #@90
    iget v7, p2, Landroid/graphics/Rect;->right:I

    #@92
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    #@94
    move-object v2, p0

    #@95
    move-object v3, p1

    #@96
    move/from16 v4, p4

    #@98
    move/from16 v9, p5

    #@9a
    .line 137
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    #@9d
    const/4 v2, 0x3

    #@9e
    aput-object v1, v11, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a0
    .line 140
    :cond_3
    const/4 v10, 0x1

    #@a1
    .line 142
    if-nez v10, :cond_4

    #@a3
    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    #@a6
    .line 116
    :cond_4
    return-void

    #@a7
    .line 141
    :catchall_0
    move-exception v1

    #@a8
    .line 142
    if-nez v10, :cond_5

    #@aa
    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    #@ad
    .line 141
    :cond_5
    throw v1
.end method


# virtual methods
.method public clearMatrix()V
    .locals 2

    #@0
    .prologue
    .line 190
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 191
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@8
    aget-object v1, v1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 192
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {v1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->clearMatrix()V

    #@13
    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 189
    :cond_1
    return-void
.end method

.method public hide()V
    .locals 2

    #@0
    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 165
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 166
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@c
    aget-object v1, v1, v0

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 167
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@12
    aget-object v1, v1, v0

    #@14
    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@16
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    #@19
    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 163
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public kill()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 149
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 150
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 151
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@d
    aget-object v1, v1, v0

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 156
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@13
    aget-object v1, v1, v0

    #@15
    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@17
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    #@1a
    .line 157
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@1c
    aput-object v2, v1, v0

    #@1e
    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 148
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v2, "Outer: "

    #@6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@e
    .line 104
    const-string/jumbo v2, " / Inner: "

    #@11
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@19
    .line 105
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1c
    .line 106
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@1f
    array-length v2, v2

    #@20
    if-ge v1, v2, :cond_0

    #@22
    .line 107
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@24
    aget-object v0, v2, v1

    #@26
    .line 108
    .local v0, "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    const-string/jumbo v2, "#"

    #@2c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 109
    const-string/jumbo v2, ": "

    #@35
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    iget-object v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    #@3a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@3d
    .line 110
    const-string/jumbo v2, " left="

    #@40
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    #@45
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    #@48
    .line 111
    const-string/jumbo v2, " top="

    #@4b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    #@50
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    #@53
    .line 106
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_0

    #@56
    .line 102
    .end local v0    # "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 175
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@8
    aget-object v1, v1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 176
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setAlpha(F)V

    #@13
    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 173
    :cond_1
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 183
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@8
    aget-object v1, v1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 184
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setMatrix(Landroid/graphics/Matrix;)V

    #@13
    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 181
    :cond_1
    return-void
.end method
