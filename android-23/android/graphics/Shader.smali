.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mLocalMatrix:Landroid/graphics/Matrix;

.field private native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeSetLocalMatrix(JJ)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 1

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/graphics/Shader;

    #@2
    invoke-direct {v0}, Landroid/graphics/Shader;-><init>()V

    #@5
    .line 102
    .local v0, "copy":Landroid/graphics/Shader;
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    #@8
    .line 103
    return-object v0
.end method

.method protected copyLocalMatrix(Landroid/graphics/Shader;)V
    .locals 3
    .param p1, "dest"    # Landroid/graphics/Shader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 111
    new-instance v0, Landroid/graphics/Matrix;

    #@7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@a
    .line 112
    .local v0, "lm":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    #@d
    .line 113
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@10
    .line 109
    .end local v0    # "lm":Landroid/graphics/Matrix;
    :goto_0
    return-void

    #@11
    .line 115
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@14
    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 93
    iget-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    #@5
    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeDestructor(J)V

    #@8
    .line 89
    return-void

    #@9
    .line 92
    :catchall_0
    move-exception v0

    #@a
    .line 93
    iget-wide v2, p0, Landroid/graphics/Shader;->native_instance:J

    #@c
    invoke-static {v2, v3}, Landroid/graphics/Shader;->nativeDestructor(J)V

    #@f
    .line 92
    throw v0
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 2
    .param p1, "localM"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 71
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    #@7
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@a
    .line 72
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    #@c
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 74
    :cond_1
    return v0
.end method

.method getNativeInstance()J
    .locals 2

    #@0
    .prologue
    .line 120
    iget-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    #@2
    return-wide v0
.end method

.method protected init(J)V
    .locals 1
    .param p1, "ni"    # J

    #@0
    .prologue
    .line 37
    iput-wide p1, p0, Landroid/graphics/Shader;->native_instance:J

    #@2
    .line 36
    return-void
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "localM"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    #@2
    .line 85
    iget-wide v2, p0, Landroid/graphics/Shader;->native_instance:J

    #@4
    .line 86
    if-nez p1, :cond_0

    #@6
    const-wide/16 v0, 0x0

    #@8
    .line 85
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Shader;->nativeSetLocalMatrix(JJ)J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    #@e
    .line 83
    return-void

    #@f
    .line 86
    :cond_0
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    #@11
    goto :goto_0
.end method
