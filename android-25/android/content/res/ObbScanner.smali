.class public Landroid/content/res/ObbScanner;
.super Ljava/lang/Object;
.source "ObbScanner.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    if-nez p0, :cond_0

    #@2
    .line 40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "file path cannot be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 43
    :cond_0
    new-instance v1, Ljava/io/File;

    #@d
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@10
    .line 44
    .local v1, "obbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "OBB file does not exist: "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3

    #@30
    .line 52
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 54
    .local v0, "canonicalFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/res/ObbInfo;

    #@36
    invoke-direct {v2}, Landroid/content/res/ObbInfo;-><init>()V

    #@39
    .line 55
    .local v2, "obbInfo":Landroid/content/res/ObbInfo;
    iput-object v0, v2, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    #@3b
    .line 56
    invoke-static {v0, v2}, Landroid/content/res/ObbScanner;->getObbInfo_native(Ljava/lang/String;Landroid/content/res/ObbInfo;)V

    #@3e
    .line 58
    return-object v2
.end method

.method private static native getObbInfo_native(Ljava/lang/String;Landroid/content/res/ObbInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
