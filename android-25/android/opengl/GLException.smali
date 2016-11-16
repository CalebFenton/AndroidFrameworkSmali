.class public Landroid/opengl/GLException;
.super Ljava/lang/RuntimeException;
.source "GLException.java"


# instance fields
.field private final mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    #@0
    .prologue
    .line 26
    invoke-static {p1}, Landroid/opengl/GLException;->getErrorString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    .line 27
    iput p1, p0, Landroid/opengl/GLException;->mError:I

    #@9
    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 32
    iput p1, p0, Landroid/opengl/GLException;->mError:I

    #@5
    .line 30
    return-void
.end method

.method private static getErrorString(I)Ljava/lang/String;
    .locals 3
    .param p0, "error"    # I

    #@0
    .prologue
    .line 36
    invoke-static {p0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 37
    .local v0, "errorString":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unknown error 0x"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 40
    :cond_0
    return-object v0
.end method


# virtual methods
.method getError()I
    .locals 1

    #@0
    .prologue
    .line 44
    iget v0, p0, Landroid/opengl/GLException;->mError:I

    #@2
    return v0
.end method
