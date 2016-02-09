.class public Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
.super Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
.source "ResourceBasedPeriodFormatterDataService.java"


# static fields
.field private static final PATH:Ljava/lang/String; = "data/"

.field private static final singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;


# instance fields
.field private availableLocales:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/duration/impl/PeriodFormatterData;",
            ">;"
        }
    .end annotation
.end field

.field private lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private lastLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;-><init>()V

    #@4
    .line 36
    iput-object v6, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@6
    .line 37
    iput-object v6, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    #@8
    .line 38
    new-instance v6, Ljava/util/HashMap;

    #@a
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v6, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    #@f
    .line 56
    new-instance v4, Ljava/util/ArrayList;

    #@11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 57
    .local v4, "localeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v6

    #@18
    const-string/jumbo v7, "data/index.txt"

    #@1b
    invoke-static {v6, v7}, Landroid/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    #@1e
    move-result-object v3

    #@1f
    .line 60
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    #@21
    new-instance v6, Ljava/io/InputStreamReader;

    #@23
    .line 61
    const-string/jumbo v7, "UTF-8"

    #@26
    .line 60
    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@29
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@2c
    .line 62
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    #@2d
    .line 63
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .local v5, "string":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@33
    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 65
    const-string/jumbo v6, "#"

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3d
    move-result v6

    #@3e
    if-nez v6, :cond_0

    #@40
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@43
    move-result v6

    #@44
    if-eqz v6, :cond_0

    #@46
    .line 68
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 71
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "string":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@4b
    .line 72
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    #@4d
    new-instance v7, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v8, "IO Error reading data/index.txt: "

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    .line 73
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@68
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@6a
    .line 76
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@6d
    .line 74
    :goto_1
    throw v6

    #@6e
    .line 70
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "string":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71
    .line 76
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@74
    .line 80
    :goto_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@77
    move-result-object v6

    #@78
    iput-object v6, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    #@7a
    .line 55
    return-void

    #@7b
    .line 77
    :catch_1
    move-exception v2

    #@7c
    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_2

    #@7d
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ignored":Ljava/io/IOException;
    .end local v5    # "string":Ljava/lang/String;
    :catch_2
    move-exception v2

    #@7e
    .restart local v2    # "ignored":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static getInstance()Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .locals 1

    #@0
    .prologue
    .line 49
    sget-object v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    #@2
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .locals 12
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, -0x1

    #@2
    .line 85
    const/16 v9, 0x40

    #@4
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v8

    #@8
    .line 86
    .local v8, "x":I
    if-eq v8, v10, :cond_0

    #@a
    .line 87
    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    .line 90
    :cond_0
    monitor-enter p0

    #@f
    .line 91
    :try_start_0
    iget-object v9, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    #@11
    if-eqz v9, :cond_1

    #@13
    iget-object v9, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    #@15
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v9

    #@19
    if-eqz v9, :cond_1

    #@1b
    .line 92
    iget-object v9, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    return-object v9

    #@1f
    .line 95
    :cond_1
    :try_start_1
    iget-object v9, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    #@21
    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@27
    .line 96
    .local v4, "ld":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    if-nez v4, :cond_6

    #@29
    .line 97
    move-object v5, p1

    #@2a
    .line 98
    .local v5, "ln":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    #@2c
    invoke-interface {v9, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@2f
    move-result v9

    #@30
    if-nez v9, :cond_4

    #@32
    .line 99
    const-string/jumbo v9, "_"

    #@35
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@38
    move-result v3

    #@39
    .line 100
    .local v3, "ix":I
    if-le v3, v10, :cond_2

    #@3b
    .line 101
    const/4 v9, 0x0

    #@3c
    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    goto :goto_0

    #@41
    .line 102
    :cond_2
    const-string/jumbo v9, "test"

    #@44
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v9

    #@48
    if-nez v9, :cond_3

    #@4a
    .line 103
    const-string/jumbo v5, "test"

    #@4d
    goto :goto_0

    #@4e
    .line 105
    :cond_3
    const/4 v5, 0x0

    #@4f
    .line 109
    .end local v3    # "ix":I
    .end local v5    # "ln":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_7

    #@51
    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v10, "data/pfd_"

    #@59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    const-string/jumbo v10, ".xml"

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    move-result-object v6

    #@6c
    .line 112
    .local v6, "name":Ljava/lang/String;
    :try_start_2
    new-instance v7, Ljava/io/InputStreamReader;

    #@6e
    .line 113
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getClass()Ljava/lang/Class;

    #@71
    move-result-object v9

    #@72
    invoke-static {v9, v6}, Landroid/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    #@75
    move-result-object v9

    #@76
    const-string/jumbo v10, "UTF-8"

    #@79
    .line 112
    invoke-direct {v7, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@7c
    .line 114
    .local v7, "reader":Ljava/io/InputStreamReader;
    new-instance v9, Landroid/icu/impl/duration/impl/XMLRecordReader;

    #@7e
    invoke-direct {v9, v7}, Landroid/icu/impl/duration/impl/XMLRecordReader;-><init>(Ljava/io/Reader;)V

    #@81
    invoke-static {v5, v9}, Landroid/icu/impl/duration/impl/DataRecord;->read(Ljava/lang/String;Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord;

    #@84
    move-result-object v0

    #@85
    .line 115
    .local v0, "dr":Landroid/icu/impl/duration/impl/DataRecord;
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    #@88
    .line 116
    if-eqz v0, :cond_5

    #@8a
    .line 126
    new-instance v4, Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@8c
    .end local v4    # "ld":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    invoke-direct {v4, p1, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;-><init>(Ljava/lang/String;Landroid/icu/impl/duration/impl/DataRecord;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8f
    .line 144
    .restart local v4    # "ld":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    :cond_5
    :try_start_3
    iget-object v9, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    #@91
    invoke-interface {v9, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    .line 146
    .end local v0    # "dr":Landroid/icu/impl/duration/impl/DataRecord;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_6
    iput-object v4, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@96
    .line 147
    iput-object p1, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    monitor-exit p0

    #@99
    .line 149
    return-object v4

    #@9a
    .line 131
    .end local v4    # "ld":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@9b
    .line 132
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v9, Landroid/icu/util/ICUUncheckedIOException;

    #@9d
    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v11, "Failed to close() resource "

    #@a5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v10

    #@a9
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v10

    #@ad
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v10

    #@b1
    .line 132
    invoke-direct {v9, v10, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b5
    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@b6
    monitor-exit p0

    #@b7
    throw v9

    #@b8
    .line 128
    .restart local v6    # "name":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@b9
    .line 129
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    new-instance v9, Ljava/util/MissingResourceException;

    #@bb
    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v11, "Unhandled encoding for resource "

    #@c3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v10

    #@c7
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v10

    #@cb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v10

    #@cf
    const-string/jumbo v11, ""

    #@d2
    .line 129
    invoke-direct {v9, v10, v6, v11}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d5
    throw v9

    #@d6
    .line 136
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "name":Ljava/lang/String;
    .restart local v4    # "ld":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    :cond_7
    new-instance v9, Ljava/util/MissingResourceException;

    #@d8
    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v11, "Duration data not found for  "

    #@e0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v10

    #@e4
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v10

    #@e8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    const-string/jumbo v11, "data/"

    #@ef
    .line 136
    invoke-direct {v9, v10, v11, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f2
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getAvailableLocales()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    #@2
    return-object v0
.end method
