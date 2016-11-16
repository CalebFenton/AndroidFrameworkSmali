.class public Lorg/apache/http/entity/FileEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "FileEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 60
    if-nez p1, :cond_0

    #@5
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "File may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 63
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    #@10
    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    #@13
    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-super {p0}, Lorg/apache/http/entity/AbstractHttpEntity;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    iget-object v1, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    #@4
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@7
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    if-nez p1, :cond_0

    #@2
    .line 81
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Output stream may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 83
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    #@d
    iget-object v3, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    #@f
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@12
    .line 85
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    #@14
    :try_start_0
    new-array v2, v3, [B

    #@16
    .line 87
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    #@19
    move-result v1

    #@1a
    .local v1, "l":I
    const/4 v3, -0x1

    #@1b
    if-eq v1, v3, :cond_1

    #@1d
    .line 88
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 91
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    #@23
    .line 92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@26
    .line 91
    throw v3

    #@27
    .line 90
    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@2d
    .line 79
    return-void
.end method
