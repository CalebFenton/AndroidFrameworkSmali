.class public Lorg/apache/http/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z

.field private final in:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    #@6
    .line 61
    if-nez p1, :cond_0

    #@8
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Session input buffer may not be null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 64
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@13
    .line 59
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@6
    const/16 v1, 0xa

    #@8
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 69
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 71
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    #@3
    .line 75
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@8
    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 89
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@8
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    #@b
    move-result v0

    #@c
    return v0
.end method
