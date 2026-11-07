.class public abstract Ljavax/microedition/khronos/egl/EGLContext;
.super Ljava/lang/Object;
.source "EGLContext.java"


# static fields
.field private static final greylist-max-o EGL_INSTANCE:Ljavax/microedition/khronos/egl/EGL;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/google/android/gles_jni/EGLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/EGLImpl;-><init>()V

    sput-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:Ljavax/microedition/khronos/egl/EGL;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getEGL()Ljavax/microedition/khronos/egl/EGL;
    .registers 1

    .line 26
    sget-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:Ljavax/microedition/khronos/egl/EGL;

    return-object v0
.end method


# virtual methods
.method public abstract whitelist getGL()Ljavax/microedition/khronos/opengles/GL;
.end method
