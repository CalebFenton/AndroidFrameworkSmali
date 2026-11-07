.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "EGLObjectHandle.java"


# instance fields
.field private final greylist-max-o mHandle:J


# direct methods
.method protected constructor whitelist <init>(I)V
    .registers 4
    .param p1, "handle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    int-to-long v0, p1

    iput-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    .line 34
    return-void
.end method

.method protected constructor whitelist <init>(J)V
    .registers 3
    .param p1, "handle"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist getHandle()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 47
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    long-to-int v0, v0

    return v0

    .line 45
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getNativeHandle()J
    .registers 3

    .line 58
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    iget-wide v4, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 68
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
