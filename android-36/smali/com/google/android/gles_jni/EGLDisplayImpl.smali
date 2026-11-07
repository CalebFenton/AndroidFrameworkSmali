.class public Lcom/google/android/gles_jni/EGLDisplayImpl;
.super Ljavax/microedition/khronos/egl/EGLDisplay;
.source "EGLDisplayImpl.java"


# instance fields
.field blacklist mEGLDisplay:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "dpy"    # J

    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 31
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    .line 33
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 35
    .local v2, "that":Lcom/google/android/gles_jni/EGLDisplayImpl;
    iget-wide v3, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    iget-wide v5, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0

    .line 31
    .end local v2    # "that":Lcom/google/android/gles_jni/EGLDisplayImpl;
    :cond_20
    :goto_20
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 45
    const/16 v0, 0x11

    .line 46
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 47
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
