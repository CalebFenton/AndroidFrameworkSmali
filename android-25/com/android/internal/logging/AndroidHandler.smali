.class public Lcom/android/internal/logging/AndroidHandler;
.super Ljava/util/logging/Handler;
.source "AndroidHandler.java"

# interfaces
.implements Ldalvik/system/DalvikLogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/logging/AndroidHandler$1;
    }
.end annotation


# static fields
.field private static final THE_FORMATTER:Ljava/util/logging/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    new-instance v0, Lcom/android/internal/logging/AndroidHandler$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/logging/AndroidHandler$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    #@7
    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@3
    .line 111
    sget-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/AndroidHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    #@8
    .line 110
    return-void
.end method

.method static getAndroidLevel(Ljava/util/logging/Level;)I
    .locals 2
    .param p0, "level"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v0

    #@4
    .line 163
    .local v0, "value":I
    const/16 v1, 0x3e8

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 164
    const/4 v1, 0x6

    #@9
    return v1

    #@a
    .line 165
    :cond_0
    const/16 v1, 0x384

    #@c
    if-lt v0, v1, :cond_1

    #@e
    .line 166
    const/4 v1, 0x5

    #@f
    return v1

    #@10
    .line 167
    :cond_1
    const/16 v1, 0x320

    #@12
    if-lt v0, v1, :cond_2

    #@14
    .line 168
    const/4 v1, 0x4

    #@15
    return v1

    #@16
    .line 170
    :cond_2
    const/4 v1, 0x3

    #@17
    return v1
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 115
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 120
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@3
    move-result-object v4

    #@4
    invoke-static {v4}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    #@7
    move-result v1

    #@8
    .line 127
    .local v1, "level":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-static {v4}, Ldalvik/system/DalvikLogging;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 128
    .local v3, "tag":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_0

    #@16
    .line 129
    return-void

    #@17
    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/logging/AndroidHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 134
    .local v2, "message":Ljava/lang/String;
    invoke-static {v1, v3, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 125
    .end local v2    # "message":Ljava/lang/String;
    :goto_0
    return-void

    #@23
    .line 135
    :catch_0
    move-exception v0

    #@24
    .line 136
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "AndroidHandler"

    #@27
    const-string/jumbo v5, "Error logging message."

    #@2a
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0
.end method

.method public publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/util/logging/Logger;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/util/logging/Level;
    .param p4, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    invoke-static {p3}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    #@3
    move-result v1

    #@4
    .line 143
    .local v1, "priority":I
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 144
    return-void

    #@b
    .line 148
    :cond_0
    :try_start_0
    invoke-static {v1, p2, p4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 140
    :goto_0
    return-void

    #@f
    .line 149
    :catch_0
    move-exception v0

    #@10
    .line 150
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AndroidHandler"

    #@13
    const-string/jumbo v3, "Error logging message."

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method
