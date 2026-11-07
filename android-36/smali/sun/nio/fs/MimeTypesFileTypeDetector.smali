.class Lsun/nio/fs/MimeTypesFileTypeDetector;
.super Lsun/nio/fs/AbstractFileTypeDetector;
.source "MimeTypesFileTypeDetector.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lsun/nio/fs/AbstractFileTypeDetector;-><init>()V

    return-void
.end method

.method private static blacklist getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    const-string v0, ""

    .line 99
    .local v0, "ext":Ljava/lang/String;
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 100
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 101
    .local v1, "dot":I
    if-ltz v1, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    .line 102
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .end local v1    # "dot":I
    :cond_20
    return-object v0
.end method


# virtual methods
.method protected blacklist implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 6
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 69
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    .line 70
    .local v0, "fn":Ljava/nio/file/Path;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 71
    return-object v1

    .line 73
    :cond_8
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/MimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "ext":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 75
    return-object v1

    .line 87
    :cond_17
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_25

    .line 90
    invoke-static {v2}, Lsun/nio/fs/MimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_25
    if-nez v1, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 93
    :cond_2d
    return-object v1
.end method
