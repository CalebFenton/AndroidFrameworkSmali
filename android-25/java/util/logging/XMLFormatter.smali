.class public Ljava/util/logging/XMLFormatter;
.super Ljava/util/logging/Formatter;
.source "XMLFormatter.java"


# instance fields
.field private manager:Ljava/util/logging/LogManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    #@3
    .line 47
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/logging/XMLFormatter;->manager:Ljava/util/logging/LogManager;

    #@9
    .line 46
    return-void
.end method

.method private a2(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "x"    # I

    #@0
    .prologue
    .line 51
    const/16 v0, 0xa

    #@2
    if-ge p2, v0, :cond_0

    #@4
    .line 52
    const/16 v0, 0x30

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9
    .line 54
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@c
    .line 50
    return-void
.end method

.method private appendISO8601(Ljava/lang/StringBuffer;J)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "millis"    # J

    #@0
    .prologue
    const/16 v3, 0x3a

    #@2
    const/16 v2, 0x2d

    #@4
    .line 59
    new-instance v0, Ljava/util/Date;

    #@6
    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    #@9
    .line 60
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    #@c
    move-result v1

    #@d
    add-int/lit16 v1, v1, 0x76c

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@12
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 62
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    #@18
    move-result v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    #@1e
    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21
    .line 64
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    #@24
    move-result v1

    #@25
    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    #@28
    .line 65
    const/16 v1, 0x54

    #@2a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2d
    .line 66
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    #@30
    move-result v1

    #@31
    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    #@34
    .line 67
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    .line 68
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    #@3a
    move-result v1

    #@3b
    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    #@3e
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@41
    .line 70
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    #@44
    move-result v1

    #@45
    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    #@48
    .line 58
    return-void
.end method

.method private escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    if-nez p2, :cond_0

    #@2
    .line 78
    const-string/jumbo p2, "<null>"

    #@5
    .line 80
    :cond_0
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_4

    #@c
    .line 81
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 82
    .local v0, "ch":C
    const/16 v2, 0x3c

    #@12
    if-ne v0, v2, :cond_1

    #@14
    .line 83
    const-string/jumbo v2, "&lt;"

    #@17
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 84
    :cond_1
    const/16 v2, 0x3e

    #@1f
    if-ne v0, v2, :cond_2

    #@21
    .line 85
    const-string/jumbo v2, "&gt;"

    #@24
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    goto :goto_1

    #@28
    .line 86
    :cond_2
    const/16 v2, 0x26

    #@2a
    if-ne v0, v2, :cond_3

    #@2c
    .line 87
    const-string/jumbo v2, "&amp;"

    #@2f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    goto :goto_1

    #@33
    .line 89
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    goto :goto_1

    #@37
    .line 76
    .end local v0    # "ch":C
    :cond_4
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 12
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 105
    new-instance v7, Ljava/lang/StringBuffer;

    #@2
    const/16 v10, 0x1f4

    #@4
    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 106
    .local v7, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v10, "<record>\n"

    #@a
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    .line 108
    const-string/jumbo v10, "  <date>"

    #@10
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 109
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    #@16
    move-result-wide v10

    #@17
    invoke-direct {p0, v7, v10, v11}, Ljava/util/logging/XMLFormatter;->appendISO8601(Ljava/lang/StringBuffer;J)V

    #@1a
    .line 110
    const-string/jumbo v10, "</date>\n"

    #@1d
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 112
    const-string/jumbo v10, "  <millis>"

    #@23
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 113
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    #@29
    move-result-wide v10

    #@2a
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@2d
    .line 114
    const-string/jumbo v10, "</millis>\n"

    #@30
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 116
    const-string/jumbo v10, "  <sequence>"

    #@36
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 117
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    #@3c
    move-result-wide v10

    #@3d
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@40
    .line 118
    const-string/jumbo v10, "</sequence>\n"

    #@43
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 120
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    .line 121
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@4c
    .line 122
    const-string/jumbo v10, "  <logger>"

    #@4f
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    .line 123
    invoke-direct {p0, v7, v5}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@55
    .line 124
    const-string/jumbo v10, "</logger>\n"

    #@58
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 127
    :cond_0
    const-string/jumbo v10, "  <level>"

    #@5e
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    .line 128
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@64
    move-result-object v10

    #@65
    invoke-virtual {v10}, Ljava/util/logging/Level;->toString()Ljava/lang/String;

    #@68
    move-result-object v10

    #@69
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@6c
    .line 129
    const-string/jumbo v10, "</level>\n"

    #@6f
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@72
    .line 131
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    #@75
    move-result-object v10

    #@76
    if-eqz v10, :cond_1

    #@78
    .line 132
    const-string/jumbo v10, "  <class>"

    #@7b
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7e
    .line 133
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@85
    .line 134
    const-string/jumbo v10, "</class>\n"

    #@88
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8b
    .line 137
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    #@8e
    move-result-object v10

    #@8f
    if-eqz v10, :cond_2

    #@91
    .line 138
    const-string/jumbo v10, "  <method>"

    #@94
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@97
    .line 139
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    #@9a
    move-result-object v10

    #@9b
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@9e
    .line 140
    const-string/jumbo v10, "</method>\n"

    #@a1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    .line 143
    :cond_2
    const-string/jumbo v10, "  <thread>"

    #@a7
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@aa
    .line 144
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    #@ad
    move-result v10

    #@ae
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@b1
    .line 145
    const-string/jumbo v10, "</thread>\n"

    #@b4
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    .line 147
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@ba
    move-result-object v10

    #@bb
    if-eqz v10, :cond_4

    #@bd
    .line 149
    invoke-virtual {p0, p1}, Ljava/util/logging/XMLFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    .line 150
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v10, "  <message>"

    #@c4
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c7
    .line 151
    invoke-direct {p0, v7, v4}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@ca
    .line 152
    const-string/jumbo v10, "</message>"

    #@cd
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d0
    .line 153
    const-string/jumbo v10, "\n"

    #@d3
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d6
    .line 161
    .end local v4    # "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    #@d9
    move-result-object v0

    #@da
    .line 163
    .local v0, "bundle":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_3

    #@dc
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v0, v10}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e3
    move-result-object v10

    #@e4
    if-eqz v10, :cond_3

    #@e6
    .line 164
    const-string/jumbo v10, "  <key>"

    #@e9
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ec
    .line 165
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@ef
    move-result-object v10

    #@f0
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@f3
    .line 166
    const-string/jumbo v10, "</key>\n"

    #@f6
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f9
    .line 167
    const-string/jumbo v10, "  <catalog>"

    #@fc
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ff
    .line 168
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    #@102
    move-result-object v10

    #@103
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@106
    .line 169
    const-string/jumbo v10, "</catalog>\n"

    #@109
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@10c
    .line 175
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    #@10f
    move-result-object v6

    #@110
    .line 178
    .local v6, "parameters":[Ljava/lang/Object;
    if-eqz v6, :cond_5

    #@112
    array-length v10, v6

    #@113
    if-eqz v10, :cond_5

    #@115
    .line 179
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@118
    move-result-object v10

    #@119
    const-string/jumbo v11, "{"

    #@11c
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11f
    move-result v10

    #@120
    const/4 v11, -0x1

    #@121
    if-ne v10, v11, :cond_5

    #@123
    .line 180
    const/4 v3, 0x0

    #@124
    .local v3, "i":I
    :goto_2
    array-length v10, v6

    #@125
    if-ge v3, v10, :cond_5

    #@127
    .line 181
    const-string/jumbo v10, "  <param>"

    #@12a
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12d
    .line 183
    :try_start_1
    aget-object v10, v6, v3

    #@12f
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@132
    move-result-object v10

    #@133
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@136
    .line 187
    :goto_3
    const-string/jumbo v10, "</param>\n"

    #@139
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13c
    .line 180
    add-int/lit8 v3, v3, 0x1

    #@13e
    goto :goto_2

    #@13f
    .line 155
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    .end local v3    # "i":I
    .end local v6    # "parameters":[Ljava/lang/Object;
    :cond_4
    const-string/jumbo v10, "<message/>"

    #@142
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@145
    .line 156
    const-string/jumbo v10, "\n"

    #@148
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14b
    goto :goto_0

    #@14c
    .line 184
    .restart local v0    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "i":I
    .restart local v6    # "parameters":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@14d
    .line 185
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "???"

    #@150
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@153
    goto :goto_3

    #@154
    .line 191
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@157
    move-result-object v10

    #@158
    if-eqz v10, :cond_8

    #@15a
    .line 193
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@15d
    move-result-object v8

    #@15e
    .line 194
    .local v8, "th":Ljava/lang/Throwable;
    const-string/jumbo v10, "  <exception>\n"

    #@161
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@164
    .line 195
    const-string/jumbo v10, "    <message>"

    #@167
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16a
    .line 196
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@16d
    move-result-object v10

    #@16e
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@171
    .line 197
    const-string/jumbo v10, "</message>\n"

    #@174
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@177
    .line 198
    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@17a
    move-result-object v9

    #@17b
    .line 199
    .local v9, "trace":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    #@17c
    .restart local v3    # "i":I
    :goto_4
    array-length v10, v9

    #@17d
    if-ge v3, v10, :cond_7

    #@17f
    .line 200
    aget-object v2, v9, v3

    #@181
    .line 201
    .local v2, "frame":Ljava/lang/StackTraceElement;
    const-string/jumbo v10, "    <frame>\n"

    #@184
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@187
    .line 202
    const-string/jumbo v10, "      <class>"

    #@18a
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18d
    .line 203
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@190
    move-result-object v10

    #@191
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@194
    .line 204
    const-string/jumbo v10, "</class>\n"

    #@197
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19a
    .line 205
    const-string/jumbo v10, "      <method>"

    #@19d
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a0
    .line 206
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@1a3
    move-result-object v10

    #@1a4
    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@1a7
    .line 207
    const-string/jumbo v10, "</method>\n"

    #@1aa
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ad
    .line 209
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@1b0
    move-result v10

    #@1b1
    if-ltz v10, :cond_6

    #@1b3
    .line 210
    const-string/jumbo v10, "      <line>"

    #@1b6
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b9
    .line 211
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@1bc
    move-result v10

    #@1bd
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1c0
    .line 212
    const-string/jumbo v10, "</line>\n"

    #@1c3
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c6
    .line 214
    :cond_6
    const-string/jumbo v10, "    </frame>\n"

    #@1c9
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1cc
    .line 199
    add-int/lit8 v3, v3, 0x1

    #@1ce
    goto :goto_4

    #@1cf
    .line 216
    .end local v2    # "frame":Ljava/lang/StackTraceElement;
    :cond_7
    const-string/jumbo v10, "  </exception>\n"

    #@1d2
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d5
    .line 219
    .end local v3    # "i":I
    .end local v8    # "th":Ljava/lang/Throwable;
    .end local v9    # "trace":[Ljava/lang/StackTraceElement;
    :cond_8
    const-string/jumbo v10, "</record>\n"

    #@1d8
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1db
    .line 220
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1de
    move-result-object v10

    #@1df
    return-object v10

    #@1e0
    .line 171
    .end local v6    # "parameters":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    #@1e1
    .restart local v1    # "ex":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 5
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 230
    new-instance v3, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 232
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "<?xml version=\"1.0\""

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 234
    if-eqz p1, :cond_1

    #@d
    .line 235
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getEncoding()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 240
    :goto_0
    if-nez v1, :cond_0

    #@13
    .line 242
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 246
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1e
    move-result-object v0

    #@1f
    .line 247
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v1

    #@23
    .line 253
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :goto_1
    const-string/jumbo v4, " encoding=\""

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 254
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 255
    const-string/jumbo v4, "\""

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 256
    const-string/jumbo v4, " standalone=\"no\"?>\n"

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    .line 257
    const-string/jumbo v4, "<!DOCTYPE log SYSTEM \"logger.dtd\">\n"

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    .line 258
    const-string/jumbo v4, "<log>\n"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    return-object v4

    #@49
    .line 237
    :cond_1
    const/4 v1, 0x0

    #@4a
    .local v1, "encoding":Ljava/lang/String;
    goto :goto_0

    #@4b
    .line 248
    .end local v1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@4c
    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 269
    const-string/jumbo v0, "</log>\n"

    #@3
    return-object v0
.end method
