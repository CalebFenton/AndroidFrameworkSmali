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
.field private static final DEBUG:Z

.field public static final PROPNAME:Ljava/lang/String; = "urlhandler.props"

.field private static final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 23

    #@0
    .prologue
    .line 31
    const-string/jumbo v20, "URLHandler"

    #@3
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@6
    move-result v20

    #@7
    sput-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@9
    .line 34
    const/4 v8, 0x0

    #@a
    .line 36
    .local v8, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    const/4 v2, 0x0

    #@b
    .line 39
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-class v20, Landroid/icu/impl/URLHandler;

    #@d
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@10
    move-result-object v15

    #@11
    .line 40
    .local v15, "loader":Ljava/lang/ClassLoader;
    const-string/jumbo v20, "urlhandler.props"

    #@14
    move-object/from16 v0, v20

    #@16
    invoke-virtual {v15, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@19
    move-result-object v11

    #@1a
    .line 42
    .local v11, "is":Ljava/io/InputStream;
    if-eqz v11, :cond_4

    #@1c
    .line 43
    const/16 v20, 0x1

    #@1e
    move/from16 v0, v20

    #@20
    new-array v0, v0, [Ljava/lang/Class;

    #@22
    move-object/from16 v17, v0

    #@24
    const-class v20, Ljava/net/URL;

    #@26
    const/16 v21, 0x0

    #@28
    aput-object v20, v17, v21

    #@2a
    .line 44
    .local v17, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v3, Ljava/io/BufferedReader;

    #@2c
    new-instance v20, Ljava/io/InputStreamReader;

    #@2e
    move-object/from16 v0, v20

    #@30
    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@33
    move-object/from16 v0, v20

    #@35
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@38
    .line 46
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .end local v2    # "br":Ljava/io/BufferedReader;
    move-result-object v14

    #@3c
    .local v14, "line":Ljava/lang/String;
    move-object v9, v8

    #@3d
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v9, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_0
    if-eqz v14, :cond_3

    #@3f
    .line 47
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@42
    move-result-object v14

    #@43
    .line 49
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@46
    move-result v20

    #@47
    if-eqz v20, :cond_0

    #@49
    const/16 v20, 0x0

    #@4b
    move/from16 v0, v20

    #@4d
    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@50
    move-result v20

    #@51
    const/16 v21, 0x23

    #@53
    move/from16 v0, v20

    #@55
    move/from16 v1, v21

    #@57
    if-ne v0, v1, :cond_2

    #@59
    :cond_0
    move-object v8, v9

    #@5a
    .line 46
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v8, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    move-result-object v14

    #@5e
    move-object v9, v8

    #@5f
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_0

    #@60
    .line 53
    :cond_2
    const/16 v20, 0x3d

    #@62
    :try_start_4
    move/from16 v0, v20

    #@64
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    #@67
    move-result v12

    #@68
    .line 55
    .local v12, "ix":I
    const/16 v20, -0x1

    #@6a
    move/from16 v0, v20

    #@6c
    if-ne v12, v0, :cond_6

    #@6e
    .line 56
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@70
    if-eqz v20, :cond_3

    #@72
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@74
    new-instance v21, Ljava/lang/StringBuilder;

    #@76
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v22, "bad urlhandler line: \'"

    #@7c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v21

    #@80
    move-object/from16 v0, v21

    #@82
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v21

    #@86
    const-string/jumbo v22, "\'"

    #@89
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v21

    #@8d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v21

    #@91
    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@94
    .line 83
    .end local v12    # "ix":I
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@97
    move-object v2, v3

    #@98
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    move-object v8, v9

    #@99
    .line 88
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    if-eqz v2, :cond_5

    #@9b
    .line 90
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    #@9e
    .line 96
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v15    # "loader":Ljava/lang/ClassLoader;
    .local v18, "t":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    sput-object v8, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    #@a0
    .line 26
    return-void

    #@a1
    .line 60
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "ix":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "loader":Ljava/lang/ClassLoader;
    .restart local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    const/16 v20, 0x0

    #@a3
    :try_start_6
    move/from16 v0, v20

    #@a5
    invoke-virtual {v14, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a8
    move-result-object v20

    #@a9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@ac
    move-result-object v13

    #@ad
    .line 61
    .local v13, "key":Ljava/lang/String;
    add-int/lit8 v20, v12, 0x1

    #@af
    move/from16 v0, v20

    #@b1
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b4
    move-result-object v20

    #@b5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@b8
    move-result-object v19

    #@b9
    .line 64
    .local v19, "value":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@bc
    move-result-object v4

    #@bd
    .line 65
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v20, "get"

    #@c0
    move-object/from16 v0, v20

    #@c2
    move-object/from16 v1, v17

    #@c4
    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@c7
    move-result-object v16

    #@c8
    .line 67
    .local v16, "m":Ljava/lang/reflect/Method;
    if-nez v9, :cond_9

    #@ca
    .line 68
    new-instance v8, Ljava/util/HashMap;

    #@cc
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@cf
    .line 71
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_3
    :try_start_8
    move-object/from16 v0, v16

    #@d1
    invoke-interface {v8, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d4
    goto :goto_1

    #@d5
    .line 73
    :catch_0
    move-exception v5

    #@d6
    .line 74
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "m":Ljava/lang/reflect/Method;
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_9
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@d8
    if-eqz v20, :cond_1

    #@da
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@dc
    move-object/from16 v0, v20

    #@de
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@e1
    goto/16 :goto_1

    #@e3
    .line 85
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v12    # "ix":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catch_1
    move-exception v18

    #@e4
    .restart local v18    # "t":Ljava/lang/Throwable;
    move-object v2, v3

    #@e5
    .line 86
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v15    # "loader":Ljava/lang/ClassLoader;
    .end local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_5
    :try_start_a
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@e7
    if-eqz v20, :cond_7

    #@e9
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@eb
    move-object/from16 v0, v20

    #@ed
    move-object/from16 v1, v18

    #@ef
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@f2
    .line 88
    :cond_7
    if-eqz v2, :cond_5

    #@f4
    .line 90
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    #@f7
    goto :goto_2

    #@f8
    .line 91
    :catch_2
    move-exception v10

    #@f9
    .local v10, "ignored":Ljava/io/IOException;
    goto :goto_2

    #@fa
    .line 79
    .end local v10    # "ignored":Ljava/io/IOException;
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "ix":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "loader":Ljava/lang/ClassLoader;
    .restart local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v19    # "value":Ljava/lang/String;
    :catch_3
    move-exception v7

    #@fb
    .local v7, "e":Ljava/lang/SecurityException;
    move-object v8, v9

    #@fc
    .line 80
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_6
    :try_start_c
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@fe
    if-eqz v20, :cond_1

    #@100
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@102
    move-object/from16 v0, v20

    #@104
    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@107
    goto/16 :goto_1

    #@109
    .line 87
    .end local v7    # "e":Ljava/lang/SecurityException;
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v12    # "ix":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v20

    #@10a
    move-object v2, v3

    #@10b
    .line 88
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v15    # "loader":Ljava/lang/ClassLoader;
    .end local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_7
    if-eqz v2, :cond_8

    #@10d
    .line 90
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    #@110
    .line 87
    .restart local v10    # "ignored":Ljava/io/IOException;
    :cond_8
    :goto_8
    throw v20

    #@111
    .line 76
    .end local v10    # "ignored":Ljava/io/IOException;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "ix":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "loader":Ljava/lang/ClassLoader;
    .restart local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v19    # "value":Ljava/lang/String;
    :catch_4
    move-exception v6

    #@112
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    move-object v8, v9

    #@113
    .line 77
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_9
    :try_start_e
    sget-boolean v20, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@115
    if-eqz v20, :cond_1

    #@117
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@119
    move-object/from16 v0, v20

    #@11b
    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@11e
    goto/16 :goto_1

    #@120
    .line 91
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v12    # "ix":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v19    # "value":Ljava/lang/String;
    :catch_5
    move-exception v10

    #@121
    .restart local v10    # "ignored":Ljava/io/IOException;
    goto/16 :goto_2

    #@123
    .end local v10    # "ignored":Ljava/io/IOException;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v15    # "loader":Ljava/lang/ClassLoader;
    :catch_6
    move-exception v10

    #@124
    .restart local v10    # "ignored":Ljava/io/IOException;
    goto :goto_8

    #@125
    .line 87
    .end local v10    # "ignored":Ljava/io/IOException;
    .restart local v18    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v20

    #@126
    goto :goto_7

    #@127
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "loader":Ljava/lang/ClassLoader;
    .restart local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catchall_2
    move-exception v20

    #@128
    move-object v2, v3

    #@129
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    #@12a
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_7

    #@12b
    .line 85
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "loader":Ljava/lang/ClassLoader;
    .end local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v2, "br":Ljava/io/BufferedReader;
    .local v8, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_7
    move-exception v18

    #@12c
    .restart local v18    # "t":Ljava/lang/Throwable;
    goto :goto_5

    #@12d
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "loader":Ljava/lang/ClassLoader;
    .restart local v17    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_8
    move-exception v18

    #@12e
    .restart local v18    # "t":Ljava/lang/Throwable;
    move-object v2, v3

    #@12f
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    move-object v8, v9

    #@130
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v8, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_5

    #@131
    .line 73
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v12    # "ix":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :catch_9
    move-exception v5

    #@132
    .restart local v5    # "e":Ljava/lang/ClassNotFoundException;
    move-object v8, v9

    #@133
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_4

    #@134
    .line 76
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "m":Ljava/lang/reflect/Method;
    :catch_a
    move-exception v6

    #@135
    .restart local v6    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_9

    #@136
    .line 79
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_b
    move-exception v7

    #@137
    .restart local v7    # "e":Ljava/lang/SecurityException;
    goto :goto_6

    #@138
    .end local v7    # "e":Ljava/lang/SecurityException;
    .end local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_9
    move-object v8, v9

    #@139
    .end local v9    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v8    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .locals 8
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 100
    if-nez p0, :cond_0

    #@3
    .line 101
    return-object v6

    #@4
    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 106
    .local v5, "protocol":Ljava/lang/String;
    sget-object v6, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 107
    sget-object v6, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    #@e
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Ljava/lang/reflect/Method;

    #@14
    .line 109
    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    #@16
    .line 111
    const/4 v6, 0x1

    #@17
    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    #@19
    const/4 v7, 0x0

    #@1a
    aput-object p0, v6, v7

    #@1c
    const/4 v7, 0x0

    #@1d
    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/icu/impl/URLHandler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 113
    .local v3, "handler":Landroid/icu/impl/URLHandler;
    if-eqz v3, :cond_1

    #@25
    .line 114
    return-object v3

    #@26
    .line 123
    .end local v3    # "handler":Landroid/icu/impl/URLHandler;
    :catch_0
    move-exception v2

    #@27
    .line 124
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v6, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@29
    if-eqz v6, :cond_1

    #@2b
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d
    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@30
    .line 129
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/URLHandler;->getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;

    #@33
    move-result-object v6

    #@34
    return-object v6

    #@35
    .line 120
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    #@36
    .line 121
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v6, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@38
    if-eqz v6, :cond_1

    #@3a
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@3f
    goto :goto_0

    #@40
    .line 117
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@41
    .line 118
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v6, Landroid/icu/impl/URLHandler;->DEBUG:Z

    #@43
    if-eqz v6, :cond_1

    #@45
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@47
    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@4a
    goto :goto_0
.end method

.method protected static getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 133
    const/4 v1, 0x0

    #@1
    .line 135
    .local v1, "handler":Landroid/icu/impl/URLHandler;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 137
    .local v3, "protocol":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "file"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 138
    new-instance v2, Landroid/icu/impl/URLHandler$FileURLHandler;

    #@10
    invoke-direct {v2, p0}, Landroid/icu/impl/URLHandler$FileURLHandler;-><init>(Ljava/net/URL;)V

    #@13
    .local v2, "handler":Landroid/icu/impl/URLHandler;
    move-object v1, v2

    #@14
    .line 145
    .end local v1    # "handler":Landroid/icu/impl/URLHandler;
    .end local v2    # "handler":Landroid/icu/impl/URLHandler;
    :cond_0
    :goto_0
    return-object v1

    #@15
    .line 139
    .restart local v1    # "handler":Landroid/icu/impl/URLHandler;
    :cond_1
    const-string/jumbo v4, "jar"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_2

    #@1e
    const-string/jumbo v4, "wsjar"

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 140
    :cond_2
    new-instance v2, Landroid/icu/impl/URLHandler$JarURLHandler;

    #@29
    invoke-direct {v2, p0}, Landroid/icu/impl/URLHandler$JarURLHandler;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .restart local v2    # "handler":Landroid/icu/impl/URLHandler;
    move-object v1, v2

    #@2d
    .end local v2    # "handler":Landroid/icu/impl/URLHandler;
    .local v1, "handler":Landroid/icu/impl/URLHandler;
    goto :goto_0

    #@2e
    .line 142
    .local v1, "handler":Landroid/icu/impl/URLHandler;
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public guide(Landroid/icu/impl/URLHandler$URLVisitor;Z)V
    .locals 1
    .param p1, "visitor"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z

    #@0
    .prologue
    .line 252
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/URLHandler;->guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V

    #@4
    .line 250
    return-void
.end method

.method public abstract guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
.end method
