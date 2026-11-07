.class public Lcom/google/android/gles_jni/GLImpl;
.super Ljava/lang/Object;
.source "GLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;
.implements Ljavax/microedition/khronos/opengles/GL11ExtensionPack;


# instance fields
.field blacklist _colorPointer:Ljava/nio/Buffer;

.field blacklist _matrixIndexPointerOES:Ljava/nio/Buffer;

.field blacklist _normalPointer:Ljava/nio/Buffer;

.field blacklist _pointSizePointerOES:Ljava/nio/Buffer;

.field blacklist _texCoordPointer:Ljava/nio/Buffer;

.field blacklist _vertexPointer:Ljava/nio/Buffer;

.field blacklist _weightPointerOES:Ljava/nio/Buffer;

.field private blacklist haveCheckedExtensions:Z

.field private blacklist have_OES_blend_equation_separate:Z

.field private blacklist have_OES_blend_subtract:Z

.field private blacklist have_OES_framebuffer_object:Z

.field private blacklist have_OES_texture_cube_map:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/google/android/gles_jni/GLImpl;->_nativeClassInit()V

    .line 45
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_colorPointer:Ljava/nio/Buffer;

    .line 48
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_normalPointer:Ljava/nio/Buffer;

    .line 49
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_texCoordPointer:Ljava/nio/Buffer;

    .line 50
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_vertexPointer:Ljava/nio/Buffer;

    .line 51
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_pointSizePointerOES:Ljava/nio/Buffer;

    .line 52
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_matrixIndexPointerOES:Ljava/nio/Buffer;

    .line 53
    iput-object v0, p0, Lcom/google/android/gles_jni/GLImpl;->_weightPointerOES:Ljava/nio/Buffer;

    .line 63
    return-void
.end method

.method private static native blacklist _nativeClassInit()V
.end method

.method private static blacklist allowIndirectBuffers(Ljava/lang/String;)Z
    .registers 7
    .param p0, "appName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 72
    .local v1, "version":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 74
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, p0, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 75
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_15

    .line 76
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_16

    move v1, v4

    .line 80
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_15
    goto :goto_17

    .line 78
    :catch_16
    move-exception v3

    .line 81
    :goto_17
    nop

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 81
    const-string v4, "Application %s (SDK target %d) called a GL11 Pointer method with an indirect Buffer."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpenGLES"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2f

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_2f
    return v0
.end method

.method private native blacklist glColorPointerBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native blacklist glMatrixIndexPointerOESBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native blacklist glNormalPointerBounds(IILjava/nio/Buffer;I)V
.end method

.method private native blacklist glPointSizePointerOESBounds(IILjava/nio/Buffer;I)V
.end method

.method private native blacklist glTexCoordPointerBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native blacklist glVertexPointerBounds(IIILjava/nio/Buffer;I)V
.end method

.method private native blacklist glWeightPointerOESBounds(IIILjava/nio/Buffer;I)V
.end method


# virtual methods
.method public native blacklist _glGetString(I)Ljava/lang/String;
.end method

.method public native whitelist glActiveTexture(I)V
.end method

.method public native whitelist glAlphaFunc(IF)V
.end method

.method public native whitelist glAlphaFuncx(II)V
.end method

.method public native whitelist glBindBuffer(II)V
.end method

.method public native whitelist glBindFramebufferOES(II)V
.end method

.method public native whitelist glBindRenderbufferOES(II)V
.end method

.method public native whitelist glBindTexture(II)V
.end method

.method public native whitelist glBlendEquation(I)V
.end method

.method public native whitelist glBlendEquationSeparate(II)V
.end method

.method public native whitelist glBlendFunc(II)V
.end method

.method public native whitelist glBlendFuncSeparate(IIII)V
.end method

.method public native whitelist glBufferData(IILjava/nio/Buffer;I)V
.end method

.method public native whitelist glBufferSubData(IIILjava/nio/Buffer;)V
.end method

.method public native whitelist glCheckFramebufferStatusOES(I)I
.end method

.method public native whitelist glClear(I)V
.end method

.method public native whitelist glClearColor(FFFF)V
.end method

.method public native whitelist glClearColorx(IIII)V
.end method

.method public native whitelist glClearDepthf(F)V
.end method

.method public native whitelist glClearDepthx(I)V
.end method

.method public native whitelist glClearStencil(I)V
.end method

.method public native whitelist glClientActiveTexture(I)V
.end method

.method public native whitelist glClipPlanef(ILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glClipPlanef(I[FI)V
.end method

.method public native whitelist glClipPlanex(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glClipPlanex(I[II)V
.end method

.method public native whitelist glColor4f(FFFF)V
.end method

.method public native whitelist glColor4ub(BBBB)V
.end method

.method public native whitelist glColor4x(IIII)V
.end method

.method public native whitelist glColorMask(ZZZZ)V
.end method

.method public native whitelist glColorPointer(IIII)V
.end method

.method public whitelist glColorPointer(IIILjava/nio/Buffer;)V
    .registers 11
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .line 215
    nop

    .line 220
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 215
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "size":I
    .end local p2    # "type":I
    .end local p3    # "stride":I
    .end local p4    # "pointer":Ljava/nio/Buffer;
    .local v1, "size":I
    .local v2, "type":I
    .local v3, "stride":I
    .local v4, "pointer":Ljava/nio/Buffer;
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glColorPointerBounds(IIILjava/nio/Buffer;I)V

    .line 222
    const/4 p1, 0x4

    if-ne v1, p1, :cond_20

    const/16 p1, 0x1406

    if-eq v2, p1, :cond_1c

    const/16 p1, 0x1401

    if-eq v2, p1, :cond_1c

    const/16 p1, 0x140c

    if-ne v2, p1, :cond_20

    :cond_1c
    if-ltz v3, :cond_20

    .line 227
    iput-object v4, v0, Lcom/google/android/gles_jni/GLImpl;->_colorPointer:Ljava/nio/Buffer;

    .line 229
    :cond_20
    return-void
.end method

.method public native whitelist glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
.end method

.method public native whitelist glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native whitelist glCopyTexImage2D(IIIIIIII)V
.end method

.method public native whitelist glCopyTexSubImage2D(IIIIIIII)V
.end method

.method public native whitelist glCullFace(I)V
.end method

.method public native whitelist glCurrentPaletteMatrixOES(I)V
.end method

.method public native whitelist glDeleteBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glDeleteBuffers(I[II)V
.end method

.method public native whitelist glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glDeleteFramebuffersOES(I[II)V
.end method

.method public native whitelist glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glDeleteRenderbuffersOES(I[II)V
.end method

.method public native whitelist glDeleteTextures(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glDeleteTextures(I[II)V
.end method

.method public native whitelist glDepthFunc(I)V
.end method

.method public native whitelist glDepthMask(Z)V
.end method

.method public native whitelist glDepthRangef(FF)V
.end method

.method public native whitelist glDepthRangex(II)V
.end method

.method public native whitelist glDisable(I)V
.end method

.method public native whitelist glDisableClientState(I)V
.end method

.method public native whitelist glDrawArrays(III)V
.end method

.method public native whitelist glDrawElements(IIII)V
.end method

.method public native whitelist glDrawElements(IIILjava/nio/Buffer;)V
.end method

.method public native whitelist glDrawTexfOES(FFFFF)V
.end method

.method public native whitelist glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
.end method

.method public native whitelist glDrawTexfvOES([FI)V
.end method

.method public native whitelist glDrawTexiOES(IIIII)V
.end method

.method public native whitelist glDrawTexivOES(Ljava/nio/IntBuffer;)V
.end method

.method public native whitelist glDrawTexivOES([II)V
.end method

.method public native whitelist glDrawTexsOES(SSSSS)V
.end method

.method public native whitelist glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
.end method

.method public native whitelist glDrawTexsvOES([SI)V
.end method

.method public native whitelist glDrawTexxOES(IIIII)V
.end method

.method public native whitelist glDrawTexxvOES(Ljava/nio/IntBuffer;)V
.end method

.method public native whitelist glDrawTexxvOES([II)V
.end method

.method public native whitelist glEnable(I)V
.end method

.method public native whitelist glEnableClientState(I)V
.end method

.method public native whitelist glFinish()V
.end method

.method public native whitelist glFlush()V
.end method

.method public native whitelist glFogf(IF)V
.end method

.method public native whitelist glFogfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glFogfv(I[FI)V
.end method

.method public native whitelist glFogx(II)V
.end method

.method public native whitelist glFogxv(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glFogxv(I[II)V
.end method

.method public native whitelist glFramebufferRenderbufferOES(IIII)V
.end method

.method public native whitelist glFramebufferTexture2DOES(IIIII)V
.end method

.method public native whitelist glFrontFace(I)V
.end method

.method public native whitelist glFrustumf(FFFFFF)V
.end method

.method public native whitelist glFrustumx(IIIIII)V
.end method

.method public native whitelist glGenBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGenBuffers(I[II)V
.end method

.method public native whitelist glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGenFramebuffersOES(I[II)V
.end method

.method public native whitelist glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGenRenderbuffersOES(I[II)V
.end method

.method public native whitelist glGenTextures(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGenTextures(I[II)V
.end method

.method public native whitelist glGenerateMipmapOES(I)V
.end method

.method public native whitelist glGetBooleanv(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetBooleanv(I[ZI)V
.end method

.method public native whitelist glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetBufferParameteriv(II[II)V
.end method

.method public native whitelist glGetClipPlanef(ILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glGetClipPlanef(I[FI)V
.end method

.method public native whitelist glGetClipPlanex(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetClipPlanex(I[II)V
.end method

.method public native whitelist glGetError()I
.end method

.method public native whitelist glGetFixedv(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetFixedv(I[II)V
.end method

.method public native whitelist glGetFloatv(ILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glGetFloatv(I[FI)V
.end method

.method public native whitelist glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetFramebufferAttachmentParameterivOES(III[II)V
.end method

.method public native whitelist glGetIntegerv(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetIntegerv(I[II)V
.end method

.method public native whitelist glGetLightfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glGetLightfv(II[FI)V
.end method

.method public native whitelist glGetLightxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetLightxv(II[II)V
.end method

.method public native whitelist glGetMaterialfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glGetMaterialfv(II[FI)V
.end method

.method public native whitelist glGetMaterialxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetMaterialxv(II[II)V
.end method

.method public whitelist glGetPointerv(I[Ljava/nio/Buffer;)V
    .registers 5
    .param p1, "pname"    # I
    .param p2, "params"    # [Ljava/nio/Buffer;

    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "glGetPointerv"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetRenderbufferParameterivOES(II[II)V
.end method

.method public whitelist glGetString(I)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # I

    .line 499
    invoke-virtual {p0, p1}, Lcom/google/android/gles_jni/GLImpl;->_glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "returnValue":Ljava/lang/String;
    return-object v0
.end method

.method public native whitelist glGetTexEnviv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetTexEnviv(II[II)V
.end method

.method public native whitelist glGetTexEnvxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetTexEnvxv(II[II)V
.end method

.method public native whitelist glGetTexGenfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glGetTexGenfv(II[FI)V
.end method

.method public native whitelist glGetTexGeniv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetTexGeniv(II[II)V
.end method

.method public native whitelist glGetTexGenxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetTexGenxv(II[II)V
.end method

.method public native whitelist glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glGetTexParameterfv(II[FI)V
.end method

.method public native whitelist glGetTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetTexParameteriv(II[II)V
.end method

.method public native whitelist glGetTexParameterxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glGetTexParameterxv(II[II)V
.end method

.method public native whitelist glHint(II)V
.end method

.method public native whitelist glIsBuffer(I)Z
.end method

.method public native whitelist glIsEnabled(I)Z
.end method

.method public native whitelist glIsFramebufferOES(I)Z
.end method

.method public native whitelist glIsRenderbufferOES(I)Z
.end method

.method public native whitelist glIsTexture(I)Z
.end method

.method public native whitelist glLightModelf(IF)V
.end method

.method public native whitelist glLightModelfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glLightModelfv(I[FI)V
.end method

.method public native whitelist glLightModelx(II)V
.end method

.method public native whitelist glLightModelxv(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glLightModelxv(I[II)V
.end method

.method public native whitelist glLightf(IIF)V
.end method

.method public native whitelist glLightfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glLightfv(II[FI)V
.end method

.method public native whitelist glLightx(III)V
.end method

.method public native whitelist glLightxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glLightxv(II[II)V
.end method

.method public native whitelist glLineWidth(F)V
.end method

.method public native whitelist glLineWidthx(I)V
.end method

.method public native whitelist glLoadIdentity()V
.end method

.method public native whitelist glLoadMatrixf(Ljava/nio/FloatBuffer;)V
.end method

.method public native whitelist glLoadMatrixf([FI)V
.end method

.method public native whitelist glLoadMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public native whitelist glLoadMatrixx([II)V
.end method

.method public native whitelist glLoadPaletteFromModelViewMatrixOES()V
.end method

.method public native whitelist glLogicOp(I)V
.end method

.method public native whitelist glMaterialf(IIF)V
.end method

.method public native whitelist glMaterialfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glMaterialfv(II[FI)V
.end method

.method public native whitelist glMaterialx(III)V
.end method

.method public native whitelist glMaterialxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glMaterialxv(II[II)V
.end method

.method public native whitelist glMatrixIndexPointerOES(IIII)V
.end method

.method public whitelist glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .registers 11
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .line 1844
    nop

    .line 1849
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 1844
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "size":I
    .end local p2    # "type":I
    .end local p3    # "stride":I
    .end local p4    # "pointer":Ljava/nio/Buffer;
    .local v1, "size":I
    .local v2, "type":I
    .local v3, "stride":I
    .local v4, "pointer":Ljava/nio/Buffer;
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glMatrixIndexPointerOESBounds(IIILjava/nio/Buffer;I)V

    .line 1851
    const/4 p1, 0x2

    if-eq v1, p1, :cond_16

    const/4 p1, 0x3

    if-eq v1, p1, :cond_16

    const/4 p1, 0x4

    if-ne v1, p1, :cond_2a

    :cond_16
    const/16 p1, 0x1406

    if-eq v2, p1, :cond_26

    const/16 p1, 0x1400

    if-eq v2, p1, :cond_26

    const/16 p1, 0x1402

    if-eq v2, p1, :cond_26

    const/16 p1, 0x140c

    if-ne v2, p1, :cond_2a

    :cond_26
    if-ltz v3, :cond_2a

    .line 1859
    iput-object v4, v0, Lcom/google/android/gles_jni/GLImpl;->_matrixIndexPointerOES:Ljava/nio/Buffer;

    .line 1861
    :cond_2a
    return-void
.end method

.method public native whitelist glMatrixMode(I)V
.end method

.method public native whitelist glMultMatrixf(Ljava/nio/FloatBuffer;)V
.end method

.method public native whitelist glMultMatrixf([FI)V
.end method

.method public native whitelist glMultMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public native whitelist glMultMatrixx([II)V
.end method

.method public native whitelist glMultiTexCoord4f(IFFFF)V
.end method

.method public native whitelist glMultiTexCoord4x(IIIII)V
.end method

.method public native whitelist glNormal3f(FFF)V
.end method

.method public native whitelist glNormal3x(III)V
.end method

.method public native whitelist glNormalPointer(III)V
.end method

.method public whitelist glNormalPointer(IILjava/nio/Buffer;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .line 787
    nop

    .line 791
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 787
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gles_jni/GLImpl;->glNormalPointerBounds(IILjava/nio/Buffer;I)V

    .line 793
    const/16 v0, 0x1406

    if-eq p1, v0, :cond_18

    const/16 v0, 0x1400

    if-eq p1, v0, :cond_18

    const/16 v0, 0x1402

    if-eq p1, v0, :cond_18

    const/16 v0, 0x140c

    if-ne p1, v0, :cond_1c

    :cond_18
    if-ltz p2, :cond_1c

    .line 798
    iput-object p3, p0, Lcom/google/android/gles_jni/GLImpl;->_normalPointer:Ljava/nio/Buffer;

    .line 800
    :cond_1c
    return-void
.end method

.method public native whitelist glOrthof(FFFFFF)V
.end method

.method public native whitelist glOrthox(IIIIII)V
.end method

.method public native whitelist glPixelStorei(II)V
.end method

.method public native whitelist glPointParameterf(IF)V
.end method

.method public native whitelist glPointParameterfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glPointParameterfv(I[FI)V
.end method

.method public native whitelist glPointParameterx(II)V
.end method

.method public native whitelist glPointParameterxv(ILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glPointParameterxv(I[II)V
.end method

.method public native whitelist glPointSize(F)V
.end method

.method public whitelist glPointSizePointerOES(IILjava/nio/Buffer;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .line 1610
    nop

    .line 1614
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 1610
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gles_jni/GLImpl;->glPointSizePointerOESBounds(IILjava/nio/Buffer;I)V

    .line 1616
    const/16 v0, 0x1406

    if-eq p1, v0, :cond_10

    const/16 v0, 0x140c

    if-ne p1, v0, :cond_14

    :cond_10
    if-ltz p2, :cond_14

    .line 1619
    iput-object p3, p0, Lcom/google/android/gles_jni/GLImpl;->_pointSizePointerOES:Ljava/nio/Buffer;

    .line 1621
    :cond_14
    return-void
.end method

.method public native whitelist glPointSizex(I)V
.end method

.method public native whitelist glPolygonOffset(FF)V
.end method

.method public native whitelist glPolygonOffsetx(II)V
.end method

.method public native whitelist glPopMatrix()V
.end method

.method public native whitelist glPushMatrix()V
.end method

.method public native whitelist glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
.end method

.method public native whitelist glQueryMatrixxOES([II[II)I
.end method

.method public native whitelist glReadPixels(IIIIIILjava/nio/Buffer;)V
.end method

.method public native whitelist glRenderbufferStorageOES(IIII)V
.end method

.method public native whitelist glRotatef(FFFF)V
.end method

.method public native whitelist glRotatex(IIII)V
.end method

.method public native whitelist glSampleCoverage(FZ)V
.end method

.method public native whitelist glSampleCoveragex(IZ)V
.end method

.method public native whitelist glScalef(FFF)V
.end method

.method public native whitelist glScalex(III)V
.end method

.method public native whitelist glScissor(IIII)V
.end method

.method public native whitelist glShadeModel(I)V
.end method

.method public native whitelist glStencilFunc(III)V
.end method

.method public native whitelist glStencilMask(I)V
.end method

.method public native whitelist glStencilOp(III)V
.end method

.method public native whitelist glTexCoordPointer(IIII)V
.end method

.method public whitelist glTexCoordPointer(IIILjava/nio/Buffer;)V
    .registers 11
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .line 980
    nop

    .line 985
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 980
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "size":I
    .end local p2    # "type":I
    .end local p3    # "stride":I
    .end local p4    # "pointer":Ljava/nio/Buffer;
    .local v1, "size":I
    .local v2, "type":I
    .local v3, "stride":I
    .local v4, "pointer":Ljava/nio/Buffer;
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glTexCoordPointerBounds(IIILjava/nio/Buffer;I)V

    .line 987
    const/4 p1, 0x2

    if-eq v1, p1, :cond_16

    const/4 p1, 0x3

    if-eq v1, p1, :cond_16

    const/4 p1, 0x4

    if-ne v1, p1, :cond_2a

    :cond_16
    const/16 p1, 0x1406

    if-eq v2, p1, :cond_26

    const/16 p1, 0x1400

    if-eq v2, p1, :cond_26

    const/16 p1, 0x1402

    if-eq v2, p1, :cond_26

    const/16 p1, 0x140c

    if-ne v2, p1, :cond_2a

    :cond_26
    if-ltz v3, :cond_2a

    .line 995
    iput-object v4, v0, Lcom/google/android/gles_jni/GLImpl;->_texCoordPointer:Ljava/nio/Buffer;

    .line 997
    :cond_2a
    return-void
.end method

.method public native whitelist glTexEnvf(IIF)V
.end method

.method public native whitelist glTexEnvfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glTexEnvfv(II[FI)V
.end method

.method public native whitelist glTexEnvi(III)V
.end method

.method public native whitelist glTexEnviv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glTexEnviv(II[II)V
.end method

.method public native whitelist glTexEnvx(III)V
.end method

.method public native whitelist glTexEnvxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glTexEnvxv(II[II)V
.end method

.method public native whitelist glTexGenf(IIF)V
.end method

.method public native whitelist glTexGenfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glTexGenfv(II[FI)V
.end method

.method public native whitelist glTexGeni(III)V
.end method

.method public native whitelist glTexGeniv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glTexGeniv(II[II)V
.end method

.method public native whitelist glTexGenx(III)V
.end method

.method public native whitelist glTexGenxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glTexGenxv(II[II)V
.end method

.method public native whitelist glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native whitelist glTexParameterf(IIF)V
.end method

.method public native whitelist glTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native whitelist glTexParameterfv(II[FI)V
.end method

.method public native whitelist glTexParameteri(III)V
.end method

.method public native whitelist glTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glTexParameteriv(II[II)V
.end method

.method public native whitelist glTexParameterx(III)V
.end method

.method public native whitelist glTexParameterxv(IILjava/nio/IntBuffer;)V
.end method

.method public native whitelist glTexParameterxv(II[II)V
.end method

.method public native whitelist glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native whitelist glTranslatef(FFF)V
.end method

.method public native whitelist glTranslatex(III)V
.end method

.method public native whitelist glVertexPointer(IIII)V
.end method

.method public whitelist glVertexPointer(IIILjava/nio/Buffer;)V
    .registers 11
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .line 1125
    nop

    .line 1130
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 1125
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "size":I
    .end local p2    # "type":I
    .end local p3    # "stride":I
    .end local p4    # "pointer":Ljava/nio/Buffer;
    .local v1, "size":I
    .local v2, "type":I
    .local v3, "stride":I
    .local v4, "pointer":Ljava/nio/Buffer;
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glVertexPointerBounds(IIILjava/nio/Buffer;I)V

    .line 1132
    const/4 p1, 0x2

    if-eq v1, p1, :cond_16

    const/4 p1, 0x3

    if-eq v1, p1, :cond_16

    const/4 p1, 0x4

    if-ne v1, p1, :cond_2a

    :cond_16
    const/16 p1, 0x1406

    if-eq v2, p1, :cond_26

    const/16 p1, 0x1400

    if-eq v2, p1, :cond_26

    const/16 p1, 0x1402

    if-eq v2, p1, :cond_26

    const/16 p1, 0x140c

    if-ne v2, p1, :cond_2a

    :cond_26
    if-ltz v3, :cond_2a

    .line 1140
    iput-object v4, v0, Lcom/google/android/gles_jni/GLImpl;->_vertexPointer:Ljava/nio/Buffer;

    .line 1142
    :cond_2a
    return-void
.end method

.method public native whitelist glViewport(IIII)V
.end method

.method public native whitelist glWeightPointerOES(IIII)V
.end method

.method public whitelist glWeightPointerOES(IIILjava/nio/Buffer;)V
    .registers 11
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .line 1888
    nop

    .line 1893
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 1888
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "size":I
    .end local p2    # "type":I
    .end local p3    # "stride":I
    .end local p4    # "pointer":Ljava/nio/Buffer;
    .local v1, "size":I
    .local v2, "type":I
    .local v3, "stride":I
    .local v4, "pointer":Ljava/nio/Buffer;
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/GLImpl;->glWeightPointerOESBounds(IIILjava/nio/Buffer;I)V

    .line 1895
    return-void
.end method
