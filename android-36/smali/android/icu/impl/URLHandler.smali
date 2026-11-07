.class public abstract Landroid/icu/impl/URLHandler;
.super Ljava/lang/Object;
.source "URLHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/URLHandler$FileURLHandler;,
        Landroid/icu/impl/URLHandler$JarURLHandler;,
        Landroid/icu/impl/URLHandler$URLVisitor;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist PROPNAME:Ljava/lang/String; = "urlhandler.props"

.field private static final blacklist handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/icu/impl/URLHandler;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 13

    .line 37
    const-string v0, "URLHandler"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/URLHandler;->DEBUG:Z

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    const/4 v1, 0x0

    .line 45
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_a
    const-class v2, Landroid/icu/impl/URLHandler;

    invoke-static {v2}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 46
    .local v2, "loader":Ljava/lang/ClassLoader;
    const-string v3, "urlhandler.props"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 48
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_c3

    .line 49
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/net/URL;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 50
    .local v4, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    :goto_2f
    if-eqz v5, :cond_c0

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 55
    .end local v5    # "line":Ljava/lang/String;
    .local v7, "line":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_ba

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x23

    if-ne v5, v8, :cond_45

    .line 56
    goto/16 :goto_ba

    .line 59
    :cond_45
    const/16 v5, 0x3d

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 61
    .local v5, "ix":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_71

    .line 62
    sget-boolean v6, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v6, :cond_c0

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad urlhandler line: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c0

    .line 66
    :cond_71
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "key":Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9
    :try_end_83
    .catchall {:try_start_a .. :try_end_83} :catchall_cb

    .line 70
    .local v9, "value":Ljava/lang/String;
    :try_start_83
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 71
    .local v10, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "get"

    invoke-virtual {v10, v11, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 73
    .local v11, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_95

    .line 74
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object v0, v12

    .line 77
    :cond_95
    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_83 .. :try_end_98} :catch_af
    .catch Ljava/lang/NoSuchMethodException; {:try_start_83 .. :try_end_98} :catch_a4
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_98} :catch_99
    .catchall {:try_start_83 .. :try_end_98} :catchall_cb

    goto :goto_b9

    .line 85
    .end local v10    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "m":Ljava/lang/reflect/Method;
    :catch_99
    move-exception v10

    .line 86
    .local v10, "e":Ljava/lang/SecurityException;
    :try_start_9a
    sget-boolean v11, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v11, :cond_ba

    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_ba

    .line 82
    .end local v10    # "e":Ljava/lang/SecurityException;
    :catch_a4
    move-exception v10

    .line 83
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    sget-boolean v11, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v11, :cond_b9

    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_b9

    .line 79
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    :catch_af
    move-exception v10

    .line 80
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v11, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v11, :cond_b9

    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 87
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_b9
    :goto_b9
    nop

    .line 52
    .end local v5    # "ix":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_ba
    :goto_ba
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .end local v7    # "line":Ljava/lang/String;
    .local v5, "line":Ljava/lang/String;
    goto/16 :goto_2f

    .line 89
    .end local v5    # "line":Ljava/lang/String;
    :cond_c0
    :goto_c0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c3
    .catchall {:try_start_9a .. :try_end_c3} :catchall_cb

    .line 94
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c3
    if-eqz v1, :cond_db

    .line 96
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 98
    :goto_c8
    goto :goto_db

    .line 97
    :catch_c9
    move-exception v2

    goto :goto_c8

    .line 91
    :catchall_cb
    move-exception v2

    .line 92
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_cc
    sget-boolean v3, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v3, :cond_d5

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_de

    .line 94
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_d5
    if-eqz v1, :cond_db

    .line 96
    :try_start_d7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_c9

    goto :goto_c8

    .line 102
    :cond_db
    :goto_db
    sput-object v0, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    .line 103
    .end local v0    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v1    # "br":Ljava/io/BufferedReader;
    return-void

    .line 94
    .restart local v0    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_de
    move-exception v2

    if-eqz v1, :cond_e6

    .line 96
    :try_start_e1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    .line 98
    goto :goto_e6

    .line 97
    :catch_e5
    move-exception v3

    .line 100
    :cond_e6
    :goto_e6
    throw v2
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .registers 5
    .param p0, "url"    # Ljava/net/URL;

    .line 106
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 107
    return-object v0

    .line 110
    :cond_4
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    if-eqz v2, :cond_45

    .line 113
    sget-object v2, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 115
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_45

    .line 117
    :try_start_16
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/URLHandler;
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_20} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_20} :catch_24

    .line 119
    .local v0, "handler":Landroid/icu/impl/URLHandler;
    if-eqz v0, :cond_23

    .line 120
    return-object v0

    .line 119
    .end local v0    # "handler":Landroid/icu/impl/URLHandler;
    :cond_23
    goto :goto_44

    .line 129
    :catch_24
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v3, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v3, :cond_45

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_45

    .line 126
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2f
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v3, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v3, :cond_44

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_44

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3a
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v3, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v3, :cond_44

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 131
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_44
    :goto_44
    nop

    .line 135
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_45
    :goto_45
    invoke-static {p0}, Landroid/icu/impl/URLHandler;->getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "handler":Landroid/icu/impl/URLHandler;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "protocol":Ljava/lang/String;
    :try_start_5
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 144
    new-instance v2, Landroid/icu/impl/URLHandler$FileURLHandler;

    invoke-direct {v2, p0}, Landroid/icu/impl/URLHandler$FileURLHandler;-><init>(Ljava/net/URL;)V

    move-object v0, v2

    goto :goto_2a

    .line 145
    :cond_14
    const-string v2, "jar"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "wsjar"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 146
    :cond_24
    new-instance v2, Landroid/icu/impl/URLHandler$JarURLHandler;

    invoke-direct {v2, p0}, Landroid/icu/impl/URLHandler$JarURLHandler;-><init>(Ljava/net/URL;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2b

    move-object v0, v2

    .line 150
    :cond_2a
    :goto_2a
    goto :goto_2c

    .line 148
    :catch_2b
    move-exception v2

    .line 151
    :goto_2c
    return-object v0
.end method


# virtual methods
.method public blacklist guide(Landroid/icu/impl/URLHandler$URLVisitor;Z)V
    .registers 4
    .param p1, "visitor"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/URLHandler;->guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V

    .line 263
    return-void
.end method

.method public abstract blacklist guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
.end method
