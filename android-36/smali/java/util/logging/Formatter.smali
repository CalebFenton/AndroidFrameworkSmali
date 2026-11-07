.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public declared-synchronized whitelist test-api formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_53

    .line 116
    .local v1, "catalog":Ljava/util/ResourceBundle;
    if-eqz v1, :cond_1b

    .line 118
    :try_start_b
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_13} :catch_15
    .catchall {:try_start_b .. :try_end_13} :catchall_53

    move-object v0, v2

    .line 122
    goto :goto_1b

    .line 119
    .end local p0    # "this":Ljava/util/logging/Formatter;
    :catch_15
    move-exception v2

    .line 121
    .local v2, "ex":Ljava/util/MissingResourceException;
    :try_start_16
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_53

    move-object v0, v3

    .line 126
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "parameters":[Ljava/lang/Object;
    if-eqz v2, :cond_4e

    array-length v3, v2

    if-nez v3, :cond_25

    goto :goto_4e

    .line 136
    :cond_25
    const-string v3, "{0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_48

    const-string v3, "{1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_48

    const-string v3, "{2"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_48

    const-string v3, "{3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_43} :catch_50
    .catchall {:try_start_1b .. :try_end_43} :catchall_53

    if-ltz v3, :cond_46

    goto :goto_48

    .line 140
    :cond_46
    monitor-exit p0

    return-object v0

    .line 138
    :cond_48
    :goto_48
    :try_start_48
    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_50
    .catchall {:try_start_48 .. :try_end_4c} :catchall_53

    monitor-exit p0

    return-object v3

    .line 129
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v0

    .line 142
    .end local v2    # "parameters":[Ljava/lang/Object;
    :catch_50
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/lang/Exception;
    monitor-exit p0

    return-object v0

    .line 113
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "catalog":Ljava/util/ResourceBundle;
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public whitelist test-api getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 75
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 88
    const-string v0, ""

    return-object v0
.end method
