.class public final Landroid/opengl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getEGLErrorString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    #@0
    .prologue
    .line 228
    packed-switch p0, :pswitch_data_0

    #@3
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "0x"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 230
    :pswitch_0
    const-string/jumbo v0, "EGL_SUCCESS"

    #@1f
    return-object v0

    #@20
    .line 232
    :pswitch_1
    const-string/jumbo v0, "EGL_NOT_INITIALIZED"

    #@23
    return-object v0

    #@24
    .line 234
    :pswitch_2
    const-string/jumbo v0, "EGL_BAD_ACCESS"

    #@27
    return-object v0

    #@28
    .line 236
    :pswitch_3
    const-string/jumbo v0, "EGL_BAD_ALLOC"

    #@2b
    return-object v0

    #@2c
    .line 238
    :pswitch_4
    const-string/jumbo v0, "EGL_BAD_ATTRIBUTE"

    #@2f
    return-object v0

    #@30
    .line 240
    :pswitch_5
    const-string/jumbo v0, "EGL_BAD_CONFIG"

    #@33
    return-object v0

    #@34
    .line 242
    :pswitch_6
    const-string/jumbo v0, "EGL_BAD_CONTEXT"

    #@37
    return-object v0

    #@38
    .line 244
    :pswitch_7
    const-string/jumbo v0, "EGL_BAD_CURRENT_SURFACE"

    #@3b
    return-object v0

    #@3c
    .line 246
    :pswitch_8
    const-string/jumbo v0, "EGL_BAD_DISPLAY"

    #@3f
    return-object v0

    #@40
    .line 248
    :pswitch_9
    const-string/jumbo v0, "EGL_BAD_MATCH"

    #@43
    return-object v0

    #@44
    .line 250
    :pswitch_a
    const-string/jumbo v0, "EGL_BAD_NATIVE_PIXMAP"

    #@47
    return-object v0

    #@48
    .line 252
    :pswitch_b
    const-string/jumbo v0, "EGL_BAD_NATIVE_WINDOW"

    #@4b
    return-object v0

    #@4c
    .line 254
    :pswitch_c
    const-string/jumbo v0, "EGL_BAD_PARAMETER"

    #@4f
    return-object v0

    #@50
    .line 256
    :pswitch_d
    const-string/jumbo v0, "EGL_BAD_SURFACE"

    #@53
    return-object v0

    #@54
    .line 258
    :pswitch_e
    const-string/jumbo v0, "EGL_CONTEXT_LOST"

    #@57
    return-object v0

    #@58
    .line 228
    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getInternalFormat(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 41
    if-nez p0, :cond_0

    #@2
    .line 42
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "getInternalFormat can\'t be used with a null Bitmap"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "bitmap is recycled"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 47
    :cond_1
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getInternalFormat(Landroid/graphics/Bitmap;)I

    #@1d
    move-result v0

    #@1e
    .line 48
    .local v0, "result":I
    if-gez v0, :cond_2

    #@20
    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v2, "Unknown internalformat"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 51
    :cond_2
    return v0
.end method

.method public static getType(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 63
    if-nez p0, :cond_0

    #@2
    .line 64
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "getType can\'t be used with a null Bitmap"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "bitmap is recycled"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 69
    :cond_1
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getType(Landroid/graphics/Bitmap;)I

    #@1d
    move-result v0

    #@1e
    .line 70
    .local v0, "result":I
    if-gez v0, :cond_2

    #@20
    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v2, "Unknown type"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 73
    :cond_2
    return v0
.end method

.method private static native native_getInternalFormat(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_getType(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_texImage2D(IIILandroid/graphics/Bitmap;II)I
.end method

.method private static native native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I
.end method

.method public static native setTracingLevel(I)V
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;I)V
    .locals 6
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "internalformat"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "border"    # I

    #@0
    .prologue
    .line 100
    if-nez p3, :cond_0

    #@2
    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 103
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bitmap is recycled"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 106
    :cond_1
    const/4 v4, -0x1

    #@1b
    move v0, p0

    #@1c
    move v1, p1

    #@1d
    move v2, p2

    #@1e
    move-object v3, p3

    #@1f
    move v5, p4

    #@20
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string/jumbo v1, "invalid Bitmap format"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 99
    :cond_2
    return-void
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "internalformat"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "type"    # I
    .param p5, "border"    # I

    #@0
    .prologue
    .line 126
    if-nez p3, :cond_0

    #@2
    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 129
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bitmap is recycled"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 132
    :cond_1
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "invalid Bitmap format"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 125
    :cond_2
    return-void
.end method

.method public static texImage2D(IILandroid/graphics/Bitmap;I)V
    .locals 6
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "border"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 148
    if-nez p2, :cond_0

    #@3
    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 151
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "bitmap is recycled"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1
    move v0, p0

    #@1c
    move v1, p1

    #@1d
    move-object v3, p2

    #@1e
    move v4, v2

    #@1f
    move v5, p3

    #@20
    .line 154
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string/jumbo v1, "invalid Bitmap format"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 147
    :cond_2
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "xoffset"    # I
    .param p3, "yoffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 183
    if-nez p4, :cond_0

    #@2
    .line 184
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 186
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bitmap is recycled"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 189
    :cond_1
    invoke-static {p4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    #@1d
    move-result v6

    #@1e
    .line 190
    .local v6, "type":I
    const/4 v5, -0x1

    #@1f
    move v0, p0

    #@20
    move v1, p1

    #@21
    move v2, p2

    #@22
    move v3, p3

    #@23
    move-object v4, p4

    #@24
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v1, "invalid Bitmap format"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 182
    :cond_2
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "xoffset"    # I
    .param p3, "yoffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "format"    # I
    .param p6, "type"    # I

    #@0
    .prologue
    .line 208
    if-nez p4, :cond_0

    #@2
    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 211
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bitmap is recycled"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 214
    :cond_1
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "invalid Bitmap format"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 207
    :cond_2
    return-void
.end method
