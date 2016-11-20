.class public Lcom/android/internal/http/multipart/FilePartSource;
.super Ljava/lang/Object;
.source "FilePartSource.java"

# interfaces
.implements Lcom/android/internal/http/multipart/PartSource;


# instance fields
.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 52
    iput-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->file:Ljava/io/File;

    #@6
    .line 55
    iput-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->fileName:Ljava/lang/String;

    #@8
    .line 66
    iput-object p1, p0, Lcom/android/internal/http/multipart/FilePartSource;->file:Ljava/io/File;

    #@a
    .line 67
    if-eqz p1, :cond_2

    #@c
    .line 68
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 69
    new-instance v0, Ljava/io/FileNotFoundException;

    #@14
    const-string/jumbo v1, "File is not a normal file."

    #@17
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 72
    new-instance v0, Ljava/io/FileNotFoundException;

    #@23
    const-string/jumbo v1, "File is not readable."

    #@26
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->fileName:Ljava/lang/String;

    #@30
    .line 65
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p2}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    #@3
    .line 90
    if-eqz p1, :cond_0

    #@5
    .line 91
    iput-object p1, p0, Lcom/android/internal/http/multipart/FilePartSource;->fileName:Ljava/lang/String;

    #@7
    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->file:Ljava/io/File;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 125
    new-instance v0, Ljava/io/FileInputStream;

    #@6
    iget-object v1, p0, Lcom/android/internal/http/multipart/FilePartSource;->file:Ljava/io/File;

    #@8
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@b
    return-object v0

    #@c
    .line 127
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@e
    const/4 v1, 0x0

    #@f
    new-array v1, v1, [B

    #@11
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@14
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->fileName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, "noname"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->fileName:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->file:Ljava/io/File;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 102
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePartSource;->file:Ljava/io/File;

    #@6
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0

    #@b
    .line 104
    :cond_0
    const-wide/16 v0, 0x0

    #@d
    return-wide v0
.end method
