.class public Landroid/content/type/DefaultMimeMapFactory;
.super Ljava/lang/Object;
.source "DefaultMimeMapFactory.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static blacklist create()Llibcore/content/type/MimeMap;
    .registers 2

    .line 49
    const-class v0, Landroid/content/type/DefaultMimeMapFactory;

    .line 51
    .local v0, "c":Ljava/lang/Class;
    new-instance v1, Landroid/content/type/DefaultMimeMapFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/content/type/DefaultMimeMapFactory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/content/type/DefaultMimeMapFactory;->create(Ljava/util/function/Function;)Llibcore/content/type/MimeMap;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist create(Ljava/util/function/Function;)Llibcore/content/type/MimeMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;)",
            "Llibcore/content/type/MimeMap;"
        }
    .end annotation

    .line 61
    .local p0, "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    invoke-static {}, Llibcore/content/type/MimeMap;->builder()Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 70
    .local v0, "builder":Llibcore/content/type/MimeMap$Builder;
    const-string v1, "debian.mime.types"

    invoke-static {v0, p0, v1}, Landroid/content/type/DefaultMimeMapFactory;->parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 71
    const-string v1, "android.mime.types"

    invoke-static {v0, p0, v1}, Landroid/content/type/DefaultMimeMapFactory;->parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "vendor.mime.types"

    invoke-static {v0, p0, v1}, Landroid/content/type/DefaultMimeMapFactory;->parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Llibcore/content/type/MimeMap$Builder;->build()Llibcore/content/type/MimeMap;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$create$0(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 13
    .param p0, "builder"    # Llibcore/content/type/MimeMap$Builder;
    .param p2, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llibcore/content/type/MimeMap$Builder;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    .local p1, "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_98
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_98

    .line 79
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_8c

    .line 81
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_16
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v2, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_78

    .line 83
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 86
    const/4 v3, 0x0

    .line 88
    .local v3, "startIdx":I
    :cond_28
    const/16 v5, 0x20

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 89
    .local v5, "endIdx":I
    if-gez v5, :cond_35

    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 92
    :cond_35
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "spec":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5f

    .line 96
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v3, v5, 0x1

    .line 98
    .end local v5    # "endIdx":I
    .end local v6    # "spec":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_28

    .line 99
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v2, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Llibcore/content/type/MimeMap$Builder;

    .line 100
    nop

    .end local v3    # "startIdx":I
    goto :goto_1d

    .line 94
    .restart local v3    # "startIdx":I
    .restart local v5    # "endIdx":I
    .restart local v6    # "spec":Ljava/lang/String;
    :cond_5f
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "builder":Llibcore/content/type/MimeMap$Builder;
    .end local p1    # "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    .end local p2    # "resourceName":Ljava/lang/String;
    throw v7
    :try_end_78
    .catchall {:try_start_16 .. :try_end_78} :catchall_82

    .line 101
    .end local v2    # "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "startIdx":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "endIdx":I
    .end local v6    # "spec":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "builder":Llibcore/content/type/MimeMap$Builder;
    .restart local p1    # "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    .restart local p2    # "resourceName":Ljava/lang/String;
    :cond_78
    :try_start_78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_8c

    .end local v1    # "reader":Ljava/io/BufferedReader;
    if-eqz v0, :cond_80

    :try_start_7d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_98
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_80} :catch_98

    .line 103
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_80
    nop

    .line 104
    return-void

    .line 78
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_82
    move-exception v2

    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v3

    :try_start_88
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "builder":Llibcore/content/type/MimeMap$Builder;
    .end local p1    # "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    .end local p2    # "resourceName":Ljava/lang/String;
    :goto_8b
    throw v2
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "builder":Llibcore/content/type/MimeMap$Builder;
    .restart local p1    # "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    .restart local p2    # "resourceName":Ljava/lang/String;
    :catchall_8c
    move-exception v1

    if-eqz v0, :cond_97

    :try_start_8f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception v2

    :try_start_94
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "builder":Llibcore/content/type/MimeMap$Builder;
    .end local p1    # "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    .end local p2    # "resourceName":Ljava/lang/String;
    :cond_97
    :goto_97
    throw v1
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_98} :catch_98
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_98} :catch_98

    .line 101
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "builder":Llibcore/content/type/MimeMap$Builder;
    .restart local p1    # "resourceSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/io/InputStream;>;"
    .restart local p2    # "resourceName":Ljava/lang/String;
    :catch_98
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
