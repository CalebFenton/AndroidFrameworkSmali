.class public Ljdk/internal/util/jar/JarIndex;
.super Ljava/lang/Object;
.source "JarIndex.java"


# static fields
.field public static final blacklist INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"

.field private static final blacklist metaInfFilenames:Z


# instance fields
.field private blacklist indexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist jarFiles:[Ljava/lang/String;

.field private blacklist jarMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 78
    nop

    .line 79
    const-string v0, "sun.misc.JarIndex.metaInfFilenames"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ljdk/internal/util/jar/JarIndex;->metaInfFilenames:Z

    .line 78
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdk/internal/util/jar/JarIndex;->indexMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdk/internal/util/jar/JarIndex;->jarMap:Ljava/util/HashMap;

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljdk/internal/util/jar/JarIndex;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Ljdk/internal/util/jar/JarIndex;->read(Ljava/io/InputStream;)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljdk/internal/util/jar/JarIndex;-><init>()V

    .line 106
    iput-object p1, p0, Ljdk/internal/util/jar/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Ljdk/internal/util/jar/JarIndex;->parseJars([Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private blacklist addMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "jarItem"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Ljdk/internal/util/jar/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Ljdk/internal/util/jar/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 201
    iget-object v0, p0, Ljdk/internal/util/jar/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1, v0}, Ljdk/internal/util/jar/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 202
    return-void
.end method

.method private blacklist addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 139
    .local p3, "t":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 140
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    .line 141
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 142
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 144
    :cond_15
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 145
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static blacklist getJarIndex(Ljava/util/jar/JarFile;)Ljdk/internal/util/jar/JarIndex;
    .registers 5
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "index":Ljdk/internal/util/jar/JarIndex;
    const-string v1, "META-INF/INDEX.LIST"

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 120
    .local v1, "e":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_13

    .line 121
    new-instance v2, Ljdk/internal/util/jar/JarIndex;

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljdk/internal/util/jar/JarIndex;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 123
    :cond_13
    return-object v0
.end method

.method private blacklist parseJars([Ljava/lang/String;)V
    .registers 10
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    if-nez p1, :cond_3

    .line 210
    return-void

    .line 213
    :cond_3
    const/4 v0, 0x0

    .line 215
    .local v0, "currentJar":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_6b

    .line 216
    aget-object v0, p1, v1

    .line 217
    new-instance v2, Ljava/util/zip/ZipFile;

    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 218
    const/16 v4, 0x2f

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "zrf":Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 221
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 222
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 223
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, "META-INF/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 228
    const-string v7, "META-INF/INDEX.LIST"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 229
    const-string v7, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 230
    const-string v7, "META-INF/versions/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 231
    goto :goto_1b

    .line 233
    :cond_4c
    sget-boolean v7, Ljdk/internal/util/jar/JarIndex;->metaInfFilenames:Z

    if-eqz v7, :cond_61

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    goto :goto_61

    .line 235
    :cond_57
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_64

    .line 240
    invoke-direct {p0, v5, v0}, Ljdk/internal/util/jar/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 234
    :cond_61
    :goto_61
    invoke-virtual {p0, v5, v0}, Ljdk/internal/util/jar/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_64
    :goto_64
    goto :goto_1b

    .line 244
    :cond_65
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 215
    .end local v2    # "zrf":Ljava/util/zip/ZipFile;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 246
    .end local v1    # "i":I
    :cond_6b
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .line 182
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    goto :goto_11

    .line 185
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_10
    move-object v0, p1

    .line 188
    .restart local v0    # "packageName":Ljava/lang/String;
    :goto_11
    invoke-direct {p0, v0, p2}, Ljdk/internal/util/jar/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "jarFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v1, p0, Ljdk/internal/util/jar/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    move-object v0, v1

    if-nez v1, :cond_24

    .line 159
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    move v2, v1

    .local v2, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_24

    .line 160
    iget-object v1, p0, Ljdk/internal/util/jar/JarIndex;->indexMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/LinkedList;

    .line 163
    .end local v2    # "pos":I
    :cond_24
    return-object v0
.end method

.method public blacklist getJarFiles()[Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Ljdk/internal/util/jar/JarIndex;->jarFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist merge(Ljdk/internal/util/jar/JarIndex;Ljava/lang/String;)V
    .registers 9
    .param p1, "toIndex"    # Ljdk/internal/util/jar/JarIndex;
    .param p2, "path"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Ljdk/internal/util/jar/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 324
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 326
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 328
    .local v3, "from_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 329
    .local v4, "listItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 330
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 331
    .local v5, "jarName":Ljava/lang/String;
    if-eqz p2, :cond_38

    .line 332
    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    :cond_38
    invoke-direct {p1, v2, v5}, Ljdk/internal/util/jar/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v5    # "jarName":Ljava/lang/String;
    goto :goto_26

    .line 336
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "from_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v4    # "listItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3c
    goto :goto_a

    .line 337
    :cond_3d
    return-void
.end method

.method public blacklist read(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 287
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 288
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 291
    .local v2, "currentJar":Ljava/lang/String;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 294
    .local v3, "jars":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    const-string v5, ".jar"

    if-eqz v4, :cond_23

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_13

    .line 296
    :cond_23
    :goto_23
    if-eqz v1, :cond_40

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 298
    goto :goto_3b

    .line 300
    :cond_2c
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 301
    move-object v2, v1

    .line 302
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 304
    :cond_37
    move-object v4, v1

    .line 305
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Ljdk/internal/util/jar/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v4    # "name":Ljava/lang/String;
    :goto_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 309
    :cond_40
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Ljdk/internal/util/jar/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 310
    return-void
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 257
    .local v0, "bw":Ljava/io/BufferedWriter;
    const-string v1, "JarIndex-Version: 1.0\n\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Ljdk/internal/util/jar/JarIndex;->jarFiles:[Ljava/lang/String;

    if-eqz v1, :cond_6d

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Ljdk/internal/util/jar/JarIndex;->jarFiles:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6a

    .line 262
    iget-object v2, p0, Ljdk/internal/util/jar/JarIndex;->jarFiles:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 263
    .local v2, "jar":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Ljdk/internal/util/jar/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 265
    .local v3, "jarlist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v3, :cond_64

    .line 266
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 267
    .local v5, "listitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_43

    .line 271
    .end local v5    # "listitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_64
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 260
    .end local v2    # "jar":Ljava/lang/String;
    .end local v3    # "jarlist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 273
    .end local v1    # "i":I
    :cond_6a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 275
    :cond_6d
    return-void
.end method
