.class Landroid/opengl/GLSurfaceView$LogWriter;
.super Ljava/io/Writer;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogWriter"
.end annotation


# instance fields
.field private greylist-max-o mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 1869
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private greylist-max-o flushBuilder()V
    .registers 4

    .line 1892
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1893
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1896
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 1872
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1873
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 1876
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1877
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 7
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 1880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_17

    .line 1881
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1882
    .local v1, "c":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 1883
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    goto :goto_14

    .line 1886
    :cond_f
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1880
    .end local v1    # "c":C
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1889
    .end local v0    # "i":I
    :cond_17
    return-void
.end method
