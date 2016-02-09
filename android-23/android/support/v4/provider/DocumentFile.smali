.class public abstract Landroid/support/v4/provider/DocumentFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DocumentFile"


# instance fields
.field private final mParent:Landroid/support/v4/provider/DocumentFile;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;)V
    .locals 0
    .param p1, "parent"    # Landroid/support/v4/provider/DocumentFile;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Landroid/support/v4/provider/DocumentFile;->mParent:Landroid/support/v4/provider/DocumentFile;

    #@5
    .line 83
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/support/v4/provider/RawDocumentFile;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p0}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    #@6
    return-object v0
.end method

.method public static fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "singleUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    .line 111
    .local v0, "version":I
    const/16 v1, 0x13

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 112
    new-instance v1, Landroid/support/v4/provider/SingleDocumentFile;

    #@9
    invoke-direct {v1, v2, p0, p1}, Landroid/support/v4/provider/SingleDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    #@c
    return-object v1

    #@d
    .line 114
    :cond_0
    return-object v2
.end method

.method public static fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "treeUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    .line 129
    .local v0, "version":I
    const/16 v1, 0x15

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 130
    new-instance v1, Landroid/support/v4/provider/TreeDocumentFile;

    #@9
    .line 131
    invoke-static {p1}, Landroid/support/v4/provider/DocumentsContractApi21;->prepareTreeUri(Landroid/net/Uri;)Landroid/net/Uri;

    #@c
    move-result-object v2

    #@d
    .line 130
    invoke-direct {v1, v3, p0, v2}, Landroid/support/v4/provider/TreeDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    #@10
    return-object v1

    #@11
    .line 133
    :cond_0
    return-object v3
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 143
    .local v0, "version":I
    const/16 v1, 0x13

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 144
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 146
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract canWrite()Z
.end method

.method public abstract createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
.end method

.method public abstract createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->listFiles()[Landroid/support/v4/provider/DocumentFile;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 317
    .local v0, "doc":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 318
    return-object v0

    #@15
    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 321
    .end local v0    # "doc":Landroid/support/v4/provider/DocumentFile;
    :cond_1
    const/4 v1, 0x0

    #@19
    return-object v1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParentFile()Landroid/support/v4/provider/DocumentFile;
    .locals 1

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/provider/DocumentFile;->mParent:Landroid/support/v4/provider/DocumentFile;

    #@2
    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract listFiles()[Landroid/support/v4/provider/DocumentFile;
.end method

.method public abstract renameTo(Ljava/lang/String;)Z
.end method
