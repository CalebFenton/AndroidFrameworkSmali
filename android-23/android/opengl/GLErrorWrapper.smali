.class Landroid/opengl/GLErrorWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLErrorWrapper.java"


# instance fields
.field mCheckError:Z

.field mCheckThread:Z

.field mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;I)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "configFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 39
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    #@5
    .line 40
    and-int/lit8 v0, p2, 0x1

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    #@c
    .line 41
    and-int/lit8 v0, p2, 0x2

    #@e
    if-eqz v0, :cond_1

    #@10
    :goto_1
    iput-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    #@12
    .line 38
    return-void

    #@13
    :cond_0
    move v0, v2

    #@14
    .line 40
    goto :goto_0

    #@15
    :cond_1
    move v1, v2

    #@16
    .line 41
    goto :goto_1
.end method

.method private checkError()V
    .locals 2

    #@0
    .prologue
    .line 59
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 61
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@6
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    #@9
    move-result v0

    #@a
    .local v0, "glError":I
    if-eqz v0, :cond_0

    #@c
    .line 62
    new-instance v1, Landroid/opengl/GLException;

    #@e
    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    #@11
    throw v1

    #@12
    .line 58
    .end local v0    # "glError":I
    :cond_0
    return-void
.end method

.method private checkThread()V
    .locals 4

    #@0
    .prologue
    .line 45
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v0

    #@8
    .line 47
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 48
    iput-object v0, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    #@e
    .line 44
    .end local v0    # "currentThread":Ljava/lang/Thread;
    :cond_0
    return-void

    #@f
    .line 50
    .restart local v0    # "currentThread":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 51
    new-instance v1, Landroid/opengl/GLException;

    #@19
    .line 52
    const-string/jumbo v2, "OpenGL method called from wrong thread."

    #@1c
    .line 51
    const/16 v3, 0x7000

    #@1e
    invoke-direct {v1, v3, v2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    #@21
    throw v1
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 72
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    #@8
    .line 73
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 70
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # F

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 78
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    #@8
    .line 79
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 76
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 84
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    #@8
    .line 85
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 82
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    #@0
    .prologue
    .line 963
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 964
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    #@8
    .line 965
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 962
    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    #@0
    .prologue
    .line 1382
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1383
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    #@8
    .line 1384
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1381
    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    #@0
    .prologue
    .line 1389
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1390
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    #@8
    .line 1391
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1388
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "texture"    # I

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 90
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    #@8
    .line 91
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 88
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1396
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1397
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquation(I)V

    #@8
    .line 1398
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1395
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    #@0
    .prologue
    .line 1403
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1404
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquationSeparate(II)V

    #@8
    .line 1405
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1402
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 96
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    #@8
    .line 97
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 94
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    #@0
    .prologue
    .line 1411
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1412
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendFuncSeparate(IIII)V

    #@8
    .line 1413
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1410
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    #@0
    .prologue
    .line 969
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 970
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    #@8
    .line 971
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 968
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 975
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 976
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    #@8
    .line 977
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 974
    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 2
    .param p1, "target"    # I

    #@0
    .prologue
    .line 1418
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1419
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    #@8
    move-result v0

    #@9
    .line 1420
    .local v0, "result":I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 1421
    return v0
.end method

.method public glClear(I)V
    .locals 1
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 102
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    #@8
    .line 103
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 100
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 108
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    #@8
    .line 109
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 106
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 114
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    #@8
    .line 115
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 112
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 120
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    #@8
    .line 121
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 118
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 126
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    #@8
    .line 127
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 124
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 132
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    #@8
    .line 133
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 130
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 138
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    #@8
    .line 139
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 136
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 853
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 854
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    #@8
    .line 855
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 852
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 847
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 848
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    #@8
    .line 849
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 846
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 865
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 866
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    #@8
    .line 867
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 864
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 859
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 860
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    #@8
    .line 861
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 858
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 144
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    #@8
    .line 145
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 142
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B
    .param p4, "alpha"    # B

    #@0
    .prologue
    .line 981
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 982
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    #@8
    .line 983
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 980
    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 150
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    #@8
    .line 151
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 148
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 157
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    #@8
    .line 158
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 155
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 986
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 987
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    #@8
    .line 988
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 985
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 163
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    #@8
    .line 164
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 161
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 171
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    move/from16 v7, p7

    #@d
    move-object/from16 v8, p8

    #@f
    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    #@12
    .line 173
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@15
    .line 169
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 180
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move/from16 v6, p6

    #@c
    move/from16 v7, p7

    #@e
    move/from16 v8, p8

    #@10
    move-object/from16 v9, p9

    #@12
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    #@15
    .line 182
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@18
    .line 178
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 188
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    move/from16 v7, p7

    #@d
    move/from16 v8, p8

    #@f
    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    #@12
    .line 190
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@15
    .line 186
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 196
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    move/from16 v7, p7

    #@d
    move/from16 v8, p8

    #@f
    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    #@12
    .line 198
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@15
    .line 194
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 203
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    #@8
    .line 204
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 201
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .param p1, "matrixpaletteindex"    # I

    #@0
    .prologue
    .line 1342
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1343
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    #@8
    .line 1344
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1341
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 998
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 999
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    #@8
    .line 1000
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 997
    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 992
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 993
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    #@8
    .line 994
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 991
    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1433
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1434
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    #@8
    .line 1435
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1432
    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1426
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1427
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    #@8
    .line 1428
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1425
    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1447
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1448
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    #@8
    .line 1449
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1446
    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1440
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1441
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(I[II)V

    #@8
    .line 1442
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1439
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 215
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    #@8
    .line 216
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 213
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 209
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    #@8
    .line 210
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 207
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    #@0
    .prologue
    .line 220
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 221
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    #@8
    .line 222
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 219
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 226
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 227
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    #@8
    .line 228
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 225
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "near"    # F
    .param p2, "far"    # F

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 233
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    #@8
    .line 234
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 231
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .param p1, "near"    # I
    .param p2, "far"    # I

    #@0
    .prologue
    .line 238
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 239
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    #@8
    .line 240
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 237
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .param p1, "cap"    # I

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 245
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    #@8
    .line 246
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 243
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1
    .param p1, "array"    # I

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 251
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    #@8
    .line 252
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 249
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 257
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    #@8
    .line 258
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 255
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1004
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1005
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    #@8
    .line 1006
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1003
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 262
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 263
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    #@8
    .line 264
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 261
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    #@0
    .prologue
    .line 874
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 875
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    #@d
    .line 876
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 873
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 886
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 887
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    #@8
    .line 888
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 885
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1
    .param p1, "coords"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 880
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 881
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    #@8
    .line 882
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 879
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    .line 892
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 893
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    #@d
    .line 894
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 891
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 904
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 905
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    #@8
    .line 906
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 903
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 898
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 899
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    #@8
    .line 900
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 897
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "width"    # S
    .param p5, "height"    # S

    #@0
    .prologue
    .line 911
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 912
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    #@d
    .line 913
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 910
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 923
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 924
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    #@8
    .line 925
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 922
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1
    .param p1, "coords"    # [S
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 917
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 918
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    #@8
    .line 919
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 916
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    .line 929
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 930
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    #@d
    .line 931
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 928
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 941
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 942
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    #@8
    .line 943
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 940
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 935
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 936
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    #@8
    .line 937
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 934
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .param p1, "cap"    # I

    #@0
    .prologue
    .line 268
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 269
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    #@8
    .line 270
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 267
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1
    .param p1, "array"    # I

    #@0
    .prologue
    .line 274
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 275
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    #@8
    .line 276
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 273
    return-void
.end method

.method public glFinish()V
    .locals 1

    #@0
    .prologue
    .line 280
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 281
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    #@8
    .line 282
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 279
    return-void
.end method

.method public glFlush()V
    .locals 1

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 287
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    #@8
    .line 288
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 285
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 293
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    #@8
    .line 294
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 291
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 305
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    #@8
    .line 306
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 303
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 298
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 299
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    #@8
    .line 300
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 297
    return-void
.end method

.method public glFogx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 310
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 311
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    #@8
    .line 312
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 309
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 322
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 323
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    #@8
    .line 324
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 321
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 316
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 317
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    #@8
    .line 318
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 315
    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    #@0
    .prologue
    .line 1455
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1456
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    #@8
    .line 1457
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1454
    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "textarget"    # I
    .param p4, "texture"    # I
    .param p5, "level"    # I

    #@0
    .prologue
    .line 1463
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1464
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    #@d
    .line 1465
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 1462
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 328
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 329
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    #@8
    .line 330
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 327
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    #@0
    .prologue
    .line 335
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 336
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    #@e
    .line 337
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@11
    .line 334
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    #@0
    .prologue
    .line 342
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 343
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    #@e
    .line 344
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@11
    .line 341
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1016
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1017
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    #@8
    .line 1018
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1015
    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1010
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1011
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    #@8
    .line 1012
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1009
    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1484
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1485
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    #@8
    .line 1486
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1483
    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1477
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1478
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    #@8
    .line 1479
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1476
    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1498
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1499
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    #@8
    .line 1500
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1497
    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1491
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1492
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    #@8
    .line 1493
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1490
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 354
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 355
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    #@8
    .line 356
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 353
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 348
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 349
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    #@8
    .line 350
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 347
    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .locals 1
    .param p1, "target"    # I

    #@0
    .prologue
    .line 1470
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1471
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    #@8
    .line 1472
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1469
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1029
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    #@8
    .line 1030
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1027
    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [Z
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1022
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1023
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    #@8
    .line 1024
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1021
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1041
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1042
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1043
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1040
    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1035
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1036
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    #@8
    .line 1037
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1034
    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1053
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1054
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    #@8
    .line 1055
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1052
    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1047
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1048
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    #@8
    .line 1049
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1046
    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1065
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1066
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    #@8
    .line 1067
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1064
    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1059
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1060
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    #@8
    .line 1061
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1058
    return-void
.end method

.method public glGetError()I
    .locals 2

    #@0
    .prologue
    .line 360
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 361
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    #@8
    move-result v0

    #@9
    .line 362
    .local v0, "result":I
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1077
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1078
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    #@8
    .line 1079
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1076
    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1071
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1072
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    #@8
    .line 1073
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1070
    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1089
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1090
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    #@8
    .line 1091
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1088
    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1083
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1084
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    #@8
    .line 1085
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1082
    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1514
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1515
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    #@8
    .line 1516
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1513
    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # [I
    .param p5, "offset"    # I

    #@0
    .prologue
    .line 1506
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1507
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(III[II)V

    #@d
    .line 1508
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 1505
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 372
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 373
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    #@8
    .line 374
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 371
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 367
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    #@8
    .line 368
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 365
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1102
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 1103
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1100
    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1095
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1096
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    #@8
    .line 1097
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1094
    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1113
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1114
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1115
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1112
    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1107
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1108
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    #@8
    .line 1109
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1106
    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1125
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1126
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 1127
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1124
    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1119
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1120
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    #@8
    .line 1121
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1118
    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1137
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1138
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1139
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1136
    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1131
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1132
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    #@8
    .line 1133
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1130
    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1143
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1144
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    #@8
    .line 1145
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1142
    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1530
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1531
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    #@8
    .line 1532
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1529
    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1522
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1523
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(II[II)V

    #@8
    .line 1524
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1521
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # I

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 379
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 380
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 381
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1155
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1156
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1157
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1154
    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1149
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1150
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    #@8
    .line 1151
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1148
    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1167
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1168
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1169
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1166
    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1161
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1162
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(II[II)V

    #@8
    .line 1163
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1160
    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1544
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1545
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 1546
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1543
    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1537
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1538
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(II[FI)V

    #@8
    .line 1539
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1536
    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1558
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1559
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1560
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1557
    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1551
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1552
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(II[II)V

    #@8
    .line 1553
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1550
    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1572
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1573
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1574
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1571
    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1565
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1566
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(II[II)V

    #@8
    .line 1567
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1564
    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1180
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1181
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 1182
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1179
    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1174
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1175
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    #@8
    .line 1176
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1173
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1193
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1194
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1195
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1192
    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1187
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1188
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(II[II)V

    #@8
    .line 1189
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1186
    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1206
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1207
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1208
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1205
    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1200
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1201
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    #@8
    .line 1202
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1199
    return-void
.end method

.method public glHint(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 386
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    #@8
    .line 387
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 384
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 2
    .param p1, "buffer"    # I

    #@0
    .prologue
    .line 1212
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1213
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    #@8
    move-result v0

    #@9
    .line 1214
    .local v0, "valid":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 1215
    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 2
    .param p1, "cap"    # I

    #@0
    .prologue
    .line 1219
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1220
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    #@8
    move-result v0

    #@9
    .line 1221
    .local v0, "valid":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 1222
    return v0
.end method

.method public glIsFramebufferOES(I)Z
    .locals 2
    .param p1, "framebuffer"    # I

    #@0
    .prologue
    .line 1579
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1580
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsFramebufferOES(I)Z

    #@8
    move-result v0

    #@9
    .line 1581
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 1582
    return v0
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    #@0
    .prologue
    .line 1587
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1588
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsRenderbufferOES(I)Z

    #@8
    .line 1589
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1590
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public glIsTexture(I)Z
    .locals 2
    .param p1, "texture"    # I

    #@0
    .prologue
    .line 1226
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1227
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    #@8
    move-result v0

    #@9
    .line 1228
    .local v0, "valid":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 1229
    return v0
.end method

.method public glLightModelf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 392
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    #@8
    .line 393
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 390
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 403
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 404
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    #@8
    .line 405
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 402
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 398
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    #@8
    .line 399
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 396
    return-void
.end method

.method public glLightModelx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 409
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 410
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    #@8
    .line 411
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 408
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 421
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 422
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    #@8
    .line 423
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 420
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 415
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 416
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    #@8
    .line 417
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 414
    return-void
.end method

.method public glLightf(IIF)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 427
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 428
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    #@8
    .line 429
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 426
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 439
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 440
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 441
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 438
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 433
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 434
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    #@8
    .line 435
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 432
    return-void
.end method

.method public glLightx(III)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 445
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 446
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    #@8
    .line 447
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 444
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 457
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 458
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 459
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 456
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 451
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 452
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    #@8
    .line 453
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 450
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    #@0
    .prologue
    .line 463
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 464
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    #@8
    .line 465
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 462
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .param p1, "width"    # I

    #@0
    .prologue
    .line 469
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 470
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    #@8
    .line 471
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 468
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    #@0
    .prologue
    .line 475
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 476
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    #@8
    .line 477
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 474
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 487
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 488
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    #@8
    .line 489
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 486
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 481
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 482
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    #@8
    .line 483
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 480
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 499
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 500
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    #@8
    .line 501
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 498
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 493
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 494
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    #@8
    .line 495
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 492
    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    #@0
    .prologue
    .line 1348
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1349
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    #@8
    .line 1350
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1347
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1
    .param p1, "opcode"    # I

    #@0
    .prologue
    .line 505
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 506
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    #@8
    .line 507
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 504
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 511
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 512
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    #@8
    .line 513
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 510
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 523
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 524
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 525
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 522
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 517
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 518
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    #@8
    .line 519
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 516
    return-void
.end method

.method public glMaterialx(III)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 529
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 530
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    #@8
    .line 531
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 528
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 541
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 542
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 543
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 540
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 535
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 536
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    #@8
    .line 537
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 534
    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1362
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1363
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    #@8
    .line 1364
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1361
    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1355
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1356
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    #@8
    .line 1357
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1354
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 547
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 548
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    #@8
    .line 549
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 546
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 559
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 560
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    #@8
    .line 561
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 558
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 553
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 554
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    #@8
    .line 555
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 552
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 571
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 572
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    #@8
    .line 573
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 570
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 565
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 566
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    #@8
    .line 567
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 564
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "q"    # F

    #@0
    .prologue
    .line 578
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 579
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    #@d
    .line 580
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 577
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "q"    # I

    #@0
    .prologue
    .line 584
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 585
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    #@d
    .line 586
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@10
    .line 583
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F

    #@0
    .prologue
    .line 590
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 591
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    #@8
    .line 592
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 589
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nz"    # I

    #@0
    .prologue
    .line 596
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 597
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    #@8
    .line 598
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 595
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1233
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1234
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    #@8
    .line 1235
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1232
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 603
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    #@8
    .line 604
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 601
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    #@0
    .prologue
    .line 609
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 610
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    #@e
    .line 611
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@11
    .line 608
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    #@0
    .prologue
    .line 616
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 617
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    #@e
    .line 618
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@11
    .line 615
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 622
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 623
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    #@8
    .line 624
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 621
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    #@0
    .prologue
    .line 1239
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1240
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    #@8
    .line 1241
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1238
    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1251
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1252
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    #@8
    .line 1253
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1250
    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1245
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1246
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    #@8
    .line 1247
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1244
    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 1257
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1258
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    #@8
    .line 1259
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1256
    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1269
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1270
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    #@8
    .line 1271
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1268
    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1263
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1264
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    #@8
    .line 1265
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1262
    return-void
.end method

.method public glPointSize(F)V
    .locals 1
    .param p1, "size"    # F

    #@0
    .prologue
    .line 628
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 629
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    #@8
    .line 630
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 627
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1275
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1276
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    #@8
    .line 1277
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1274
    return-void
.end method

.method public glPointSizex(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 634
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 635
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    #@8
    .line 636
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 633
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    #@0
    .prologue
    .line 640
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 641
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    #@8
    .line 642
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 639
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .param p1, "factor"    # I
    .param p2, "units"    # I

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 647
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    #@8
    .line 648
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 645
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    #@0
    .prologue
    .line 652
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 653
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    #@8
    .line 654
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 651
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    #@0
    .prologue
    .line 658
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 659
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    #@8
    .line 660
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 657
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 2
    .param p1, "mantissa"    # Ljava/nio/IntBuffer;
    .param p2, "exponent"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 956
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 957
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    #@5
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    #@8
    move-result v0

    #@9
    .line 958
    .local v0, "valid":I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 959
    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 2
    .param p1, "mantissa"    # [I
    .param p2, "mantissaOffset"    # I
    .param p3, "exponent"    # [I
    .param p4, "exponentOffset"    # I

    #@0
    .prologue
    .line 948
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 949
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    #@5
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    #@8
    move-result v0

    #@9
    .line 951
    .local v0, "valid":I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@c
    .line 952
    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 665
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 666
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    move-object v7, p7

    #@c
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    #@f
    .line 667
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@12
    .line 664
    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 1596
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1597
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    #@8
    .line 1598
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1595
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    .line 671
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 672
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    #@8
    .line 673
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 670
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    #@0
    .prologue
    .line 677
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 678
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    #@8
    .line 679
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 676
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    #@0
    .prologue
    .line 683
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 684
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    #@8
    .line 685
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 682
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "invert"    # Z

    #@0
    .prologue
    .line 689
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 690
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    #@8
    .line 691
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 688
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 695
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 696
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    #@8
    .line 697
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 694
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    #@0
    .prologue
    .line 701
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 702
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    #@8
    .line 703
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 700
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 707
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 708
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    #@8
    .line 709
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 706
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 713
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 714
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    #@8
    .line 715
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 712
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    #@0
    .prologue
    .line 719
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 720
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    #@8
    .line 721
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 718
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 725
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 726
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    #@8
    .line 727
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 724
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    #@0
    .prologue
    .line 731
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 732
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    #@8
    .line 733
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 730
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1281
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1282
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    #@8
    .line 1283
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1280
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 738
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 739
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    #@8
    .line 740
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 737
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 744
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 745
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    #@8
    .line 746
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 743
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 756
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 757
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 758
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 755
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 750
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 751
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    #@8
    .line 752
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 749
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 1287
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1288
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    #@8
    .line 1289
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1286
    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1299
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1300
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1301
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1298
    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1293
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1294
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    #@8
    .line 1295
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1292
    return-void
.end method

.method public glTexEnvx(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 762
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 763
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    #@8
    .line 764
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 761
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 774
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 775
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 776
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 773
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 768
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 769
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    #@8
    .line 770
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 767
    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 1603
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1604
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenf(IIF)V

    #@8
    .line 1605
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1602
    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1617
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1618
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 1619
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1616
    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1610
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1611
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(II[FI)V

    #@8
    .line 1612
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1609
    return-void
.end method

.method public glTexGeni(III)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 1624
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1625
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    #@8
    .line 1626
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1623
    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1638
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1639
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1640
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1637
    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1631
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1632
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(II[II)V

    #@8
    .line 1633
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1630
    return-void
.end method

.method public glTexGenx(III)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 1645
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1646
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenx(III)V

    #@8
    .line 1647
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1644
    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1659
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1660
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1661
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1658
    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1652
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1653
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(II[II)V

    #@8
    .line 1654
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1651
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 782
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 783
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move/from16 v6, p6

    #@c
    move/from16 v7, p7

    #@e
    move/from16 v8, p8

    #@10
    move-object/from16 v9, p9

    #@12
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    #@15
    .line 785
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@18
    .line 781
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 789
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 790
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    #@8
    .line 791
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 788
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1312
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1313
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    #@8
    .line 1314
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1311
    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1306
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1307
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    #@8
    .line 1308
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1305
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 1318
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1319
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    #@8
    .line 1320
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1317
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 807
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 808
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    #@8
    .line 809
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 806
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 801
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 802
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    #@8
    .line 803
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 800
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 795
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 796
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    #@8
    .line 797
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 794
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1330
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1331
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    #@8
    .line 1332
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1329
    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1324
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1325
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    #@8
    .line 1326
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1323
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 815
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 816
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move/from16 v6, p6

    #@c
    move/from16 v7, p7

    #@e
    move/from16 v8, p8

    #@10
    move-object/from16 v9, p9

    #@12
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    #@15
    .line 818
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@18
    .line 814
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 822
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 823
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    #@8
    .line 824
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 821
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    #@0
    .prologue
    .line 828
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 829
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    #@8
    .line 830
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 827
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1336
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1337
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    #@8
    .line 1338
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1335
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 835
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 836
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    #@8
    .line 837
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 834
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 841
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 842
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    #@8
    .line 843
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 840
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1375
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1376
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    #@8
    .line 1377
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1374
    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1369
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    #@3
    .line 1370
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@5
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    #@8
    .line 1371
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    #@b
    .line 1368
    return-void
.end method
