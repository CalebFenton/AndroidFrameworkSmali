.class public Ljava/util/logging/SimpleFormatter;
.super Ljava/util/logging/Formatter;
.source "SimpleFormatter.java"


# static fields
.field private static final greylist-max-o format:Ljava/lang/String;


# instance fields
.field private final greylist-max-o dat:Ljava/util/Date;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    invoke-static {}, Lsun/util/logging/LoggingSupport;->getSimpleFormat()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 9
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 143
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 144
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "source":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v2, v0

    goto :goto_3f

    .line 145
    .end local p0    # "this":Ljava/util/logging/SimpleFormatter;
    :cond_38
    move-object v2, v0

    goto :goto_3f

    .line 149
    .end local v0    # "source":Ljava/lang/String;
    :cond_3a
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 151
    .local v2, "source":Ljava/lang/String;
    :goto_3f
    invoke-virtual {p0, p1}, Ljava/util/logging/SimpleFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "message":Ljava/lang/String;
    const-string v0, ""

    .line 153
    .local v0, "throwable":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 154
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 155
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 156
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 157
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 158
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 159
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v6, v0

    goto :goto_6a

    .line 153
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :cond_69
    move-object v6, v0

    .line 161
    .end local v0    # "throwable":Ljava/lang/String;
    .local v6, "throwable":Ljava/lang/String;
    :goto_6a
    sget-object v0, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    .line 164
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v4

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_84

    monitor-exit p0

    return-object v0

    .line 140
    .end local v2    # "source":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "throwable":Ljava/lang/String;
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_84
    move-exception v0

    move-object p1, v0

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_84

    throw p1
.end method
