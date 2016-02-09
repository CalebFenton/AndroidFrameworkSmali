.class public Ljava/util/jar/JarOutputStream;
.super Ljava/util/zip/ZipOutputStream;
.source "JarOutputStream.java"


# instance fields
.field private manifest:Ljava/util/jar/Manifest;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "manifest"    # Ljava/util/jar/Manifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 47
    if-nez p2, :cond_0

    #@5
    .line 48
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "manifest == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 50
    :cond_0
    iput-object p2, p0, Ljava/util/jar/JarOutputStream;->manifest:Ljava/util/jar/Manifest;

    #@10
    .line 51
    new-instance v0, Ljava/util/zip/ZipEntry;

    #@12
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@15
    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@18
    .line 52
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@1b
    .line 53
    iget-object v1, p0, Ljava/util/jar/JarOutputStream;->manifest:Ljava/util/jar/Manifest;

    #@1d
    invoke-virtual {v1, p0}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    #@20
    .line 54
    invoke-virtual {p0}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    #@23
    .line 45
    return-void
.end method


# virtual methods
.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 0
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@3
    .line 81
    return-void
.end method
