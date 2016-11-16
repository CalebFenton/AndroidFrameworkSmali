.class public Ljava/util/logging/SimpleFormatter;
.super Ljava/util/logging/Formatter;
.source "SimpleFormatter.java"


# static fields
.field private static final format:Ljava/lang/String;


# instance fields
.field private final dat:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-static {}, Lsun/util/logging/LoggingSupport;->getSimpleFormat()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    #@6
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    #@3
    .line 63
    new-instance v0, Ljava/util/Date;

    #@5
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    #@a
    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 9
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 141
    :try_start_0
    iget-object v5, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    #@3
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    #@6
    move-result-wide v6

    #@7
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    #@a
    .line 143
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    if-eqz v5, :cond_2

    #@10
    .line 144
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 145
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    const-string/jumbo v6, " "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/logging/SimpleFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 152
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@3d
    .line 153
    .local v4, "throwable":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@40
    move-result-object v5

    #@41
    if-eqz v5, :cond_1

    #@43
    .line 154
    new-instance v3, Ljava/io/StringWriter;

    #@45
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    #@48
    .line 155
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@4a
    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@4d
    .line 156
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@50
    .line 157
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@57
    .line 158
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    #@5a
    .line 159
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 161
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    :cond_1
    sget-object v5, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    #@60
    const/4 v6, 0x6

    #@61
    new-array v6, v6, [Ljava/lang/Object;

    #@63
    .line 162
    iget-object v7, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    #@65
    const/4 v8, 0x0

    #@66
    aput-object v7, v6, v8

    #@68
    .line 163
    const/4 v7, 0x1

    #@69
    aput-object v2, v6, v7

    #@6b
    .line 164
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    const/4 v8, 0x2

    #@70
    aput-object v7, v6, v8

    #@72
    .line 165
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v7}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    const/4 v8, 0x3

    #@7b
    aput-object v7, v6, v8

    #@7d
    .line 166
    const/4 v7, 0x4

    #@7e
    aput-object v0, v6, v7

    #@80
    .line 167
    const/4 v7, 0x5

    #@81
    aput-object v4, v6, v7

    #@83
    .line 161
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    move-result-object v5

    #@87
    monitor-exit p0

    #@88
    return-object v5

    #@89
    .line 149
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "source":Ljava/lang/String;
    .end local v4    # "throwable":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    move-result-object v2

    #@8d
    .restart local v2    # "source":Ljava/lang/String;
    goto :goto_0

    #@8e
    .end local v2    # "source":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@8f
    monitor-exit p0

    #@90
    throw v5
.end method
