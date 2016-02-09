.class public Lcom/android/server/usage/UsageStatsXml;
.super Ljava/lang/Object;
.source "UsageStatsXml.java"


# static fields
.field static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsageStatsXml"

.field private static final USAGESTATS_TAG:Ljava/lang/String; = "usagestats"

.field private static final VERSION_ATTR:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parseBeginTime(Landroid/util/AtomicFile;)J
    .locals 2
    .param p0, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static parseBeginTime(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 47
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "-c"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    const-string/jumbo v3, "-c"

    #@14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    sub-int/2addr v2, v3

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    goto :goto_0

    #@1f
    .line 52
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-wide v2

    #@23
    return-wide v2

    #@24
    .line 53
    :catch_0
    move-exception v0

    #@25
    .line 54
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    #@27
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v2
.end method

.method public static read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    move-result-object v2

    #@4
    .line 62
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    #@7
    move-result-wide v4

    #@8
    iput-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@a
    .line 63
    invoke-static {v2, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V

    #@d
    .line 64
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    #@10
    move-result-wide v4

    #@11
    iput-wide v4, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 67
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@16
    .line 58
    :goto_0
    return-void

    #@17
    .line 68
    :catch_0
    move-exception v1

    #@18
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@19
    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@1a
    .line 67
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    #@1d
    .line 65
    :goto_1
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    #@1e
    .line 72
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@1f
    .line 73
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "UsageStatsXml"

    #@22
    const-string/jumbo v4, "UsageStats Xml"

    #@25
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 74
    throw v0

    #@29
    .line 68
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    #@2a
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v2

    #@4
    .line 93
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string/jumbo v4, "utf-8"

    #@7
    invoke-interface {v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@a
    .line 94
    const-string/jumbo v4, "usagestats"

    #@d
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@10
    .line 95
    const-string/jumbo v4, "version"

    #@13
    const/4 v5, 0x0

    #@14
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    move-result-object v3

    #@18
    .line 97
    .local v3, "versionStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b
    move-result v4

    #@1c
    packed-switch v4, :pswitch_data_0

    #@1f
    .line 103
    const-string/jumbo v4, "UsageStatsXml"

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "Unrecognized version "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 104
    new-instance v4, Ljava/io/IOException;

    #@3b
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v6, "Unrecognized version "

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    #@53
    .line 106
    :catch_0
    move-exception v0

    #@54
    .line 107
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string/jumbo v4, "UsageStatsXml"

    #@57
    const-string/jumbo v5, "Bad version"

    #@5a
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 108
    new-instance v4, Ljava/io/IOException;

    #@5f
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@62
    throw v4
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    #@63
    .line 110
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "versionStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@64
    .line 111
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "UsageStatsXml"

    #@67
    const-string/jumbo v5, "Failed to parse Xml"

    #@6a
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 112
    new-instance v4, Ljava/io/IOException;

    #@6f
    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@72
    throw v4

    #@73
    .line 99
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "versionStr":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    invoke-static {v2, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    #@76
    .line 90
    return-void

    #@77
    .line 97
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 2
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    #@7
    .line 82
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 83
    const/4 v0, 0x0

    #@b
    .line 86
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@e
    .line 78
    return-void

    #@f
    .line 84
    .local v0, "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    #@10
    .line 86
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@13
    .line 84
    throw v1
.end method

.method private static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 117
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    #@4
    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@7
    .line 118
    .local v0, "xml":Lcom/android/internal/util/FastXmlSerializer;
    const-string/jumbo v1, "utf-8"

    #@a
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@d
    .line 119
    const-string/jumbo v1, "utf-8"

    #@10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@17
    .line 120
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@1a
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@1d
    .line 121
    const-string/jumbo v1, "usagestats"

    #@20
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 122
    const-string/jumbo v1, "version"

    #@26
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 124
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V

    #@30
    .line 126
    const-string/jumbo v1, "usagestats"

    #@33
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 127
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    #@39
    .line 116
    return-void
.end method
