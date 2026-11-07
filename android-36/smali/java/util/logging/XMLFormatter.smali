.class public Ljava/util/logging/XMLFormatter;
.super Ljava/util/logging/Formatter;
.source "XMLFormatter.java"


# instance fields
.field private greylist-max-o manager:Ljava/util/logging/LogManager;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/XMLFormatter;->manager:Ljava/util/logging/LogManager;

    return-void
.end method

.method private greylist-max-o a2(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "x"    # I

    .line 51
    const/16 v0, 0xa

    if-ge p2, v0, :cond_9

    .line 52
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method

.method private greylist-max-o appendISO8601(Ljava/lang/StringBuilder;J)V
    .registers 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "millis"    # J

    .line 59
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 60
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p0, p1, v3}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 66
    const/16 v1, 0x54

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 68
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 72
    return-void
.end method

.method private greylist-max-o escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "text"    # Ljava/lang/String;

    .line 78
    if-nez p2, :cond_4

    .line 79
    const-string p2, "<null>"

    .line 81
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 83
    .local v1, "ch":C
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_19

    .line 84
    const-string v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 85
    :cond_19
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_23

    .line 86
    const-string v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 87
    :cond_23
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2d

    .line 88
    const-string v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 90
    :cond_2d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .end local v1    # "ch":C
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 93
    .end local v0    # "i":I
    :cond_33
    return-void
.end method


# virtual methods
.method public whitelist test-api format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 13
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<record>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "  <date>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/logging/XMLFormatter;->appendISO8601(Ljava/lang/StringBuilder;J)V

    .line 111
    const-string v1, "</date>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "  <millis>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "</millis>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "  <sequence>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "</sequence>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_52

    .line 123
    const-string v2, "  <logger>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p0, v0, v1}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    const-string v2, "</logger>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_52
    const-string v2, "  <level>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 130
    const-string v2, "</level>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "</class>\n"

    if-eqz v2, :cond_7e

    .line 133
    const-string v2, "  <class>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_7e
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "</method>\n"

    if-eqz v2, :cond_95

    .line 139
    const-string v2, "  <method>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_95
    const-string v2, "  <thread>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v2, "</thread>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "\n"

    if-eqz v2, :cond_c3

    .line 150
    invoke-virtual {p0, p1}, Ljava/util/logging/XMLFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "message":Ljava/lang/String;
    const-string v6, "  <message>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {p0, v0, v2}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 153
    const-string v6, "</message>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .end local v2    # "message":Ljava/lang/String;
    goto :goto_cb

    .line 157
    :cond_c3
    const-string v2, "<message/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :goto_cb
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v2

    .line 165
    .local v2, "bundle":Ljava/util/ResourceBundle;
    if-eqz v2, :cond_100

    :try_start_d1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_100

    .line 166
    const-string v5, "  <key>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    const-string v5, "</key>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v5, "  <catalog>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    const-string v5, "</catalog>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_fd} :catch_fe

    goto :goto_100

    .line 173
    :catch_fe
    move-exception v5

    goto :goto_101

    .line 175
    :cond_100
    :goto_100
    nop

    .line 177
    :goto_101
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v5

    .line 180
    .local v5, "parameters":[Ljava/lang/Object;
    if-eqz v5, :cond_138

    array-length v6, v5

    if-eqz v6, :cond_138

    .line 181
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_138

    .line 182
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_118
    array-length v7, v5

    if-ge v6, v7, :cond_138

    .line 183
    const-string v7, "  <param>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :try_start_120
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_129} :catch_12a

    .line 188
    goto :goto_130

    .line 186
    :catch_12a
    move-exception v7

    .line 187
    .local v7, "ex":Ljava/lang/Exception;
    const-string v8, "???"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_130
    const-string v7, "</param>\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_118

    .line 193
    .end local v6    # "i":I
    :cond_138
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1a9

    .line 195
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v6

    .line 196
    .local v6, "th":Ljava/lang/Throwable;
    const-string v7, "  <exception>\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v7, "    <message>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 199
    const-string v7, "</message>\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 201
    .local v7, "trace":[Ljava/lang/StackTraceElement;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_15d
    array-length v9, v7

    if-ge v8, v9, :cond_1a4

    .line 202
    aget-object v9, v7, v8

    .line 203
    .local v9, "frame":Ljava/lang/StackTraceElement;
    const-string v10, "    <frame>\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v10, "      <class>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v10, "      <method>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    if-ltz v10, :cond_19c

    .line 212
    const-string v10, "      <line>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    const-string v10, "</line>\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_19c
    const-string v10, "    </frame>\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .end local v9    # "frame":Ljava/lang/StackTraceElement;
    add-int/lit8 v8, v8, 0x1

    goto :goto_15d

    .line 218
    .end local v8    # "i":I
    :cond_1a4
    const-string v3, "  </exception>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .end local v6    # "th":Ljava/lang/Throwable;
    .end local v7    # "trace":[Ljava/lang/StackTraceElement;
    :cond_1a9
    const-string v3, "</record>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 6
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p1, :cond_11

    .line 237
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .local v1, "encoding":Ljava/lang/String;
    goto :goto_12

    .line 239
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    .line 242
    .restart local v1    # "encoding":Ljava/lang/String;
    :goto_12
    if-nez v1, :cond_1c

    .line 244
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_1c
    :try_start_1c
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 249
    .local v2, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_26

    move-object v1, v3

    .line 253
    .end local v2    # "cs":Ljava/nio/charset/Charset;
    goto :goto_27

    .line 250
    :catch_26
    move-exception v2

    .line 255
    :goto_27
    const-string v2, " encoding=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v2, " standalone=\"no\"?>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v2, "<!DOCTYPE log SYSTEM \"logger.dtd\">\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v2, "<log>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 271
    const-string v0, "</log>\n"

    return-object v0
.end method
