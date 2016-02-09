.class Landroid/support/v4/provider/RawDocumentFile;
.super Landroid/support/v4/provider/DocumentFile;
.source "RawDocumentFile.java"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
    .locals 0
    .param p1, "parent"    # Landroid/support/v4/provider/DocumentFile;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/support/v4/provider/DocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;)V

    #@3
    .line 32
    iput-object p2, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@5
    .line 30
    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 160
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    #@5
    .line 161
    .local v2, "success":Z
    if-eqz v1, :cond_2

    #@7
    .line 162
    const/4 v3, 0x0

    #@8
    array-length v4, v1

    #@9
    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_2

    #@b
    aget-object v0, v1, v3

    #@d
    .line 163
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 164
    invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    #@16
    move-result v5

    #@17
    and-int/2addr v2, v5

    #@18
    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 167
    const-string/jumbo v5, "DocumentFile"

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "Failed to delete "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 168
    const/4 v2, 0x0

    #@39
    .line 162
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 172
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return v2
.end method

.method private static getTypeForName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    const/16 v3, 0x2e

    #@2
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v1

    #@6
    .line 147
    .local v1, "lastDot":I
    if-ltz v1, :cond_0

    #@8
    .line 148
    add-int/lit8 v3, v1, 0x1

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 149
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 150
    .local v2, "mime":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1c
    .line 151
    return-object v2

    #@1d
    .line 155
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "application/octet-stream"

    #@20
    return-object v3
.end method


# virtual methods
.method public canRead()Z
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canWrite()Z
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@4
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7
    .line 55
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 56
    :cond_0
    new-instance v1, Landroid/support/v4/provider/RawDocumentFile;

    #@15
    invoke-direct {v1, p0, v0}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    #@18
    return-object v1

    #@19
    .line 58
    :cond_1
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 38
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 39
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@b
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, "."

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p2

    #@23
    .line 42
    :cond_0
    new-instance v2, Ljava/io/File;

    #@25
    iget-object v3, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@27
    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    .line 44
    .local v2, "target":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    #@2d
    .line 45
    new-instance v3, Landroid/support/v4/provider/RawDocumentFile;

    #@2f
    invoke-direct {v3, p0, v2}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    return-object v3

    #@33
    .line 46
    :catch_0
    move-exception v0

    #@34
    .line 47
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "DocumentFile"

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "Failed to createFile: "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 48
    return-object v6
.end method

.method public delete()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    #@5
    .line 114
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public exists()Z
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 75
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 77
    :cond_0
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@c
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFile()Z
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastModified()J
    .locals 2

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public length()J
    .locals 2

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public listFiles()[Landroid/support/v4/provider/DocumentFile;
    .locals 6

    #@0
    .prologue
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 125
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/DocumentFile;>;"
    iget-object v3, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@7
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@a
    move-result-object v1

    #@b
    .line 126
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    #@d
    .line 127
    const/4 v3, 0x0

    #@e
    array-length v4, v1

    #@f
    :goto_0
    if-ge v3, v4, :cond_0

    #@11
    aget-object v0, v1, v3

    #@13
    .line 128
    .local v0, "file":Ljava/io/File;
    new-instance v5, Landroid/support/v4/provider/RawDocumentFile;

    #@15
    invoke-direct {v5, p0, v0}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    #@18
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 127
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 131
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v3

    #@22
    new-array v3, v3, [Landroid/support/v4/provider/DocumentFile;

    #@24
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, [Landroid/support/v4/provider/DocumentFile;

    #@2a
    return-object v3
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 137
    .local v0, "target":Ljava/io/File;
    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@d
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 138
    iput-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@15
    .line 139
    const/4 v1, 0x1

    #@16
    return v1

    #@17
    .line 141
    :cond_0
    const/4 v1, 0x0

    #@18
    return v1
.end method
