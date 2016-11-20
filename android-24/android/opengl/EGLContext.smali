.class public Landroid/opengl/EGLContext;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLContext.java"


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "handle"    # J

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    #@3
    .line 25
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
    .line 31
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 32
    :cond_0
    instance-of v3, p1, Landroid/opengl/EGLContext;

    #@7
    if-nez v3, :cond_1

    #@9
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 34
    check-cast v0, Landroid/opengl/EGLContext;

    #@d
    .line 35
    .local v0, "that":Landroid/opengl/EGLContext;
    invoke-virtual {p0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    #@10
    move-result-wide v4

    #@11
    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    #@14
    move-result-wide v6

    #@15
    cmp-long v3, v4, v6

    #@17
    if-nez v3, :cond_2

    #@19
    :goto_0
    return v1

    #@1a
    :cond_2
    move v1, v2

    #@1b
    goto :goto_0
.end method
