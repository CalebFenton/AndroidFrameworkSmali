.class public Ljava/util/logging/XMLFormatter;
.super Ljava/util/logging/Formatter;
.source "XMLFormatter.java"


# static fields
.field private static final indent:Ljava/lang/String; = "    "


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    #@3
    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indentCount"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@3
    .line 134
    const-string/jumbo v1, "    "

    #@6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 133
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 136
    :cond_0
    const-string/jumbo v1, "<"

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ">"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 137
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    .line 138
    const-string/jumbo v1, "</"

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, ">"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 139
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 132
    return-void
.end method

.method private static escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indentCount"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 143
    if-nez p3, :cond_0

    #@2
    .line 144
    invoke-static {p0, p1, p2, p3}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 142
    :goto_0
    return-void

    #@6
    .line 146
    :cond_0
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    #@9
    .line 147
    const-string/jumbo v2, "    "

    #@c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 146
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_1

    #@12
    .line 149
    :cond_1
    const-string/jumbo v2, "<"

    #@15
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ">"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 151
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {p0, v2}, Ljava/util/logging/XMLFormatter;->escapeXml(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 155
    const-string/jumbo v2, "</"

    #@2d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, ">"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 156
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0

    #@43
    .line 152
    :catch_0
    move-exception v0

    #@44
    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    #@46
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@49
    throw v2
.end method

.method private static escapeXml(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p0, "valueBuilder"    # Ljava/lang/Appendable;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 163
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@e
    .line 180
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@11
    .line 161
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 165
    :sswitch_0
    const-string/jumbo v2, "&quot;"

    #@17
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@1a
    goto :goto_1

    #@1b
    .line 168
    :sswitch_1
    const-string/jumbo v2, "&gt;"

    #@1e
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@21
    goto :goto_1

    #@22
    .line 171
    :sswitch_2
    const-string/jumbo v2, "&lt;"

    #@25
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@28
    goto :goto_1

    #@29
    .line 174
    :sswitch_3
    const-string/jumbo v2, "&amp;"

    #@2c
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@2f
    goto :goto_1

    #@30
    .line 177
    :sswitch_4
    const-string/jumbo v2, "&apos;"

    #@33
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@36
    goto :goto_1

    #@37
    .line 160
    .end local v0    # "c":C
    :cond_0
    return-void

    #@38
    .line 163
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_3
        0x27 -> :sswitch_4
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private formatMessages(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "r"    # Ljava/util/logging/LogRecord;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 88
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    #@4
    move-result-object v3

    #@5
    .line 89
    .local v3, "rb":Ljava/util/ResourceBundle;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 90
    .local v2, "pattern":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 93
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    .line 98
    :goto_0
    if-nez v1, :cond_0

    #@13
    .line 99
    move-object v1, v2

    #@14
    .line 100
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v4, "message"

    #@17
    invoke-static {p2, v6, v4, v1}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@1a
    .line 85
    .end local v1    # "message":Ljava/lang/String;
    :goto_1
    return-void

    #@1b
    .line 94
    :catch_0
    move-exception v0

    #@1c
    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@1d
    .local v1, "message":Ljava/lang/String;
    goto :goto_0

    #@1e
    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "message"

    #@21
    invoke-static {p2, v6, v4, v1}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@24
    .line 103
    const-string/jumbo v4, "key"

    #@27
    invoke-static {p2, v6, v4, v2}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@2a
    .line 104
    const-string/jumbo v4, "catalog"

    #@2d
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-static {p2, v6, v4, v5}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@34
    goto :goto_1

    #@35
    .line 106
    :cond_1
    if-eqz v2, :cond_2

    #@37
    .line 107
    const-string/jumbo v4, "message"

    #@3a
    invoke-static {p2, v6, v4, v2}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@3d
    goto :goto_1

    #@3e
    .line 109
    :cond_2
    const-string/jumbo v4, "    "

    #@41
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    const-string/jumbo v5, "<message/>"

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_1
.end method

.method private formatThrowable(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "r"    # Ljava/util/logging/LogRecord;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 115
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@4
    move-result-object v3

    #@5
    .local v3, "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    #@7
    .line 116
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 117
    .local v2, "nl":Ljava/lang/String;
    const-string/jumbo v4, "    "

    #@e
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, "<exception>"

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 118
    const-string/jumbo v4, "message"

    #@1f
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    const/4 v6, 0x2

    #@24
    invoke-static {p2, v6, v4, v5}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@27
    .line 120
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@2a
    move-result-object v1

    #@2b
    .line 121
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    #@2c
    array-length v5, v1

    #@2d
    :goto_0
    if-ge v4, v5, :cond_0

    #@2f
    aget-object v0, v1, v4

    #@31
    .line 122
    .local v0, "e":Ljava/lang/StackTraceElement;
    const-string/jumbo v6, "    "

    #@34
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    const-string/jumbo v7, "    "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    const-string/jumbo v7, "<frame>"

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 123
    const-string/jumbo v6, "class"

    #@4c
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-static {p2, v8, v6, v7}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@53
    .line 124
    const-string/jumbo v6, "method"

    #@56
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-static {p2, v8, v6, v7}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@5d
    .line 125
    const-string/jumbo v6, "line"

    #@60
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@63
    move-result v7

    #@64
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v7

    #@68
    invoke-static {p2, v8, v6, v7}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@6b
    .line 126
    const-string/jumbo v6, "    "

    #@6e
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    const-string/jumbo v7, "    "

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    const-string/jumbo v7, "</frame>"

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 121
    add-int/lit8 v4, v4, 0x1

    #@85
    goto :goto_0

    #@86
    .line 128
    .end local v0    # "e":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v4, "    "

    #@89
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    const-string/jumbo v5, "</exception>"

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 113
    .end local v1    # "elements":[Ljava/lang/StackTraceElement;
    .end local v2    # "nl":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 13
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v12, 0x1

    #@2
    .line 52
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    #@5
    move-result-wide v6

    #@6
    .line 54
    .local v6, "time":J
    const-string/jumbo v8, "{0, date} {0, time}"

    #@9
    new-array v9, v12, [Ljava/lang/Object;

    #@b
    new-instance v10, Ljava/util/Date;

    #@d
    invoke-direct {v10, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@10
    aput-object v10, v9, v5

    #@12
    invoke-static {v8, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 55
    .local v0, "date":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 57
    .local v2, "nl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    .line 58
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "<record>"

    #@22
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 59
    const-string/jumbo v8, "date"

    #@2c
    invoke-static {v4, v12, v8, v0}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@2f
    .line 60
    const-string/jumbo v8, "millis"

    #@32
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@35
    move-result-object v9

    #@36
    invoke-static {v4, v12, v8, v9}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@39
    .line 61
    const-string/jumbo v8, "sequence"

    #@3c
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    #@3f
    move-result-wide v10

    #@40
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@43
    move-result-object v9

    #@44
    invoke-static {v4, v12, v8, v9}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@47
    .line 62
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    if-eqz v8, :cond_0

    #@4d
    .line 63
    const-string/jumbo v8, "logger"

    #@50
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-static {v4, v12, v8, v9}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@57
    .line 65
    :cond_0
    const-string/jumbo v8, "level"

    #@5a
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    #@61
    move-result-object v9

    #@62
    invoke-static {v4, v12, v8, v9}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@65
    .line 66
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    if-eqz v8, :cond_1

    #@6b
    .line 67
    const-string/jumbo v8, "class"

    #@6e
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    invoke-static {v4, v12, v8, v9}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@75
    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    if-eqz v8, :cond_2

    #@7b
    .line 70
    const-string/jumbo v8, "method"

    #@7e
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    invoke-static {v4, v12, v8, v9}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@85
    .line 72
    :cond_2
    const-string/jumbo v8, "thread"

    #@88
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    #@8b
    move-result v9

    #@8c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v9

    #@90
    invoke-static {v4, v12, v8, v9}, Ljava/util/logging/XMLFormatter;->append(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@93
    .line 73
    invoke-direct {p0, p1, v4}, Ljava/util/logging/XMLFormatter;->formatMessages(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V

    #@96
    .line 74
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    #@99
    move-result-object v3

    #@9a
    .line 75
    .local v3, "params":[Ljava/lang/Object;
    if-eqz v3, :cond_3

    #@9c
    .line 76
    array-length v8, v3

    #@9d
    :goto_0
    if-ge v5, v8, :cond_3

    #@9f
    aget-object v1, v3, v5

    #@a1
    .line 77
    .local v1, "element":Ljava/lang/Object;
    const-string/jumbo v9, "param"

    #@a4
    invoke-static {v4, v12, v9, v1}, Ljava/util/logging/XMLFormatter;->escapeAndAppend(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    #@a7
    .line 76
    add-int/lit8 v5, v5, 0x1

    #@a9
    goto :goto_0

    #@aa
    .line 80
    .end local v1    # "element":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0, p1, v4}, Ljava/util/logging/XMLFormatter;->formatThrowable(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V

    #@ad
    .line 81
    const-string/jumbo v5, "</record>"

    #@b0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    return-object v5
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 4
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 196
    const/4 v0, 0x0

    #@1
    .line 197
    .local v0, "encoding":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@3
    .line 198
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getEncoding()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 200
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    #@9
    .line 201
    const-string/jumbo v2, "file.encoding"

    #@c
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 203
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 204
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\""

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, "\" standalone=\"no\"?>"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 205
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 206
    const-string/jumbo v2, "<!DOCTYPE log SYSTEM \"logger.dtd\">"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 207
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 208
    const-string/jumbo v2, "<log>"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    return-object v2
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 222
    const-string/jumbo v0, "</log>"

    #@3
    return-object v0
.end method
