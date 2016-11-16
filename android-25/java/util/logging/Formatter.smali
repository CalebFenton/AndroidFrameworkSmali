.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public declared-synchronized formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 114
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 115
    .local v3, "format":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    .line 116
    .local v0, "catalog":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_0

    #@b
    .line 118
    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v3

    #@13
    .line 126
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    .line 127
    .local v4, "parameters":[Ljava/lang/Object;
    if-eqz v4, :cond_1

    #@19
    array-length v5, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    if-nez v5, :cond_2

    #@1c
    :cond_1
    monitor-exit p0

    #@1d
    .line 129
    return-object v3

    #@1e
    .line 119
    .end local v4    # "parameters":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@1f
    .line 121
    .local v2, "ex":Ljava/util/MissingResourceException;
    :try_start_3
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@22
    move-result-object v3

    #@23
    goto :goto_0

    #@24
    .line 136
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    .restart local v4    # "parameters":[Ljava/lang/Object;
    :cond_2
    :try_start_4
    const-string/jumbo v5, "{0"

    #@27
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2a
    move-result v5

    #@2b
    if-gez v5, :cond_3

    #@2d
    const-string/jumbo v5, "{1"

    #@30
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@33
    move-result v5

    #@34
    if-ltz v5, :cond_4

    #@36
    .line 138
    :cond_3
    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@39
    move-result-object v5

    #@3a
    monitor-exit p0

    #@3b
    return-object v5

    #@3c
    .line 137
    :cond_4
    :try_start_5
    const-string/jumbo v5, "{2"

    #@3f
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@42
    move-result v5

    #@43
    if-gez v5, :cond_3

    #@45
    const-string/jumbo v5, "{3"

    #@48
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@4b
    move-result v5

    #@4c
    if-gez v5, :cond_3

    #@4e
    monitor-exit p0

    #@4f
    .line 140
    return-object v3

    #@50
    .line 142
    .end local v4    # "parameters":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    #@51
    .local v1, "ex":Ljava/lang/Exception;
    monitor-exit p0

    #@52
    .line 144
    return-object v3

    #@53
    .end local v0    # "catalog":Ljava/util/ResourceBundle;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "format":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@54
    monitor-exit p0

    #@55
    throw v5
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 75
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 88
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method
