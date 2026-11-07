.class public Landroid/opengl/EGLSync;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLSync.java"


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 3
    .param p1, "handle"    # J

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 32
    :cond_4
    instance-of v1, p1, Landroid/opengl/EGLSync;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 34
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/opengl/EGLSync;

    .line 35
    .local v1, "that":Landroid/opengl/EGLSync;
    invoke-virtual {p0}, Landroid/opengl/EGLSync;->getNativeHandle()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/opengl/EGLSync;->getNativeHandle()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    return v0
.end method
