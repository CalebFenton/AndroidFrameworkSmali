.class Landroid/icu/impl/URLHandler$JarURLHandler;
.super Landroid/icu/impl/URLHandler;
.source "URLHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/URLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JarURLHandler"
.end annotation


# instance fields
.field jarFile:Ljava/util/jar/JarFile;

.field prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 10
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Landroid/icu/impl/URLHandler;-><init>()V

    #@3
    .line 192
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@6
    move-result-object v7

    #@7
    iput-object v7, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    #@9
    .line 194
    iget-object v7, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    #@b
    const-string/jumbo v8, "!/"

    #@e
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@11
    move-result v3

    #@12
    .line 196
    .local v3, "ix":I
    if-ltz v3, :cond_0

    #@14
    .line 197
    iget-object v7, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    #@16
    add-int/lit8 v8, v3, 0x2

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    iput-object v7, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    #@1e
    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 201
    .local v4, "protocol":Ljava/lang/String;
    const-string/jumbo v7, "jar"

    #@25
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_1

    #@2b
    .line 204
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    .line 205
    .local v6, "urlStr":Ljava/lang/String;
    const-string/jumbo v7, ":"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@35
    move-result v2

    #@36
    .line 206
    .local v2, "idx":I
    const/4 v7, -0x1

    #@37
    if-eq v2, v7, :cond_1

    #@39
    .line 207
    new-instance v5, Ljava/net/URL;

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "jar"

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@56
    .end local p1    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    move-object p1, v5

    #@57
    .line 211
    .end local v2    # "idx":I
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlStr":Ljava/lang/String;
    .restart local p1    # "url":Ljava/net/URL;
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Ljava/net/JarURLConnection;

    #@5d
    .line 212
    .local v0, "conn":Ljava/net/JarURLConnection;
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@60
    move-result-object v7

    #@61
    iput-object v7, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->jarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 190
    return-void

    #@64
    .line 214
    .end local v0    # "conn":Ljava/net/JarURLConnection;
    .end local v3    # "ix":I
    .end local v4    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@65
    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/icu/impl/URLHandler;->-get0()Z

    #@68
    move-result v7

    #@69
    if-eqz v7, :cond_2

    #@6b
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6d
    new-instance v8, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v9, "icurb jar error: "

    #@75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@84
    .line 216
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@86
    new-instance v8, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v9, "jar error: "

    #@8e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v8

    #@9e
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v7
.end method


# virtual methods
.method public guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
    .locals 8
    .param p1, "v"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z
    .param p3, "strip"    # Z

    #@0
    .prologue
    .line 222
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->jarFile:Ljava/util/jar/JarFile;

    #@2
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    #@5
    move-result-object v1

    #@6
    .line 224
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_3

    #@c
    .line 225
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/util/jar/JarEntry;

    #@12
    .line 227
    .local v2, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->isDirectory()Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_0

    #@18
    .line 228
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 230
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 231
    iget-object v5, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    #@26
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@29
    move-result v5

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 232
    const/16 v5, 0x2f

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@33
    move-result v3

    #@34
    .line 233
    .local v3, "ix":I
    if-lez v3, :cond_1

    #@36
    if-eqz p2, :cond_0

    #@38
    .line 236
    :cond_1
    if-eqz p3, :cond_2

    #@3a
    const/4 v5, -0x1

    #@3b
    if-eq v3, v5, :cond_2

    #@3d
    .line 237
    add-int/lit8 v5, v3, 0x1

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 239
    :cond_2
    invoke-interface {p1, v4}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 244
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "ix":I
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@48
    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/icu/impl/URLHandler;->-get0()Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_3

    #@4e
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "icurb jar error: "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@67
    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method
