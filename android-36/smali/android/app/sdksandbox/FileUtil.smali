.class public Landroid/app/sdksandbox/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final blacklist CONVERSION_FACTOR_FROM_BYTES_TO_KB:I = 0x400

.field public static final blacklist TAG:Ljava/lang/String; = "SdkSandboxManager"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertByteToKb(F)I
    .registers 2
    .param p0, "storageSize"    # F

    .line 64
    const/high16 v0, 0x44800000    # 1024.0f

    div-float v0, p0, v0

    float-to-int v0, v0

    return v0
.end method

.method private static blacklist getStorageForFiles([Ljava/io/File;)F
    .registers 7
    .param p0, "files"    # [Ljava/io/File;

    .line 47
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez p0, :cond_7

    .line 48
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_7
    const/4 v0, 0x0

    .line 53
    .local v0, "sizeInBytes":F
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    .line 54
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/app/sdksandbox/FileUtil;->getStorageForFiles([Ljava/io/File;)F

    move-result v4

    add-float/2addr v0, v4

    goto :goto_24

    .line 57
    :cond_1e
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-float v4, v4

    add-float/2addr v0, v4

    .line 53
    .end local v3    # "file":Ljava/io/File;
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 60
    :cond_27
    return v0
.end method

.method public static blacklist getStorageInKbForPaths(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 35
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, "storageSize":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 37
    new-instance v2, Ljava/io/File;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "dir":Ljava/io/File;
    invoke-static {v2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/app/sdksandbox/FileUtil;->getStorageForFiles([Ljava/io/File;)F

    move-result v3

    add-float/2addr v0, v3

    .line 36
    .end local v2    # "dir":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 43
    .end local v1    # "i":I
    :cond_22
    invoke-static {v0}, Landroid/app/sdksandbox/FileUtil;->convertByteToKb(F)I

    move-result v1

    return v1
.end method
