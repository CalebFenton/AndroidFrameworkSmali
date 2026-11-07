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
.field blacklist jarFile:Ljava/util/jar/JarFile;

.field blacklist prefix:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/net/URL;)V
    .registers 9
    .param p1, "url"    # Ljava/net/URL;

    .line 199
    const-string v0, "jar"

    invoke-direct {p0}, Landroid/icu/impl/URLHandler;-><init>()V

    .line 201
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "ix":I
    if-ltz v1, :cond_1f

    .line 206
    iget-object v2, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    .line 209
    :cond_1f
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "protocol":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "urlStr":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 215
    .local v4, "idx":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_51

    .line 216
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object p1, v5

    .line 220
    .end local v3    # "urlStr":Ljava/lang/String;
    .end local v4    # "idx":I
    :cond_51
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    .line 221
    .local v0, "conn":Ljava/net/JarURLConnection;
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->jarFile:Ljava/util/jar/JarFile;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5d} :catch_5f

    .line 226
    .end local v0    # "conn":Ljava/net/JarURLConnection;
    .end local v1    # "ix":I
    .end local v2    # "protocol":Ljava/lang/String;
    nop

    .line 227
    return-void

    .line 223
    :catch_5f
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/icu/impl/URLHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_7e

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icurb jar error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
    .registers 9
    .param p1, "v"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z
    .param p3, "strip"    # Z

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 234
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 235
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 237
    .local v1, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_48

    .line 238
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 241
    iget-object v3, p0, Landroid/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .end local v2    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 243
    .local v2, "ix":I
    if-lez v2, :cond_39

    if-nez p2, :cond_39

    .line 244
    goto :goto_6

    .line 246
    :cond_39
    if-eqz p3, :cond_45

    const/4 v4, -0x1

    if-eq v2, v4, :cond_45

    .line 247
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 249
    :cond_45
    invoke-interface {p1, v3}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4a

    .line 252
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v2    # "ix":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_48
    goto :goto_6

    .line 256
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_49
    goto :goto_69

    .line 254
    :catch_4a
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/icu/impl/URLHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_69

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icurb jar error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_69
    :goto_69
    return-void
.end method
