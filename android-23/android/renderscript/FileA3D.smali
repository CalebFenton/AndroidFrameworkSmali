.class public Landroid/renderscript/FileA3D;
.super Landroid/renderscript/BaseObj;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/FileA3D$EntryType;,
        Landroid/renderscript/FileA3D$IndexEntry;
    }
.end annotation


# instance fields
.field mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

.field mInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "stream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 172
    iput-object p4, p0, Landroid/renderscript/FileA3D;->mInputStream:Ljava/io/InputStream;

    #@5
    .line 170
    return-void
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 233
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J

    #@6
    move-result-wide v2

    #@7
    .line 235
    .local v2, "fileId":J
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-nez v1, :cond_0

    #@d
    .line 236
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Unable to create a3d file from asset "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 238
    :cond_0
    new-instance v0, Landroid/renderscript/FileA3D;

    #@29
    const/4 v1, 0x0

    #@2a
    invoke-direct {v0, v2, v3, p0, v1}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    #@2d
    .line 239
    .local v0, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v0}, Landroid/renderscript/FileA3D;->initEntries()V

    #@30
    .line 240
    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/io/File;)Landroid/renderscript/FileA3D;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 273
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/renderscript/FileA3D;->createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromFile(Ljava/lang/String;)J

    #@3
    move-result-wide v2

    #@4
    .line 255
    .local v2, "fileId":J
    const-wide/16 v4, 0x0

    #@6
    cmp-long v1, v2, v4

    #@8
    if-nez v1, :cond_0

    #@a
    .line 256
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Unable to create a3d file from "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 258
    :cond_0
    new-instance v0, Landroid/renderscript/FileA3D;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {v0, v2, v3, p0, v1}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    #@2a
    .line 259
    .local v0, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v0}, Landroid/renderscript/FileA3D;->initEntries()V

    #@2d
    .line 260
    return-object v0
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 289
    const/4 v6, 0x0

    #@4
    .line 291
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v6

    #@8
    .line 296
    .local v6, "is":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    #@a
    .line 297
    .local v4, "fileId":J
    instance-of v7, v6, Landroid/content/res/AssetManager$AssetInputStream;

    #@c
    if-eqz v7, :cond_0

    #@e
    move-object v7, v6

    #@f
    .line 298
    check-cast v7, Landroid/content/res/AssetManager$AssetInputStream;

    #@11
    invoke-virtual {v7}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    #@14
    move-result-wide v0

    #@15
    .line 299
    .local v0, "asset":J
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAssetStream(J)J

    #@18
    move-result-wide v4

    #@19
    .line 304
    const-wide/16 v8, 0x0

    #@1b
    cmp-long v7, v4, v8

    #@1d
    if-nez v7, :cond_1

    #@1f
    .line 305
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    #@21
    new-instance v8, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v9, "Unable to create a3d file from resource "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v7

    #@39
    .line 292
    .end local v0    # "asset":J
    .end local v4    # "fileId":J
    .local v6, "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    #@3a
    .line 293
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    #@3c
    new-instance v8, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v9, "Unable to open resource "

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@53
    throw v7

    #@54
    .line 301
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fileId":J
    .local v6, "is":Ljava/io/InputStream;
    :cond_0
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    #@56
    const-string/jumbo v8, "Unsupported asset stream"

    #@59
    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v7

    #@5d
    .line 307
    .restart local v0    # "asset":J
    :cond_1
    new-instance v3, Landroid/renderscript/FileA3D;

    #@5f
    invoke-direct {v3, v4, v5, p0, v6}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    #@62
    .line 308
    .local v3, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v3}, Landroid/renderscript/FileA3D;->initEntries()V

    #@65
    .line 309
    return-object v3
.end method

.method private initEntries()V
    .locals 14

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nFileA3DGetNumIndexEntries(J)I

    #@b
    move-result v4

    #@c
    .line 177
    .local v4, "numFileEntries":I
    if-gtz v4, :cond_0

    #@e
    .line 178
    return-void

    #@f
    .line 181
    :cond_0
    new-array v0, v4, [Landroid/renderscript/FileA3D$IndexEntry;

    #@11
    iput-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    #@13
    .line 182
    new-array v5, v4, [I

    #@15
    .line 183
    .local v5, "ids":[I
    new-array v6, v4, [Ljava/lang/String;

    #@17
    .line 185
    .local v6, "names":[Ljava/lang/String;
    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    #@19
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    #@1b
    invoke-virtual {p0, v0}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    #@1e
    move-result-wide v2

    #@1f
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V

    #@22
    .line 187
    const/4 v9, 0x0

    #@23
    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_1

    #@25
    .line 188
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    #@27
    new-instance v7, Landroid/renderscript/FileA3D$IndexEntry;

    #@29
    iget-object v8, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    invoke-virtual {p0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v10

    #@31
    aget-object v12, v6, v9

    #@33
    aget v1, v5, v9

    #@35
    invoke-static {v1}, Landroid/renderscript/FileA3D$EntryType;->toEntryType(I)Landroid/renderscript/FileA3D$EntryType;

    #@38
    move-result-object v13

    #@39
    invoke-direct/range {v7 .. v13}, Landroid/renderscript/FileA3D$IndexEntry;-><init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V

    #@3c
    aput-object v7, v0, v9

    #@3e
    .line 187
    add-int/lit8 v9, v9, 0x1

    #@40
    goto :goto_0

    #@41
    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/renderscript/FileA3D;->getIndexEntryCount()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-gez p1, :cond_1

    #@8
    .line 216
    :cond_0
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 215
    :cond_1
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    #@c
    array-length v0, v0

    #@d
    if-ge p1, v0, :cond_0

    #@f
    .line 218
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    #@11
    aget-object v0, v0, p1

    #@13
    return-object v0
.end method

.method public getIndexEntryCount()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 200
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 202
    :cond_0
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    #@8
    array-length v0, v0

    #@9
    return v0
.end method
