.class public Lcom/google/android/gles_jni/EGLConfigImpl;
.super Ljavax/microedition/khronos/egl/EGLConfig;
.source "EGLConfigImpl.java"


# instance fields
.field private mEGLConfig:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "config"    # J

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLConfig;-><init>()V

    #@3
    .line 25
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    #@5
    .line 24
    return-void
.end method


# virtual methods
.method get()J
    .locals 2

    #@0
    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    #@2
    return-wide v0
.end method
