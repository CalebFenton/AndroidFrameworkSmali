.class public Lcom/google/android/gles_jni/EGLDisplayImpl;
.super Ljavax/microedition/khronos/egl/EGLDisplay;
.source "EGLDisplayImpl.java"


# instance fields
.field mEGLDisplay:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "dpy"    # J

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    #@3
    .line 25
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    #@5
    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 30
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/google/android/gles_jni/EGLDisplayImpl;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 33
    check-cast v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@15
    .line 35
    .local v0, "that":Lcom/google/android/gles_jni/EGLDisplayImpl;
    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    #@17
    iget-wide v6, v0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    #@19
    cmp-long v3, v4, v6

    #@1b
    if-nez v3, :cond_3

    #@1d
    :goto_0
    return v1

    #@1e
    :cond_3
    move v1, v2

    #@1f
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 46
    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    #@2
    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    #@4
    const/16 v1, 0x20

    #@6
    ushr-long/2addr v4, v1

    #@7
    xor-long/2addr v2, v4

    #@8
    long-to-int v1, v2

    #@9
    add-int/lit16 v0, v1, 0x20f

    #@b
    .line 47
    .local v0, "result":I
    return v0
.end method
