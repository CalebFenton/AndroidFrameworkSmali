.class public Landroid/content/res/ObbScanner;
.super Ljava/lang/Object;
.source "ObbScanner.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    if-eqz p0, :cond_35

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "obbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "canonicalFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/res/ObbInfo;

    invoke-direct {v2}, Landroid/content/res/ObbInfo;-><init>()V

    .line 55
    .local v2, "obbInfo":Landroid/content/res/ObbInfo;
    iput-object v1, v2, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    .line 56
    invoke-static {v1, v2}, Landroid/content/res/ObbScanner;->getObbInfo_native(Ljava/lang/String;Landroid/content/res/ObbInfo;)V

    .line 58
    return-object v2

    .line 45
    .end local v1    # "canonicalFilePath":Ljava/lang/String;
    .end local v2    # "obbInfo":Landroid/content/res/ObbInfo;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBB file does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    .end local v0    # "obbFile":Ljava/io/File;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o getObbInfo_native(Ljava/lang/String;Landroid/content/res/ObbInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
