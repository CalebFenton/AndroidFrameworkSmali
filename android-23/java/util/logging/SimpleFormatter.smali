.class public Ljava/util/logging/SimpleFormatter;
.super Ljava/util/logging/Formatter;
.source "SimpleFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 10
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 48
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "{0, date} {0, time} "

    #@8
    .line 49
    const/4 v6, 0x1

    #@9
    new-array v6, v6, [Ljava/lang/Object;

    #@b
    new-instance v7, Ljava/util/Date;

    #@d
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    #@10
    move-result-wide v8

    #@11
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@14
    const/4 v8, 0x0

    #@15
    aput-object v7, v6, v8

    #@17
    .line 48
    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 50
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, " "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 51
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 52
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    const-string/jumbo v6, ": "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/logging/SimpleFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 54
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@5f
    move-result-object v5

    #@60
    if-eqz v5, :cond_0

    #@62
    .line 55
    const-string/jumbo v5, "Throwable occurred: "

    #@65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 56
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@6b
    move-result-object v4

    #@6c
    .line 57
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    #@6d
    .line 59
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    #@6f
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    #@72
    .line 60
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@74
    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    .line 61
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@7a
    .line 62
    .end local v0    # "pw":Ljava/io/PrintWriter;
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@81
    .line 64
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@84
    .line 67
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    return-object v5

    #@89
    .line 63
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    #@8a
    .line 64
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8d
    .line 63
    throw v5

    #@8e
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catchall_1
    move-exception v5

    #@8f
    move-object v0, v1

    #@90
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v0, "pw":Ljava/io/PrintWriter;
    goto :goto_0
.end method
