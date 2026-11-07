.class public Lcom/android/internal/logging/AndroidHandler;
.super Ljava/util/logging/Handler;
.source "AndroidHandler.java"


# static fields
.field private static final blacklist THE_FORMATTER:Ljava/util/logging/Formatter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Lcom/android/internal/logging/AndroidHandler$1;

    invoke-direct {v0}, Lcom/android/internal/logging/AndroidHandler$1;-><init>()V

    sput-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 110
    sget-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/AndroidHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 111
    return-void
.end method

.method static blacklist getAndroidLevel(Ljava/util/logging/Level;)I
    .registers 3
    .param p0, "level"    # Ljava/util/logging/Level;

    .line 183
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 184
    .local v0, "value":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_a

    .line 185
    const/4 v1, 0x6

    return v1

    .line 186
    :cond_a
    const/16 v1, 0x384

    if-lt v0, v1, :cond_10

    .line 187
    const/4 v1, 0x5

    return v1

    .line 188
    :cond_10
    const/16 v1, 0x320

    if-lt v0, v1, :cond_16

    .line 189
    const/4 v1, 0x4

    return v1

    .line 191
    :cond_16
    const/4 v1, 0x3

    return v1
.end method

.method private static blacklist loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "loggerName"    # Ljava/lang/String;

    .line 130
    if-nez p0, :cond_5

    .line 131
    const-string v0, "null"

    return-object v0

    .line 134
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 135
    .local v0, "length":I
    const/16 v1, 0x17

    if-gt v0, v1, :cond_e

    .line 136
    return-object p0

    .line 139
    :cond_e
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "lastPeriod":I
    add-int/lit8 v3, v2, 0x1

    sub-int v3, v0, v3

    if-gt v3, v1, :cond_21

    .line 141
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    .line 142
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    :goto_2a
    return-object v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 116
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 121
    return-void
.end method

.method public whitelist test-api publish(Ljava/util/logging/LogRecord;)V
    .registers 7
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 147
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result v0

    .line 148
    .local v0, "level":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/AndroidHandler;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 150
    return-void

    .line 154
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/internal/logging/AndroidHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_22} :catch_24

    .line 158
    nop

    .end local v2    # "message":Ljava/lang/String;
    goto :goto_2c

    .line 156
    :catch_24
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "AndroidHandler"

    const-string v4, "Error logging message."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_2c
    return-void
.end method

.method public blacklist publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 9
    .param p1, "source"    # Ljava/util/logging/Logger;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/util/logging/Level;
    .param p4, "message"    # Ljava/lang/String;

    .line 163
    invoke-static {p3}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result v0

    .line 164
    .local v0, "priority":I
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 165
    return-void

    .line 169
    :cond_b
    :try_start_b
    invoke-static {v0, p2, p4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    .line 172
    goto :goto_17

    .line 170
    :catch_f
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "AndroidHandler"

    const-string v3, "Error logging message."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_17
    return-void
.end method
