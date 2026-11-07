.class public Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
.super Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
.source "ResourceBasedPeriodFormatterDataService.java"


# static fields
.field private static final blacklist PATH:Ljava/lang/String; = "data/"

.field private static final blacklist singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;


# instance fields
.field private blacklist availableLocales:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/duration/impl/PeriodFormatterData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private blacklist lastLocale:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    invoke-direct {v0}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;-><init>()V

    sput-object v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 7

    .line 59
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 41
    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "localeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "data/index.txt"

    invoke-static {v1, v2}, Landroid/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 64
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 67
    .local v3, "string":Ljava/lang/String;
    :cond_2b
    :goto_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_4a

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 69
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_46

    .line 70
    goto :goto_2b

    .line 72
    :cond_46
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 74
    :cond_4a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4d} :catch_5c
    .catchall {:try_start_1e .. :try_end_4d} :catchall_5a

    .line 80
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "string":Ljava/lang/String;
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 82
    goto :goto_53

    .line 81
    :catch_51
    move-exception v2

    .line 83
    nop

    .line 84
    :goto_53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    .line 85
    return-void

    .line 79
    :catchall_5a
    move-exception v2

    goto :goto_7a

    .line 75
    :catch_5c
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/IOException;
    :try_start_5d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Error reading data/index.txt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "localeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    throw v3
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_5a

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "localeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    :goto_7a
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 82
    goto :goto_7f

    .line 81
    :catch_7e
    move-exception v3

    .line 83
    :goto_7f
    throw v2
.end method

.method public static blacklist getInstance()Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .registers 1

    .line 53
    sget-object v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .registers 10
    .param p1, "localeName"    # Ljava/lang/String;

    .line 90
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 91
    .local v0, "x":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    .line 92
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_e
    monitor-enter p0

    .line 96
    :try_start_f
    iget-object v3, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 97
    iget-object v1, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    monitor-exit p0

    return-object v1

    .line 100
    :cond_1f
    iget-object v3, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 101
    .local v3, "ld":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    if-nez v3, :cond_e5

    .line 102
    move-object v4, p1

    .line 103
    .local v4, "ln":Ljava/lang/String;
    :goto_2a
    iget-object v5, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 104
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 105
    .local v5, "ix":I
    if-le v5, v2, :cond_40

    .line 106
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .end local v4    # "ln":Ljava/lang/String;
    .local v6, "ln":Ljava/lang/String;
    goto :goto_4b

    .line 107
    .end local v6    # "ln":Ljava/lang/String;
    .restart local v4    # "ln":Ljava/lang/String;
    :cond_40
    const-string v6, "test"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 108
    const-string v6, "test"

    move-object v4, v6

    .line 113
    .end local v5    # "ix":I
    :goto_4b
    goto :goto_2a

    .line 110
    .restart local v5    # "ix":I
    :cond_4c
    const/4 v4, 0x0

    .line 111
    nop

    .line 114
    .end local v5    # "ix":I
    :cond_4e
    if-eqz v4, :cond_ca

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/pfd_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_69
    .catchall {:try_start_f .. :try_end_69} :catchall_eb

    .line 117
    .local v1, "name":Ljava/lang/String;
    :try_start_69
    new-instance v2, Ljava/io/InputStreamReader;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    .local v2, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Landroid/icu/impl/duration/impl/XMLRecordReader;

    invoke-direct {v5, v2}, Landroid/icu/impl/duration/impl/XMLRecordReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4, v5}, Landroid/icu/impl/duration/impl/DataRecord;->read(Ljava/lang/String;Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord;

    move-result-object v5

    .line 120
    .local v5, "dr":Landroid/icu/impl/duration/impl/DataRecord;
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 121
    if-eqz v5, :cond_8c

    .line 131
    new-instance v6, Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-direct {v6, p1, v5}, Landroid/icu/impl/duration/impl/PeriodFormatterData;-><init>(Ljava/lang/String;Landroid/icu/impl/duration/impl/DataRecord;)V
    :try_end_8b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_8b} :catch_ae
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_8b} :catch_94
    .catchall {:try_start_69 .. :try_end_8b} :catchall_eb

    move-object v3, v6

    .line 139
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .end local v5    # "dr":Landroid/icu/impl/duration/impl/DataRecord;
    :cond_8c
    nop

    .line 140
    .end local v1    # "name":Ljava/lang/String;
    nop

    .line 149
    :try_start_8e
    iget-object v1, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 136
    .restart local v1    # "name":Ljava/lang/String;
    :catch_94
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close() resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "x":I
    .end local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .end local p1    # "localeName":Ljava/lang/String;
    throw v5

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "x":I
    .restart local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .restart local p1    # "localeName":Ljava/lang/String;
    :catch_ae
    move-exception v2

    .line 134
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/util/MissingResourceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled encoding for resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v5, v6, v1, v7}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "x":I
    .end local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .end local p1    # "localeName":Ljava/lang/String;
    throw v5

    .line 141
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "x":I
    .restart local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .restart local p1    # "localeName":Ljava/lang/String;
    :cond_ca
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duration data not found for  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "data/"

    invoke-direct {v1, v2, v5, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "x":I
    .end local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .end local p1    # "localeName":Ljava/lang/String;
    throw v1

    .line 151
    .end local v4    # "ln":Ljava/lang/String;
    .restart local v0    # "x":I
    .restart local p0    # "this":Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .restart local p1    # "localeName":Ljava/lang/String;
    :cond_e5
    :goto_e5
    iput-object v3, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 152
    iput-object p1, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    .line 154
    monitor-exit p0

    return-object v3

    .line 155
    .end local v3    # "ld":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    :catchall_eb
    move-exception v1

    monitor-exit p0
    :try_end_ed
    .catchall {:try_start_8e .. :try_end_ed} :catchall_eb

    throw v1
.end method

.method public blacklist getAvailableLocales()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    return-object v0
.end method
