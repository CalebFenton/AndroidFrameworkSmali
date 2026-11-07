.class public Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;
.super Ljava/lang/Object;
.source "LegacyProtoLogViewerConfigReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProtoLogViewerConfigReader"


# instance fields
.field private blacklist mLogMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist getViewerString(J)Ljava/lang/String;
    .registers 5
    .param p1, "messageHash"    # J

    monitor-enter p0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    if-eqz v0, :cond_13

    .line 46
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    monitor-exit p0

    return-object v0

    .line 48
    .end local p0    # "this":Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;
    :cond_13
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 44
    .end local p1    # "messageHash":J
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist knownViewerStringsNumber()I
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 112
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return v0

    .line 114
    .end local p0    # "this":Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;
    :cond_d
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 110
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized blacklist loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;Ljava/lang/String;)V
    .registers 6
    .param p1, "logger"    # Lcom/android/internal/protolog/common/ILogger;
    .param p2, "viewerConfigFilename"    # Ljava/lang/String;

    monitor-enter p0

    .line 57
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->loadViewerConfig(Ljava/io/InputStream;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " log definitions from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_34} :catch_7b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_59
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_34} :catch_37
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    .line 69
    goto :goto_9d

    .line 56
    .end local p0    # "this":Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;
    .end local p1    # "logger":Lcom/android/internal/protolog/common/ILogger;
    .end local p2    # "viewerConfigFilename":Ljava/lang/String;
    :catchall_35
    move-exception p1

    goto :goto_9f

    .line 66
    .restart local p1    # "logger":Lcom/android/internal/protolog/common/ILogger;
    .restart local p2    # "viewerConfigFilename":Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: JSON parsing exception while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    goto :goto_9d

    .line 63
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_59
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: IOException while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_9d

    .line 60
    :catch_7b
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_38 .. :try_end_9c} :catchall_35

    .line 69
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 70
    :goto_9d
    monitor-exit p0

    return-void

    .line 56
    .end local p1    # "logger":Lcom/android/internal/protolog/common/ILogger;
    .end local p2    # "viewerConfigFilename":Ljava/lang/String;
    :goto_9f
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_35

    throw p1
.end method

.method public declared-synchronized blacklist loadViewerConfig(Ljava/io/InputStream;)V
    .registers 16
    .param p1, "viewerConfigInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6d

    if-eqz v0, :cond_7

    .line 79
    monitor-exit p0

    return-void

    .line 81
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v0, "config":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v2, "builder":Ljava/lang/StringBuilder;
    :goto_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 88
    .end local p0    # "this":Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;
    :cond_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 89
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "json":Lorg/json/JSONObject;
    const-string v5, "messages"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 92
    .local v5, "messages":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    .line 93
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 94
    .local v6, "it":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 95
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_6d

    .line 97
    .local v7, "key":Ljava/lang/String;
    :try_start_50
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 98
    .local v8, "hash":J
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 99
    .local v10, "val":Lorg/json/JSONObject;
    const-string v11, "message"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "msg":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_67} :catch_69
    .catchall {:try_start_50 .. :try_end_67} :catchall_6d

    .line 103
    nop

    .end local v8    # "hash":J
    .end local v10    # "val":Lorg/json/JSONObject;
    .end local v11    # "msg":Ljava/lang/String;
    goto :goto_6a

    .line 101
    :catch_69
    move-exception v8

    .line 104
    .end local v7    # "key":Ljava/lang/String;
    :goto_6a
    goto :goto_44

    .line 105
    :cond_6b
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "config":Ljava/io/InputStreamReader;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "messages":Lorg/json/JSONObject;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local p1    # "viewerConfigInputStream":Ljava/io/InputStream;
    :catchall_6d
    move-exception p1

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p1
.end method
