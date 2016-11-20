.class public Lsun/misc/JarIndex;
.super Ljava/lang/Object;
.source "JarIndex.java"


# static fields
.field public static final INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"

.field private static final metaInfFilenames:Z


# instance fields
.field private indexMap:Ljava/util/HashMap;

.field private jarFiles:[Ljava/lang/String;

.field private jarMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 75
    const-string/jumbo v0, "true"

    #@3
    const-string/jumbo v1, "sun.misc.JarIndex.metaInfFilenames"

    #@6
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 74
    sput-boolean v0, Lsun/misc/JarIndex;->metaInfFilenames:Z

    #@10
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    #@a
    .line 82
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    #@11
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    #@3
    .line 92
    invoke-virtual {p0, p1}, Lsun/misc/JarIndex;->read(Ljava/io/InputStream;)V

    #@6
    .line 90
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    #@5
    .line 103
    invoke-direct {p0, p1}, Lsun/misc/JarIndex;->parseJars([Ljava/lang/String;)V

    #@8
    .line 100
    return-void
.end method

.method private addExplicit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    #@2
    invoke-direct {p0, p1, p2, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #@5
    .line 219
    iget-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    #@7
    invoke-direct {p0, p2, p1, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #@a
    .line 214
    return-void
.end method

.method private addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/util/HashMap;

    #@0
    .prologue
    .line 154
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/LinkedList;

    #@6
    .line 155
    .local v0, "list":Ljava/util/LinkedList;
    if-nez v0, :cond_1

    #@8
    .line 156
    new-instance v0, Ljava/util/LinkedList;

    #@a
    .end local v0    # "list":Ljava/util/LinkedList;
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@d
    .line 157
    .restart local v0    # "list":Ljava/util/LinkedList;
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@10
    .line 158
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 153
    :cond_0
    :goto_0
    return-void

    #@14
    .line 159
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 160
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_0
.end method

.method public static getJarIndex(Ljava/util/jar/JarFile;)Lsun/misc/JarIndex;
    .locals 1
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;
    .locals 4
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .param p1, "metaIndex"    # Lsun/misc/MetaIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 126
    const/4 v1, 0x0

    #@2
    .line 130
    .local v1, "index":Lsun/misc/JarIndex;
    if-eqz p1, :cond_0

    #@4
    .line 131
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    #@7
    invoke-virtual {p1, v2}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 134
    :cond_0
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    #@10
    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@13
    move-result-object v0

    #@14
    .line 136
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_1

    #@16
    .line 137
    new-instance v1, Lsun/misc/JarIndex;

    #@18
    .end local v1    # "index":Lsun/misc/JarIndex;
    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lsun/misc/JarIndex;-><init>(Ljava/io/InputStream;)V

    #@1f
    .line 139
    :cond_1
    return-object v1

    #@20
    .line 132
    .end local v0    # "e":Ljava/util/jar/JarEntry;
    .restart local v1    # "index":Lsun/misc/JarIndex;
    :cond_2
    return-object v3
.end method

.method private parseJars([Ljava/lang/String;)V
    .locals 8
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    if-nez p1, :cond_0

    #@2
    .line 228
    return-void

    #@3
    .line 231
    :cond_0
    const/4 v0, 0x0

    #@4
    .line 233
    .local v0, "currentJar":Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    .end local v0    # "currentJar":Ljava/lang/String;
    .local v4, "i":I
    :goto_0
    array-length v6, p1

    #@6
    if-ge v4, v6, :cond_5

    #@8
    .line 234
    aget-object v0, p1, v4

    #@a
    .line 235
    .local v0, "currentJar":Ljava/lang/String;
    new-instance v5, Ljava/util/zip/ZipFile;

    #@c
    .line 236
    sget-char v6, Ljava/io/File;->separatorChar:C

    #@e
    const/16 v7, 0x2f

    #@10
    .line 235
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    #@17
    .line 238
    .local v5, "zrf":Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@1a
    move-result-object v1

    #@1b
    .line 239
    .local v1, "entries":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_4

    #@21
    .line 240
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/util/zip/ZipEntry;

    #@27
    .line 241
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 245
    .local v3, "fileName":Ljava/lang/String;
    const-string/jumbo v6, "META-INF/"

    #@2e
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v6

    #@32
    if-nez v6, :cond_1

    #@34
    .line 246
    const-string/jumbo v6, "META-INF/INDEX.LIST"

    #@37
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v6

    #@3b
    .line 245
    if-nez v6, :cond_1

    #@3d
    .line 247
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    #@40
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v6

    #@44
    .line 245
    if-nez v6, :cond_1

    #@46
    .line 250
    sget-boolean v6, Lsun/misc/JarIndex;->metaInfFilenames:Z

    #@48
    if-nez v6, :cond_2

    #@4a
    .line 251
    invoke-virtual {p0, v3, v0}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    goto :goto_1

    #@4e
    .line 253
    :cond_2
    const-string/jumbo v6, "META-INF/"

    #@51
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@54
    move-result v6

    #@55
    if-nez v6, :cond_3

    #@57
    .line 254
    invoke-virtual {p0, v3, v0}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    goto :goto_1

    #@5b
    .line 255
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@5e
    move-result v6

    #@5f
    if-nez v6, :cond_1

    #@61
    .line 260
    invoke-direct {p0, v3, v0}, Lsun/misc/JarIndex;->addExplicit(Ljava/lang/String;Ljava/lang/String;)V

    #@64
    goto :goto_1

    #@65
    .line 265
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    #@68
    .line 233
    add-int/lit8 v4, v4, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 226
    .end local v0    # "currentJar":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/Enumeration;
    .end local v5    # "zrf":Ljava/util/zip/ZipFile;
    :cond_5
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    const-string/jumbo v2, "/"

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@6
    move-result v1

    #@7
    .local v1, "pos":I
    const/4 v2, -0x1

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 198
    const/4 v2, 0x0

    #@b
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 204
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    #@11
    invoke-direct {p0, v0, p2, v2}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #@14
    .line 207
    iget-object v2, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    #@16
    invoke-direct {p0, p2, v0, v2}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #@19
    .line 194
    return-void

    #@1a
    .line 200
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    #@1b
    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    .line 171
    .local v0, "jarFiles":Ljava/util/LinkedList;
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .end local v0    # "jarFiles":Ljava/util/LinkedList;
    check-cast v0, Ljava/util/LinkedList;

    #@9
    .local v0, "jarFiles":Ljava/util/LinkedList;
    if-nez v0, :cond_0

    #@b
    .line 174
    const-string/jumbo v2, "/"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@11
    move-result v1

    #@12
    .local v1, "pos":I
    const/4 v2, -0x1

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 175
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .end local v0    # "jarFiles":Ljava/util/LinkedList;
    check-cast v0, Ljava/util/LinkedList;

    #@22
    .line 178
    .end local v1    # "pos":I
    .restart local v0    # "jarFiles":Ljava/util/LinkedList;
    :cond_0
    return-object v0
.end method

.method public getJarFiles()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public merge(Lsun/misc/JarIndex;Ljava/lang/String;)V
    .locals 7
    .param p1, "toIndex"    # Lsun/misc/JarIndex;
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    iget-object v6, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v6

    #@6
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .line 346
    .local v2, "itr":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_2

    #@10
    .line 347
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 348
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Ljava/lang/String;

    #@1c
    .line 349
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/LinkedList;

    #@22
    .line 350
    .local v1, "from_list":Ljava/util/LinkedList;
    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v4

    #@26
    .line 351
    .local v4, "listItr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_0

    #@2c
    .line 352
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Ljava/lang/String;

    #@32
    .line 353
    .local v3, "jarName":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@34
    .line 354
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 356
    :cond_1
    invoke-virtual {p1, v5, v3}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    goto :goto_0

    #@3c
    .line 344
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "from_list":Ljava/util/LinkedList;
    .end local v3    # "jarName":Ljava/lang/String;
    .end local v4    # "listItr":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    new-instance v0, Ljava/io/BufferedReader;

    #@2
    .line 307
    new-instance v5, Ljava/io/InputStreamReader;

    #@4
    const-string/jumbo v6, "UTF8"

    #@7
    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@a
    .line 306
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@d
    .line 308
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    #@e
    .line 309
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    #@f
    .line 312
    .local v1, "currentJar":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    #@11
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@14
    .line 315
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "jars":Ljava/util/Vector;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@1a
    const-string/jumbo v5, ".jar"

    #@1d
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    .line 317
    .end local v1    # "currentJar":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    #@25
    .line 318
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_2

    #@2b
    .line 317
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    goto :goto_0

    #@30
    .line 321
    :cond_2
    const-string/jumbo v5, ".jar"

    #@33
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_3

    #@39
    .line 322
    move-object v1, v3

    #@3a
    .line 323
    .local v1, "currentJar":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_1

    #@3e
    .line 325
    .end local v1    # "currentJar":Ljava/lang/String;
    :cond_3
    move-object v4, v3

    #@3f
    .line 326
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    #@41
    invoke-direct {p0, v4, v1, v5}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #@44
    .line 327
    iget-object v5, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    #@46
    invoke-direct {p0, v1, v4, v5}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #@49
    goto :goto_1

    #@4a
    .line 331
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@4d
    move-result v5

    #@4e
    new-array v5, v5, [Ljava/lang/String;

    #@50
    invoke-virtual {v2, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    check-cast v5, [Ljava/lang/String;

    #@56
    iput-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    #@58
    .line 305
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    .line 277
    new-instance v5, Ljava/io/OutputStreamWriter;

    #@4
    const-string/jumbo v6, "UTF8"

    #@7
    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@a
    .line 276
    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@d
    .line 278
    .local v0, "bw":Ljava/io/BufferedWriter;
    const-string/jumbo v5, "JarIndex-Version: 1.0\n\n"

    #@10
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13
    .line 280
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    #@15
    if-eqz v5, :cond_2

    #@17
    .line 281
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    #@1a
    array-length v5, v5

    #@1b
    if-ge v1, v5, :cond_1

    #@1d
    .line 283
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    #@1f
    aget-object v2, v5, v1

    #@21
    .line 284
    .local v2, "jar":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    const-string/jumbo v6, "\n"

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@38
    .line 285
    iget-object v5, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    #@3a
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Ljava/util/LinkedList;

    #@40
    .line 286
    .local v3, "jarlist":Ljava/util/LinkedList;
    if-eqz v3, :cond_0

    #@42
    .line 287
    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v4

    #@46
    .line 288
    .local v4, "listitr":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_0

    #@4c
    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v5

    #@55
    check-cast v5, Ljava/lang/String;

    #@57
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    const-string/jumbo v6, "\n"

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@69
    goto :goto_1

    #@6a
    .line 292
    .end local v4    # "listitr":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v5, "\n"

    #@6d
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@70
    .line 281
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_0

    #@73
    .line 294
    .end local v2    # "jar":Ljava/lang/String;
    .end local v3    # "jarlist":Ljava/util/LinkedList;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    #@76
    .line 275
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
