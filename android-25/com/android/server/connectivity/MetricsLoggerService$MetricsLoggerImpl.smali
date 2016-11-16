.class final Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;
.super Landroid/net/IConnectivityMetricsLogger$Stub;
.source "MetricsLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MetricsLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MetricsLoggerImpl"
.end annotation


# instance fields
.field private final mPendingIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/MetricsLoggerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MetricsLoggerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/MetricsLoggerService;

    #@0
    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@2
    invoke-direct {p0}, Landroid/net/IConnectivityMetricsLogger$Stub;-><init>()V

    #@5
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@c
    .line 127
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 133
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@4
    invoke-virtual {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v12

    #@8
    const-string/jumbo v13, "android.permission.DUMP"

    #@b
    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@e
    move-result v12

    #@f
    if-eqz v12, :cond_0

    #@11
    .line 135
    new-instance v12, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v13, "Permission Denial: can\'t dump ConnectivityMetricsLoggerService from from pid="

    #@19
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v12

    #@1d
    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@20
    move-result v13

    #@21
    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v12

    #@25
    .line 136
    const-string/jumbo v13, ", uid="

    #@28
    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v12

    #@2c
    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2f
    move-result v13

    #@30
    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v12

    #@34
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v12

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 138
    return-void

    #@3e
    .line 141
    :cond_0
    const/4 v5, 0x0

    #@3f
    .line 142
    .local v5, "dumpSerializedSize":Z
    const/4 v4, 0x0

    #@40
    .line 143
    .local v4, "dumpEvents":Z
    const/4 v3, 0x0

    #@41
    .line 144
    .local v3, "dumpDebugInfo":Z
    const/4 v12, 0x0

    #@42
    move-object/from16 v0, p3

    #@44
    array-length v13, v0

    #@45
    :goto_0
    if-ge v12, v13, :cond_5

    #@47
    aget-object v2, p3, v12

    #@49
    .line 145
    .local v2, "arg":Ljava/lang/String;
    const-string/jumbo v14, "--debug"

    #@4c
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v14

    #@50
    if-eqz v14, :cond_2

    #@52
    .line 147
    const/4 v3, 0x1

    #@53
    .line 144
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@55
    goto :goto_0

    #@56
    .line 145
    :cond_2
    const-string/jumbo v14, "--events"

    #@59
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v14

    #@5d
    if-eqz v14, :cond_3

    #@5f
    .line 151
    const/4 v4, 0x1

    #@60
    .line 152
    goto :goto_1

    #@61
    .line 145
    :cond_3
    const-string/jumbo v14, "--size"

    #@64
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v14

    #@68
    if-eqz v14, :cond_4

    #@6a
    .line 155
    const/4 v5, 0x1

    #@6b
    .line 156
    goto :goto_1

    #@6c
    .line 145
    :cond_4
    const-string/jumbo v14, "--all"

    #@6f
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v14

    #@73
    if-eqz v14, :cond_1

    #@75
    .line 159
    const/4 v3, 0x1

    #@76
    .line 160
    const/4 v4, 0x1

    #@77
    .line 161
    const/4 v5, 0x1

    #@78
    .line 162
    goto :goto_1

    #@79
    .line 166
    .end local v2    # "arg":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@7b
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@7d
    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@80
    move-result-object v13

    #@81
    monitor-enter v13

    #@82
    .line 167
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v14, "Number of events: "

    #@8a
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v12

    #@8e
    move-object/from16 v0, p0

    #@90
    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@92
    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@95
    move-result-object v14

    #@96
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->size()I

    #@99
    move-result v14

    #@9a
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v12

    #@9e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v12

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v14, "Counter: "

    #@af
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v12

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@b7
    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get1(Lcom/android/server/connectivity/MetricsLoggerService;)I

    #@ba
    move-result v14

    #@bb
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v12

    #@bf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v12

    #@c3
    move-object/from16 v0, p2

    #@c5
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c8
    .line 169
    move-object/from16 v0, p0

    #@ca
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@cc
    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@cf
    move-result-object v12

    #@d0
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->size()I

    #@d3
    move-result v12

    #@d4
    if-lez v12, :cond_6

    #@d6
    .line 170
    new-instance v12, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v14, "Time span: "

    #@de
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v14

    #@e2
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e5
    move-result-wide v16

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@ea
    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@ed
    move-result-object v12

    #@ee
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    #@f1
    move-result-object v12

    #@f2
    check-cast v12, Landroid/net/ConnectivityMetricsEvent;

    #@f4
    iget-wide v0, v12, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    #@f6
    move-wide/from16 v18, v0

    #@f8
    sub-long v16, v16, v18

    #@fa
    .line 173
    const-wide/16 v18, 0x3e8

    #@fc
    .line 172
    div-long v16, v16, v18

    #@fe
    .line 171
    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@101
    move-result-object v12

    #@102
    .line 170
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v12

    #@106
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v12

    #@10a
    move-object/from16 v0, p2

    #@10c
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10f
    .line 176
    :cond_6
    if-eqz v5, :cond_8

    #@111
    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@114
    move-result-object v9

    #@115
    .line 178
    .local v9, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    #@117
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@119
    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@11c
    move-result-object v12

    #@11d
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@120
    move-result-object v7

    #@121
    .local v7, "e$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@124
    move-result v12

    #@125
    if-eqz v12, :cond_7

    #@127
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12a
    move-result-object v6

    #@12b
    check-cast v6, Landroid/net/ConnectivityMetricsEvent;

    #@12d
    .line 179
    .local v6, "e":Landroid/net/ConnectivityMetricsEvent;
    const/4 v12, 0x0

    #@12e
    invoke-virtual {v9, v6, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@131
    goto :goto_2

    #@132
    .line 166
    .end local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .end local v9    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v12

    #@133
    monitor-exit v13

    #@134
    throw v12

    #@135
    .line 181
    .restart local v7    # "e$iterator":Ljava/util/Iterator;
    .restart local v9    # "p":Landroid/os/Parcel;
    :cond_7
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v14, "Serialized data size: "

    #@13d
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v12

    #@141
    invoke-virtual {v9}, Landroid/os/Parcel;->dataSize()I

    #@144
    move-result v14

    #@145
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v12

    #@149
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v12

    #@14d
    move-object/from16 v0, p2

    #@14f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@152
    .line 182
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    #@155
    .line 185
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .end local v9    # "p":Landroid/os/Parcel;
    :cond_8
    if-eqz v4, :cond_9

    #@157
    .line 186
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@15a
    .line 187
    const-string/jumbo v12, "Events:"

    #@15d
    move-object/from16 v0, p2

    #@15f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@162
    .line 188
    move-object/from16 v0, p0

    #@164
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@166
    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@169
    move-result-object v12

    #@16a
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16d
    move-result-object v7

    #@16e
    .restart local v7    # "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@171
    move-result v12

    #@172
    if-eqz v12, :cond_9

    #@174
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@177
    move-result-object v6

    #@178
    check-cast v6, Landroid/net/ConnectivityMetricsEvent;

    #@17a
    .line 189
    .restart local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v6}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    #@17d
    move-result-object v12

    #@17e
    move-object/from16 v0, p2

    #@180
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@183
    goto :goto_3

    #@184
    .end local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v13

    #@185
    .line 194
    if-eqz v3, :cond_c

    #@187
    .line 195
    move-object/from16 v0, p0

    #@189
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@18b
    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    #@18e
    move-result-object v13

    #@18f
    monitor-enter v13

    #@190
    .line 196
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@193
    .line 197
    const/4 v8, 0x0

    #@194
    .local v8, "i":I
    :goto_4
    const/4 v12, 0x5

    #@195
    if-ge v8, v12, :cond_b

    #@197
    .line 198
    move-object/from16 v0, p0

    #@199
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@19b
    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    #@19e
    move-result-object v12

    #@19f
    aget v12, v12, v8

    #@1a1
    if-lez v12, :cond_a

    #@1a3
    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    const-string/jumbo v14, "Throttling Counter #"

    #@1ab
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v12

    #@1af
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v12

    #@1b3
    const-string/jumbo v14, ": "

    #@1b6
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v12

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@1be
    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    #@1c1
    move-result-object v14

    #@1c2
    aget v14, v14, v8

    #@1c4
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v12

    #@1c8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cb
    move-result-object v12

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d1
    .line 197
    :cond_a
    add-int/lit8 v8, v8, 0x1

    #@1d3
    goto :goto_4

    #@1d4
    .line 202
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    #@1d6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1d9
    const-string/jumbo v14, "Throttling Time Remaining: "

    #@1dc
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v12

    #@1e0
    .line 204
    move-object/from16 v0, p0

    #@1e2
    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@1e4
    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@1e7
    move-result-wide v14

    #@1e8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1eb
    move-result-wide v16

    #@1ec
    sub-long v14, v14, v16

    #@1ee
    .line 205
    const-wide/16 v16, 0x3e8

    #@1f0
    .line 204
    div-long v14, v14, v16

    #@1f2
    .line 203
    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@1f5
    move-result-object v14

    #@1f6
    .line 202
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v12

    #@1fa
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v12

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@203
    monitor-exit v13

    #@204
    .line 209
    .end local v8    # "i":I
    :cond_c
    move-object/from16 v0, p0

    #@206
    iget-object v13, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@208
    monitor-enter v13

    #@209
    .line 210
    :try_start_3
    move-object/from16 v0, p0

    #@20b
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@20d
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    #@210
    move-result v12

    #@211
    if-nez v12, :cond_d

    #@213
    .line 211
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@216
    .line 212
    const-string/jumbo v12, "Pending intents:"

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21e
    .line 213
    move-object/from16 v0, p0

    #@220
    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@222
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@225
    move-result-object v11

    #@226
    .local v11, "pi$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@229
    move-result v12

    #@22a
    if-eqz v12, :cond_d

    #@22c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22f
    move-result-object v10

    #@230
    check-cast v10, Landroid/app/PendingIntent;

    #@232
    .line 214
    .local v10, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    #@235
    move-result-object v12

    #@236
    move-object/from16 v0, p2

    #@238
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@23b
    goto :goto_5

    #@23c
    .line 209
    .end local v10    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "pi$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v12

    #@23d
    monitor-exit v13

    #@23e
    throw v12

    #@23f
    .line 195
    :catchall_2
    move-exception v12

    #@240
    monitor-exit v13

    #@241
    throw v12

    #@242
    :cond_d
    monitor-exit v13

    #@243
    .line 132
    return-void
.end method

.method public getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    .locals 14
    .param p1, "reference"    # Landroid/net/ConnectivityMetricsEvent$Reference;

    #@0
    .prologue
    .line 315
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@2
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    #@5
    .line 316
    invoke-virtual {p1}, Landroid/net/ConnectivityMetricsEvent$Reference;->getValue()J

    #@8
    move-result-wide v6

    #@9
    .line 320
    .local v6, "ref":J
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@b
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@e
    move-result-object v9

    #@f
    monitor-enter v9

    #@10
    .line 321
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@12
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@15
    move-result-wide v10

    #@16
    cmp-long v8, v6, v10

    #@18
    if-lez v8, :cond_0

    #@1a
    .line 322
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    const-string/jumbo v10, "Invalid reference"

    #@21
    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 323
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@26
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@29
    move-result-wide v10

    #@2a
    invoke-virtual {p1, v10, v11}, Landroid/net/ConnectivityMetricsEvent$Reference;->setValue(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 324
    const/4 v8, 0x0

    #@2e
    monitor-exit v9

    #@2f
    return-object v8

    #@30
    .line 326
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@32
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@35
    move-result-wide v10

    #@36
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@38
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    #@3f
    move-result v8

    #@40
    int-to-long v12, v8

    #@41
    sub-long/2addr v10, v12

    #@42
    cmp-long v8, v6, v10

    #@44
    if-gez v8, :cond_1

    #@46
    .line 327
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@48
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@4b
    move-result-wide v10

    #@4c
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@4e
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    #@55
    move-result v8

    #@56
    int-to-long v12, v8

    #@57
    sub-long v6, v10, v12

    #@59
    .line 331
    :cond_1
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@5b
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    #@62
    move-result v8

    #@63
    .line 332
    iget-object v10, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@65
    invoke-static {v10}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@68
    move-result-wide v10

    #@69
    sub-long/2addr v10, v6

    #@6a
    long-to-int v10, v10

    #@6b
    .line 331
    sub-int v4, v8, v10

    #@6d
    .line 334
    .local v4, "numEventsToSkip":I
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@6f
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    #@76
    move-result v8

    #@77
    sub-int/2addr v8, v4

    #@78
    new-array v5, v8, [Landroid/net/ConnectivityMetricsEvent;

    #@7a
    .line 335
    .local v5, "result":[Landroid/net/ConnectivityMetricsEvent;
    const/4 v2, 0x0

    #@7b
    .line 336
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@7d
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@80
    move-result-object v8

    #@81
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v1

    #@85
    .local v1, "e$iterator":Ljava/util/Iterator;
    move v3, v2

    #@86
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@89
    move-result v8

    #@8a
    if-eqz v8, :cond_3

    #@8c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Landroid/net/ConnectivityMetricsEvent;

    #@92
    .line 337
    .local v0, "e":Landroid/net/ConnectivityMetricsEvent;
    if-lez v4, :cond_2

    #@94
    .line 338
    add-int/lit8 v4, v4, -0x1

    #@96
    move v2, v3

    #@97
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    #@98
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@99
    .line 340
    :cond_2
    add-int/lit8 v2, v3, 0x1

    #@9b
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v0, v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    goto :goto_1

    #@9e
    .line 320
    .end local v0    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v4    # "numEventsToSkip":I
    .end local v5    # "result":[Landroid/net/ConnectivityMetricsEvent;
    :catchall_0
    move-exception v8

    #@9f
    monitor-exit v9

    #@a0
    throw v8

    #@a1
    .line 344
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v3    # "i":I
    .restart local v4    # "numEventsToSkip":I
    .restart local v5    # "result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@a3
    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@a6
    move-result-wide v10

    #@a7
    invoke-virtual {p1, v10, v11}, Landroid/net/ConnectivityMetricsEvent$Reference;->setValue(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@aa
    monitor-exit v9

    #@ab
    .line 347
    return-object v5
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)J
    .locals 4
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    .line 221
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [Landroid/net/ConnectivityMetricsEvent;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    .line 222
    .local v0, "events":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    #@9
    move-result-wide v2

    #@a
    return-wide v2
.end method

.method public logEvents([Landroid/net/ConnectivityMetricsEvent;)J
    .locals 18
    .param p1, "events"    # [Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    .line 235
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@4
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap1(Lcom/android/server/connectivity/MetricsLoggerService;)V

    #@7
    .line 237
    if-eqz p1, :cond_0

    #@9
    move-object/from16 v0, p1

    #@b
    array-length v3, v0

    #@c
    if-nez v3, :cond_1

    #@e
    .line 238
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "No events passed to logEvents()"

    #@15
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 239
    const-wide/16 v4, -0x1

    #@1a
    return-wide v4

    #@1b
    .line 242
    :cond_1
    const/4 v3, 0x0

    #@1c
    aget-object v3, p1, v3

    #@1e
    iget v8, v3, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    #@20
    .line 243
    .local v8, "componentTag":I
    if-ltz v8, :cond_2

    #@22
    .line 244
    const/4 v3, 0x5

    #@23
    if-lt v8, v3, :cond_3

    #@25
    .line 245
    :cond_2
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Unexpected tag: "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 246
    const-wide/16 v4, -0x1

    #@42
    return-wide v4

    #@43
    .line 249
    :cond_3
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@47
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    #@4a
    move-result-object v4

    #@4b
    monitor-enter v4

    #@4c
    .line 250
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4f
    move-result-wide v10

    #@50
    .line 251
    .local v10, "currentTimeMillis":J
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@54
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@57
    move-result-wide v6

    #@58
    cmp-long v3, v10, v6

    #@5a
    if-lez v3, :cond_4

    #@5c
    .line 252
    move-object/from16 v0, p0

    #@5e
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@60
    invoke-static {v3, v10, v11}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap3(Lcom/android/server/connectivity/MetricsLoggerService;J)V

    #@63
    .line 255
    :cond_4
    move-object/from16 v0, p0

    #@65
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@67
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    #@6a
    move-result-object v3

    #@6b
    aget v5, v3, v8

    #@6d
    move-object/from16 v0, p1

    #@6f
    array-length v6, v0

    #@70
    add-int/2addr v5, v6

    #@71
    aput v5, v3, v8

    #@73
    .line 257
    move-object/from16 v0, p0

    #@75
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@77
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    #@7a
    move-result-object v3

    #@7b
    aget v3, v3, v8

    #@7d
    .line 258
    const/16 v5, 0x3e8

    #@7f
    .line 257
    if-le v3, v5, :cond_5

    #@81
    .line 259
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    new-instance v5, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v6, "Too many events from #"

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    .line 260
    const-string/jumbo v6, ". Block until "

    #@98
    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    .line 260
    move-object/from16 v0, p0

    #@9e
    iget-object v6, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@a0
    invoke-static {v6}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@a3
    move-result-wide v6

    #@a4
    .line 259
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v5

    #@ac
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 262
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@b3
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b6
    move-result-wide v6

    #@b7
    monitor-exit v4

    #@b8
    return-wide v6

    #@b9
    :cond_5
    monitor-exit v4

    #@ba
    .line 266
    const/4 v14, 0x0

    #@bb
    .line 268
    .local v14, "sendPendingIntents":Z
    move-object/from16 v0, p0

    #@bd
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@bf
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    #@c2
    move-result-object v4

    #@c3
    monitor-enter v4

    #@c4
    .line 269
    const/4 v3, 0x0

    #@c5
    :try_start_1
    move-object/from16 v0, p1

    #@c7
    array-length v5, v0

    #@c8
    :goto_0
    if-ge v3, v5, :cond_7

    #@ca
    aget-object v12, p1, v3

    #@cc
    .line 270
    .local v12, "e":Landroid/net/ConnectivityMetricsEvent;
    iget v6, v12, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    #@ce
    if-eq v6, v8, :cond_6

    #@d0
    .line 271
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    new-instance v5, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v6, "Unexpected tag: "

    #@dc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v5

    #@e0
    iget v6, v12, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    #@e2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v5

    #@e6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v5

    #@ea
    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@ed
    .line 272
    const-wide/16 v6, -0x1

    #@ef
    monitor-exit v4

    #@f0
    return-wide v6

    #@f1
    .line 249
    .end local v10    # "currentTimeMillis":J
    .end local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v14    # "sendPendingIntents":Z
    :catchall_0
    move-exception v3

    #@f2
    monitor-exit v4

    #@f3
    throw v3

    #@f4
    .line 275
    .restart local v10    # "currentTimeMillis":J
    .restart local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    .restart local v14    # "sendPendingIntents":Z
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    #@f6
    iget-object v6, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@f8
    invoke-static {v6, v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap0(Lcom/android/server/connectivity/MetricsLoggerService;Landroid/net/ConnectivityMetricsEvent;)V

    #@fb
    .line 269
    add-int/lit8 v3, v3, 0x1

    #@fd
    goto :goto_0

    #@fe
    .line 278
    .end local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    :cond_7
    move-object/from16 v0, p0

    #@100
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@102
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    #@105
    move-result-wide v6

    #@106
    move-object/from16 v0, p1

    #@108
    array-length v5, v0

    #@109
    int-to-long v0, v5

    #@10a
    move-wide/from16 v16, v0

    #@10c
    add-long v6, v6, v16

    #@10e
    invoke-static {v3, v6, v7}, Lcom/android/server/connectivity/MetricsLoggerService;->-set1(Lcom/android/server/connectivity/MetricsLoggerService;J)J

    #@111
    .line 280
    move-object/from16 v0, p0

    #@113
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@115
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get1(Lcom/android/server/connectivity/MetricsLoggerService;)I

    #@118
    move-result v5

    #@119
    move-object/from16 v0, p1

    #@11b
    array-length v6, v0

    #@11c
    add-int/2addr v5, v6

    #@11d
    invoke-static {v3, v5}, Lcom/android/server/connectivity/MetricsLoggerService;->-set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I

    #@120
    .line 281
    move-object/from16 v0, p0

    #@122
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@124
    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get1(Lcom/android/server/connectivity/MetricsLoggerService;)I

    #@127
    move-result v3

    #@128
    const/16 v5, 0x12c

    #@12a
    if-lt v3, v5, :cond_8

    #@12c
    .line 282
    move-object/from16 v0, p0

    #@12e
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@130
    const/4 v5, 0x0

    #@131
    invoke-static {v3, v5}, Lcom/android/server/connectivity/MetricsLoggerService;->-set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@134
    .line 283
    const/4 v14, 0x1

    #@135
    :cond_8
    monitor-exit v4

    #@136
    .line 287
    if-eqz v14, :cond_a

    #@138
    .line 288
    move-object/from16 v0, p0

    #@13a
    iget-object v15, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@13c
    monitor-enter v15

    #@13d
    .line 289
    :try_start_3
    move-object/from16 v0, p0

    #@13f
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@141
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@144
    move-result-object v13

    #@145
    .local v13, "pi$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@148
    move-result v3

    #@149
    if-eqz v3, :cond_9

    #@14b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14e
    move-result-object v2

    #@14f
    check-cast v2, Landroid/app/PendingIntent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@151
    .line 292
    .local v2, "pi":Landroid/app/PendingIntent;
    :try_start_4
    move-object/from16 v0, p0

    #@153
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@155
    invoke-virtual {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    #@158
    move-result-object v3

    #@159
    const/4 v4, 0x0

    #@15a
    const/4 v5, 0x0

    #@15b
    const/4 v6, 0x0

    #@15c
    const/4 v7, 0x0

    #@15d
    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@160
    goto :goto_1

    #@161
    .line 293
    :catch_0
    move-exception v9

    #@162
    .line 294
    .local v9, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_5
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@165
    move-result-object v3

    #@166
    new-instance v4, Ljava/lang/StringBuilder;

    #@168
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16b
    const-string/jumbo v5, "Pending intent canceled: "

    #@16e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v4

    #@172
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v4

    #@176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v4

    #@17a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17d
    .line 295
    move-object/from16 v0, p0

    #@17f
    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@181
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@184
    goto :goto_1

    #@185
    .line 288
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v9    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v13    # "pi$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@186
    monitor-exit v15

    #@187
    throw v3

    #@188
    .line 268
    :catchall_2
    move-exception v3

    #@189
    monitor-exit v4

    #@18a
    throw v3

    #@18b
    .restart local v13    # "pi$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v15

    #@18c
    .line 301
    .end local v13    # "pi$iterator":Ljava/util/Iterator;
    :cond_a
    const-wide/16 v4, 0x0

    #@18e
    return-wide v4
.end method

.method public register(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    #@5
    .line 354
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@7
    monitor-enter v1

    #@8
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 356
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v2, "Replacing registered pending intent"

    #@17
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 361
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 354
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public unregister(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    #@5
    .line 368
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@7
    monitor-enter v1

    #@8
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 370
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v2, "Pending intent is not registered"

    #@17
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 364
    return-void

    #@1c
    .line 368
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
