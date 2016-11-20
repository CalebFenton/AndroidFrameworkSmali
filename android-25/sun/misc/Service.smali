.class public final Lsun/misc/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/Service$LazyIterator;
    }
.end annotation


# static fields
.field private static final prefix:Ljava/lang/String; = "META-INF/services/"


# direct methods
.method static synthetic -wrap0(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;
    .locals 1
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "returned"    # Ljava/util/Set;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lsun/misc/Service;->parse(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    new-instance v0, Lsun/misc/ServiceConfigurationError;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ": "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    new-instance v0, Lsun/misc/ServiceConfigurationError;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ": "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    #@21
    .line 139
    .local v0, "sce":Lsun/misc/ServiceConfigurationError;
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@24
    .line 140
    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "line"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ": "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    #@26
    .line 150
    return-void
.end method

.method public static installedProviders(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 426
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    #@5
    .line 427
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 428
    move-object v1, v0

    #@8
    .line 429
    .local v1, "prev":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@b
    move-result-object v0

    #@c
    goto :goto_0

    #@d
    .line 431
    .end local v1    # "prev":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {p0, v1}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method

.method private static parse(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;
    .locals 10
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "returned"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    const/4 v6, 0x0

    #@1
    .line 218
    .local v6, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    #@2
    .line 219
    .local v7, "r":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/ArrayList;

    #@4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 221
    .local v4, "names":Ljava/util/ArrayList;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@a
    move-result-object v6

    #@b
    .line 222
    .local v6, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    #@d
    new-instance v0, Ljava/io/InputStreamReader;

    #@f
    const-string/jumbo v1, "utf-8"

    #@12
    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@15
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 223
    .end local v7    # "r":Ljava/io/BufferedReader;
    .local v2, "r":Ljava/io/BufferedReader;
    const/4 v3, 0x1

    #@19
    .local v3, "lc":I
    :cond_0
    move-object v0, p0

    #@1a
    move-object v1, p1

    #@1b
    move-object v5, p2

    #@1c
    .line 224
    :try_start_1
    invoke-static/range {v0 .. v5}, Lsun/misc/Service;->parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;Ljava/util/Set;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    move-result v3

    #@20
    if-gez v3, :cond_0

    #@22
    .line 229
    if-eqz v2, :cond_1

    #@24
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    #@27
    .line 230
    :cond_1
    if-eqz v6, :cond_2

    #@29
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2c
    .line 235
    .end local v3    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v0

    #@30
    return-object v0

    #@31
    .line 231
    .restart local v3    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    #@32
    .line 232
    .local v9, "y":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, ": "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    #@49
    goto :goto_0

    #@4a
    .line 225
    .end local v2    # "r":Ljava/io/BufferedReader;
    .end local v3    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    #@4b
    .local v8, "x":Ljava/io/IOException;
    move-object v2, v7

    #@4c
    .line 226
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v2    # "r":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v1, ": "

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@63
    .line 229
    if-eqz v2, :cond_3

    #@65
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    #@68
    .line 230
    :cond_3
    if-eqz v6, :cond_2

    #@6a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@6d
    goto :goto_0

    #@6e
    .line 231
    :catch_2
    move-exception v9

    #@6f
    .line 232
    .restart local v9    # "y":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v1, ": "

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    #@86
    goto :goto_0

    #@87
    .line 227
    .end local v2    # "r":Ljava/io/BufferedReader;
    .end local v8    # "x":Ljava/io/IOException;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    #@88
    move-object v2, v7

    #@89
    .line 229
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v2    # "r":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v2, :cond_4

    #@8b
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    #@8e
    .line 230
    :cond_4
    if-eqz v6, :cond_5

    #@90
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@93
    .line 227
    :cond_5
    :goto_3
    throw v0

    #@94
    .line 231
    :catch_3
    move-exception v9

    #@95
    .line 232
    .restart local v9    # "y":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v5, ": "

    #@9d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-static {p0, v1}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    #@ac
    goto :goto_3

    #@ad
    .line 227
    .end local v9    # "y":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    #@ae
    goto :goto_2

    #@af
    .line 225
    .restart local v3    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    #@b0
    .restart local v8    # "x":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;Ljava/util/Set;)I
    .locals 7
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "r"    # Ljava/io/BufferedReader;
    .param p3, "lc"    # I
    .param p4, "names"    # Ljava/util/List;
    .param p5, "returned"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 164
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 165
    .local v3, "ln":Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    .line 166
    const/4 v5, -0x1

    #@8
    return v5

    #@9
    .line 168
    :cond_0
    const/16 v5, 0x23

    #@b
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v0

    #@f
    .line 169
    .local v0, "ci":I
    if-ltz v0, :cond_1

    #@11
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 170
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1c
    move-result v4

    #@1d
    .line 172
    .local v4, "n":I
    if-eqz v4, :cond_7

    #@1f
    .line 173
    const/16 v5, 0x20

    #@21
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v5

    #@25
    if-gez v5, :cond_2

    #@27
    const/16 v5, 0x9

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@2c
    move-result v5

    #@2d
    if-ltz v5, :cond_3

    #@2f
    .line 174
    :cond_2
    const-string/jumbo v5, "Illegal configuration-file syntax"

    #@32
    invoke-static {p0, p1, p3, v5}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    #@35
    .line 175
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->codePointAt(I)I

    #@38
    move-result v1

    #@39
    .line 176
    .local v1, "cp":I
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_4

    #@3f
    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "Illegal provider-class name: "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-static {p0, p1, p3, v5}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    #@56
    .line 178
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@59
    move-result v2

    #@5a
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    #@5c
    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    #@5f
    move-result v1

    #@60
    .line 180
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    #@63
    move-result v5

    #@64
    if-nez v5, :cond_5

    #@66
    const/16 v5, 0x2e

    #@68
    if-eq v1, v5, :cond_5

    #@6a
    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v6, "Illegal provider-class name: "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-static {p0, p1, p3, v5}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    #@81
    .line 178
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@84
    move-result v5

    #@85
    add-int/2addr v2, v5

    #@86
    goto :goto_0

    #@87
    .line 183
    :cond_6
    invoke-interface {p5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@8a
    move-result v5

    #@8b
    if-nez v5, :cond_7

    #@8d
    .line 184
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    .line 185
    invoke-interface {p5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@93
    .line 188
    .end local v1    # "cp":I
    .end local v2    # "i":I
    :cond_7
    add-int/lit8 v5, p3, 0x1

    #@95
    return v5
.end method

.method public static providers(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 389
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    new-instance v0, Lsun/misc/Service$LazyIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Lsun/misc/Service$LazyIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lsun/misc/Service$LazyIterator;)V

    #@6
    return-object v0
.end method
