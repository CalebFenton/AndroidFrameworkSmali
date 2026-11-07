.class Ljava/util/zip/ZipFile$Source$Key;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field final blacklist attrs:Ljava/nio/file/attribute/BasicFileAttributes;

.field blacklist file:Ljava/io/File;

.field final blacklist isZipFilePathValidatorEnabled:Z

.field final blacklist utf8:Z


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/util/zip/ZipCoder;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .param p3, "zc"    # Ljava/util/zip/ZipCoder;

    .line 1341
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/ZipFile$Source$Key;-><init>(Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/util/zip/ZipCoder;Z)V

    .line 1342
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/util/zip/ZipCoder;Z)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .param p3, "zc"    # Ljava/util/zip/ZipCoder;
    .param p4, "isZipFilePathValidatorEnabled"    # Z

    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    iput-object p2, p0, Ljava/util/zip/ZipFile$Source$Key;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    .line 1348
    iput-object p1, p0, Ljava/util/zip/ZipFile$Source$Key;->file:Ljava/io/File;

    .line 1349
    invoke-virtual {p3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$Source$Key;->utf8:Z

    .line 1350
    iput-boolean p4, p0, Ljava/util/zip/ZipFile$Source$Key;->isZipFilePathValidatorEnabled:Z

    .line 1351
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1363
    instance-of v0, p1, Ljava/util/zip/ZipFile$Source$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Ljava/util/zip/ZipFile$Source$Key;

    .line 1364
    .local v0, "key":Ljava/util/zip/ZipFile$Source$Key;
    iget-boolean v2, v0, Ljava/util/zip/ZipFile$Source$Key;->utf8:Z

    iget-boolean v3, p0, Ljava/util/zip/ZipFile$Source$Key;->utf8:Z

    if-eq v2, v3, :cond_f

    .line 1365
    return v1

    .line 1367
    :cond_f
    iget-object v2, p0, Ljava/util/zip/ZipFile$Source$Key;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    iget-object v3, v0, Ljava/util/zip/ZipFile$Source$Key;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/file/attribute/FileTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1368
    return v1

    .line 1371
    :cond_22
    iget-boolean v2, v0, Ljava/util/zip/ZipFile$Source$Key;->isZipFilePathValidatorEnabled:Z

    iget-boolean v3, p0, Ljava/util/zip/ZipFile$Source$Key;->isZipFilePathValidatorEnabled:Z

    if-eq v2, v3, :cond_29

    .line 1372
    return v1

    .line 1374
    :cond_29
    iget-object v1, p0, Ljava/util/zip/ZipFile$Source$Key;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    .line 1375
    .local v1, "fk":Ljava/lang/Object;
    if-eqz v1, :cond_3c

    .line 1376
    iget-object v2, v0, Ljava/util/zip/ZipFile$Source$Key;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1378
    :cond_3c
    iget-object v2, p0, Ljava/util/zip/ZipFile$Source$Key;->file:Ljava/io/File;

    iget-object v3, v0, Ljava/util/zip/ZipFile$Source$Key;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1381
    .end local v0    # "key":Ljava/util/zip/ZipFile$Source$Key;
    .end local v1    # "fk":Ljava/lang/Object;
    :cond_45
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1354
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$Source$Key;->utf8:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_c

    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    .line 1355
    .local v0, "t":J
    :goto_c
    iget-object v2, p0, Ljava/util/zip/ZipFile$Source$Key;->attrs:Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1358
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    iget-object v3, p0, Ljava/util/zip/ZipFile$Source$Key;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    iget-boolean v3, p0, Ljava/util/zip/ZipFile$Source$Key;->isZipFilePathValidatorEnabled:Z

    .line 1359
    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v2, v3

    .line 1358
    return v2
.end method
