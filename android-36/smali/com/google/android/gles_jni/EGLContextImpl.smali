.class public Lcom/google/android/gles_jni/EGLContextImpl;
.super Ljavax/microedition/khronos/egl/EGLContext;
.source "EGLContextImpl.java"


# instance fields
.field blacklist mEGLContext:J

.field private blacklist mGLContext:Lcom/google/android/gles_jni/GLImpl;


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 4
    .param p1, "ctx"    # J

    .line 26
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    .line 28
    new-instance v0, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 39
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    .line 41
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/gles_jni/EGLContextImpl;

    .line 43
    .local v2, "that":Lcom/google/android/gles_jni/EGLContextImpl;
    iget-wide v3, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    iget-wide v5, v2, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0

    .line 39
    .end local v2    # "that":Lcom/google/android/gles_jni/EGLContextImpl;
    :cond_20
    :goto_20
    return v1
.end method

.method public whitelist getGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 52
    const/16 v0, 0x11

    .line 53
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 54
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
