.class Lcom/android/internal/inputmethod/ImeTracingServerImpl;
.super Lcom/android/internal/inputmethod/ImeTracing;
.source "ImeTracingServerImpl.java"


# static fields
.field private static final blacklist BUFFER_CAPACITY:I = 0x400000

.field private static final blacklist MAGIC_NUMBER_CLIENTS_VALUE:J = 0x4543415254434d49L

.field private static final blacklist MAGIC_NUMBER_IMMS_VALUE:J = 0x45434152544d4d49L

.field private static final blacklist MAGIC_NUMBER_IMS_VALUE:J = 0x4543415254534d49L

.field private static final blacklist TRACE_DIRNAME:Ljava/lang/String; = "/data/misc/wmtrace/"

.field private static final blacklist TRACE_FILENAME_CLIENTS:Ljava/lang/String; = "ime_trace_clients.winscope"

.field private static final blacklist TRACE_FILENAME_IMMS:Ljava/lang/String; = "ime_trace_managerservice.winscope"

.field private static final blacklist TRACE_FILENAME_IMS:Ljava/lang/String; = "ime_trace_service.winscope"


# instance fields
.field private final blacklist mBufferClients:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mBufferImms:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mBufferIms:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mEnabledLock:Ljava/lang/Object;

.field private final blacklist mTraceFileClients:Ljava/io/File;

.field private final blacklist mTraceFileImms:Ljava/io/File;

.field private final blacklist mTraceFileIms:Ljava/io/File;


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 73
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracing;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    .line 75
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/ime_trace_clients.winscope"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileClients:Ljava/io/File;

    .line 76
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    .line 77
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/ime_trace_service.winscope"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileIms:Ljava/io/File;

    .line 78
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/ime_trace_managerservice.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileImms:Ljava/io/File;

    .line 80
    return-void
.end method

.method private blacklist resetBuffers()V
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 246
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 247
    return-void
.end method

.method private blacklist writeTracesToFilesLocked()V
    .registers 12

    .line 141
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 145
    .local v0, "timeOffsetNs":J
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 146
    .local v2, "clientsProto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x4543415254434d49L    # 4.655612619772045E25

    const-wide v5, 0x10600000001L

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 148
    const-wide v3, 0x10600000003L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 150
    iget-object v7, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    iget-object v8, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileClients:Ljava/io/File;

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 152
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 153
    .local v7, "imsProto":Landroid/util/proto/ProtoOutputStream;
    const-wide v8, 0x4543415254534d49L    # 4.655612620672765E25

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 155
    invoke-virtual {v7, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 157
    iget-object v8, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    iget-object v9, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileIms:Ljava/io/File;

    invoke-virtual {v8, v9, v7}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 159
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 160
    .local v8, "immsProto":Landroid/util/proto/ProtoOutputStream;
    const-wide v9, 0x45434152544d4d49L    # 4.655612620334995E25

    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 162
    invoke-virtual {v8, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 165
    iget-object v3, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileImms:Ljava/io/File;

    invoke-virtual {v3, v4, v8}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->resetBuffers()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_61} :catch_62

    .line 170
    .end local v0    # "timeOffsetNs":J
    .end local v2    # "clientsProto":Landroid/util/proto/ProtoOutputStream;
    .end local v7    # "imsProto":Landroid/util/proto/ProtoOutputStream;
    .end local v8    # "immsProto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_6a

    .line 168
    :catch_62
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "imeTracing"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6a
    return-void
.end method


# virtual methods
.method public blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "source"    # I

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 91
    packed-switch p2, :pswitch_data_2a

    .line 103
    const-string v0, "imeTracing"

    const-string v1, "Request to add to buffer, but source not recognised."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 99
    :pswitch_17
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 100
    return-void

    .line 96
    :pswitch_1d
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 97
    return-void

    .line 93
    :pswitch_23
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 94
    return-void

    .line 106
    :cond_29
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1d
        :pswitch_17
    .end packed-switch
.end method

.method public blacklist saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 220
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    .line 221
    return-void

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_25

    .line 234
    :cond_15
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 235
    const-string v1, "Writing traces in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->writeTracesToFilesLocked()V

    .line 239
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 225
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    .line 240
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist startTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 176
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    .line 177
    const-string v0, "imeTracing"

    const-string v1, "Warn: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 183
    const-string v1, "imeTracing"

    const-string v2, "Warn: Tracing is already started."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    monitor-exit v0

    return-void

    .line 187
    :cond_24
    const-string v1, "Starting tracing in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 190
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->resetBuffers()V

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist stopTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 196
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    .line 197
    const-string v0, "imeTracing"

    const-string v1, "Warn: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 201
    :cond_c
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_29

    .line 207
    :cond_1c
    const-string v1, "Stopping tracing and writing traces in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    .line 211
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->writeTracesToFilesLocked()V

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 203
    :cond_29
    :goto_29
    const-string v1, "imeTracing"

    const-string v2, "Warn: Tracing is not available or not started."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v0

    return-void

    .line 212
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
    .registers 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "immInstance"    # Landroid/view/inputmethod/InputMethodManager;
    .param p3, "icProto"    # [B

    .line 112
    return-void
.end method

.method public blacklist triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V
    .registers 6
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "dumper"    # Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2b

    .line 125
    :cond_d
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_10
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    if-eqz v1, :cond_16

    .line 127
    monitor-exit v0

    return-void

    .line 129
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    .line 130
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_28

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sendToService([BILjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    .line 135
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_24
    move-exception v0

    iput-boolean v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    .line 136
    throw v0

    .line 130
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1

    .line 122
    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .registers 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "dumper"    # Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    .param p3, "icProto"    # [B

    .line 117
    return-void
.end method
