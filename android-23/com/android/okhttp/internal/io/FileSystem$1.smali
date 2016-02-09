.class final Lcom/android/okhttp/internal/io/FileSystem$1;
.super Ljava/lang/Object;
.source "FileSystem.java"

# interfaces
.implements Lcom/android/okhttp/internal/io/FileSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/io/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    :try_start_0
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 60
    :catch_0
    move-exception v0

    #@6
    .line 62
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@d
    .line 63
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public delete(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 70
    new-instance v0, Ljava/io/IOException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "failed to delete "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 67
    :cond_0
    return-void
.end method

.method public deleteContents(Ljava/io/File;)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 91
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    #@6
    .line 92
    new-instance v2, Ljava/io/IOException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "not a readable directory: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 94
    :cond_0
    const/4 v2, 0x0

    #@21
    array-length v3, v1

    #@22
    :goto_0
    if-ge v2, v3, :cond_3

    #@24
    aget-object v0, v1, v2

    #@26
    .line 95
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    .line 96
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/io/FileSystem$1;->deleteContents(Ljava/io/File;)V

    #@2f
    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 99
    new-instance v2, Ljava/io/IOException;

    #@37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "failed to delete "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v2

    #@4f
    .line 94
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_0

    #@52
    .line 89
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method public exists(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public rename(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "from"    # Ljava/io/File;
    .param p2, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-virtual {p0, p2}, Lcom/android/okhttp/internal/io/FileSystem$1;->delete(Ljava/io/File;)V

    #@3
    .line 84
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 85
    new-instance v0, Ljava/io/IOException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "failed to rename "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " to "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 82
    :cond_0
    return-void
.end method

.method public sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    :try_start_0
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 50
    :catch_0
    move-exception v0

    #@6
    .line 52
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@d
    .line 53
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public size(Ljava/io/File;)J
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
