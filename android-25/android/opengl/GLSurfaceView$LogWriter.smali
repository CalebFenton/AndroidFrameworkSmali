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
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1838
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@a
    .line 1838
    return-void
.end method

.method private flushBuilder()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1861
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 1862
    const-string/jumbo v0, "GLSurfaceView"

    #@c
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 1863
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@17
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@20
    .line 1860
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 1841
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    #@3
    .line 1840
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 1845
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    #@3
    .line 1844
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 1849
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@3
    .line 1850
    add-int v2, p2, v1

    #@5
    aget-char v0, p1, v2

    #@7
    .line 1851
    .local v0, "c":C
    const/16 v2, 0xa

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 1852
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    #@e
    .line 1849
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1855
    :cond_0
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    goto :goto_1

    #@17
    .line 1848
    .end local v0    # "c":C
    :cond_1
    return-void
.end method
