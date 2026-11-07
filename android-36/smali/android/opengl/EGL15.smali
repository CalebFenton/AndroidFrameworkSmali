.class public final Landroid/opengl/EGL15;
.super Ljava/lang/Object;
.source "EGL15.java"


# static fields
.field public static final whitelist EGL_CL_EVENT_HANDLE:I = 0x309c

.field public static final whitelist EGL_CONDITION_SATISFIED:I = 0x30f6

.field public static final whitelist EGL_CONTEXT_MAJOR_VERSION:I = 0x3098

.field public static final whitelist EGL_CONTEXT_MINOR_VERSION:I = 0x30fb

.field public static final whitelist EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT:I = 0x2

.field public static final whitelist EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT:I = 0x1

.field public static final whitelist EGL_CONTEXT_OPENGL_DEBUG:I = 0x31b0

.field public static final whitelist EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE:I = 0x31b1

.field public static final whitelist EGL_CONTEXT_OPENGL_PROFILE_MASK:I = 0x30fd

.field public static final whitelist EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY:I = 0x31bd

.field public static final whitelist EGL_CONTEXT_OPENGL_ROBUST_ACCESS:I = 0x31b2

.field public static final whitelist EGL_FOREVER:J = -0x1L

.field public static final whitelist EGL_GL_COLORSPACE:I = 0x309d

.field public static final whitelist EGL_GL_COLORSPACE_LINEAR:I = 0x308a

.field public static final whitelist EGL_GL_COLORSPACE_SRGB:I = 0x3089

.field public static final whitelist EGL_GL_RENDERBUFFER:I = 0x30b9

.field public static final whitelist EGL_GL_TEXTURE_2D:I = 0x30b1

.field public static final whitelist EGL_GL_TEXTURE_3D:I = 0x30b2

.field public static final whitelist EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X:I = 0x30b4

.field public static final whitelist EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y:I = 0x30b6

.field public static final whitelist EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z:I = 0x30b8

.field public static final whitelist EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X:I = 0x30b3

.field public static final whitelist EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y:I = 0x30b5

.field public static final whitelist EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z:I = 0x30b7

.field public static final whitelist EGL_GL_TEXTURE_LEVEL:I = 0x30bc

.field public static final whitelist EGL_GL_TEXTURE_ZOFFSET:I = 0x30bd

.field public static final whitelist EGL_IMAGE_PRESERVED:I = 0x30d2

.field public static final whitelist EGL_LOSE_CONTEXT_ON_RESET:I = 0x31bf

.field public static final whitelist EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

.field public static final whitelist EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

.field public static final whitelist EGL_NO_IMAGE:Landroid/opengl/EGLImage;

.field public static final whitelist EGL_NO_RESET_NOTIFICATION:I = 0x31be

.field public static final whitelist EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

.field public static final whitelist EGL_NO_SYNC:Landroid/opengl/EGLSync;

.field public static final whitelist EGL_OPENGL_ES3_BIT:I = 0x40

.field public static final whitelist EGL_PLATFORM_ANDROID_KHR:I = 0x3141

.field public static final whitelist EGL_SIGNALED:I = 0x30f2

.field public static final whitelist EGL_SYNC_CL_EVENT:I = 0x30fe

.field public static final whitelist EGL_SYNC_CL_EVENT_COMPLETE:I = 0x30ff

.field public static final whitelist EGL_SYNC_CONDITION:I = 0x30f8

.field public static final whitelist EGL_SYNC_FENCE:I = 0x30f9

.field public static final whitelist EGL_SYNC_FLUSH_COMMANDS_BIT:I = 0x1

.field public static final whitelist EGL_SYNC_PRIOR_COMMANDS_COMPLETE:I = 0x30f0

.field public static final whitelist EGL_SYNC_STATUS:I = 0x30f1

.field public static final whitelist EGL_SYNC_TYPE:I = 0x30f7

.field public static final whitelist EGL_TIMEOUT_EXPIRED:I = 0x30f5

.field public static final whitelist EGL_UNSIGNALED:I = 0x30f3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    const/4 v0, 0x0

    sput-object v0, Landroid/opengl/EGL15;->EGL_NO_IMAGE:Landroid/opengl/EGLImage;

    .line 70
    sput-object v0, Landroid/opengl/EGL15;->EGL_NO_SYNC:Landroid/opengl/EGLSync;

    .line 71
    sput-object v0, Landroid/opengl/EGL15;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 72
    sput-object v0, Landroid/opengl/EGL15;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 73
    sput-object v0, Landroid/opengl/EGL15;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 77
    invoke-static {}, Landroid/opengl/EGL15;->_nativeClassInit()V

    .line 78
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist _nativeClassInit()V
.end method

.method public static native whitelist eglClientWaitSync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;IJ)I
.end method

.method public static native whitelist eglCreateImage(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;IJ[JI)Landroid/opengl/EGLImage;
.end method

.method public static native whitelist eglCreatePlatformPixmapSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/nio/Buffer;[JI)Landroid/opengl/EGLSurface;
.end method

.method public static native whitelist eglCreatePlatformWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/nio/Buffer;[JI)Landroid/opengl/EGLSurface;
.end method

.method public static native whitelist eglCreateSync(Landroid/opengl/EGLDisplay;I[JI)Landroid/opengl/EGLSync;
.end method

.method public static native whitelist eglDestroyImage(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLImage;)Z
.end method

.method public static native whitelist eglDestroySync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)Z
.end method

.method public static native whitelist eglGetPlatformDisplay(IJ[JI)Landroid/opengl/EGLDisplay;
.end method

.method public static native whitelist eglGetSyncAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;I[JI)Z
.end method

.method public static native whitelist eglWaitSync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;I)Z
.end method
