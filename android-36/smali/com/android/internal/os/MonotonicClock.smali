.class public Lcom/android/internal/os/MonotonicClock;
.super Ljava/lang/Object;
.source "MonotonicClock.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicClock"

.field public static final blacklist UNDEFINED:J = -0x1L

.field private static final blacklist XML_ATTR_TIMESHIFT:Ljava/lang/String; = "timeshift"

.field private static final blacklist XML_TAG_MONOTONIC_TIME:Ljava/lang/String; = "monotonic_time"


# instance fields
.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private final blacklist mFile:Landroid/util/AtomicFile;

.field private final blacklist mTimeshift:J


# direct methods
.method public constructor blacklist <init>(JLcom/android/internal/os/Clock;)V
    .registers 5
    .param p1, "monotonicTime"    # J
    .param p3, "clock"    # Lcom/android/internal/os/Clock;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 57
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "monotonicTime"    # J
    .param p4, "clock"    # Lcom/android/internal/os/Clock;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p4, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    .line 66
    if-eqz p1, :cond_1d

    .line 67
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    .line 68
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->read(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    goto :goto_2a

    .line 70
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    .line 71
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    iput-wide v0, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    .line 73
    :goto_2a
    return-void
.end method

.method private blacklist read(J)J
    .registers 6
    .param p1, "defaultTimeshift"    # J

    .line 92
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 93
    return-wide p1

    .line 97
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->readXml(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;)J

    move-result-wide v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_1d

    return-wide v0

    .line 98
    :catch_1d
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load monotonic clock from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonotonicClock"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return-wide p1
.end method

.method private blacklist readXml(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;)J
    .registers 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const-wide/16 v0, 0x0

    .line 130
    .local v0, "savedTimeshift":J
    :try_start_2
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 131
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 132
    .local v2, "eventType":I
    :goto_f
    const/4 v3, 0x1

    if-eq v2, v3, :cond_30

    .line 133
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 134
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "monotonic_time"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 135
    const-string/jumbo v3, "timeshift"

    const/4 v4, 0x0

    invoke-interface {p2, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    move-wide v0, v3

    .line 137
    :cond_2a
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2e} :catch_3a

    move v2, v3

    goto :goto_f

    .line 141
    .end local v2    # "eventType":I
    :cond_30
    nop

    .line 142
    iget-object v2, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2

    .line 139
    :catch_3a
    move-exception v2

    .line 140
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private blacklist writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    const-string v0, "monotonic_time"

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string/jumbo v2, "timeshift"

    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v3

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 155
    return-void
.end method


# virtual methods
.method public blacklist monotonicTime()J
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist monotonicTime(J)J
    .registers 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 88
    iget-wide v0, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public blacklist write()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_5

    .line 110
    return-void

    .line 113
    :cond_5
    const/4 v0, 0x0

    .line 115
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 116
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 121
    goto :goto_3e

    .line 118
    :catch_1a
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write monotonic clock to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MonotonicClock"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    iget-object v2, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3e
    return-void
.end method
