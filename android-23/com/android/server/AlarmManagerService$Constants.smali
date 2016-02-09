.class final Lcom/android/server/AlarmManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME:J = 0xdbba0L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_SHORT_TIME:J = 0xea60L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION:J = 0x2710L

.field private static final DEFAULT_MIN_FUTURITY:J = 0x1388L

.field private static final DEFAULT_MIN_INTERVAL:J = 0xea60L

.field private static final KEY_ALLOW_WHILE_IDLE_LONG_TIME:Ljava/lang/String; = "allow_while_idle_long_time"

.field private static final KEY_ALLOW_WHILE_IDLE_SHORT_TIME:Ljava/lang/String; = "allow_while_idle_short_time"

.field private static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field private static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field private static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"


# instance fields
.field public ALLOW_WHILE_IDLE_LONG_TIME:J

.field public ALLOW_WHILE_IDLE_SHORT_TIME:J

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field private mLastAllowWhileIdleWhitelistDuration:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const-wide/32 v2, 0xea60

    #@3
    .line 204
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    #@5
    .line 205
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@8
    .line 185
    const-wide/16 v0, 0x1388

    #@a
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    #@c
    .line 188
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    #@e
    .line 191
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    #@10
    .line 194
    const-wide/32 v0, 0xdbba0

    #@13
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    #@15
    .line 198
    const-wide/16 v0, 0x2710

    #@17
    .line 197
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    #@19
    .line 201
    new-instance v0, Landroid/util/KeyValueListParser;

    #@1b
    const/16 v1, 0x2c

    #@1d
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    #@20
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@22
    .line 202
    const-wide/16 v0, -0x1

    #@24
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    #@26
    .line 206
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    #@29
    .line 207
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    #@2c
    .line 204
    return-void
.end method

.method private updateConstants()V
    .locals 6

    #@0
    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@7
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    #@9
    .line 240
    const-string/jumbo v4, "alarm_manager_constants"

    #@c
    .line 239
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 247
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@15
    const-string/jumbo v3, "min_futurity"

    #@18
    const-wide/16 v4, 0x1388

    #@1a
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@1d
    move-result-wide v4

    #@1e
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    #@20
    .line 248
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@22
    const-string/jumbo v3, "min_interval"

    #@25
    const-wide/32 v4, 0xea60

    #@28
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@2b
    move-result-wide v4

    #@2c
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    #@2e
    .line 249
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@30
    const-string/jumbo v3, "allow_while_idle_short_time"

    #@33
    .line 250
    const-wide/32 v4, 0xea60

    #@36
    .line 249
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@39
    move-result-wide v4

    #@3a
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    #@3c
    .line 251
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@3e
    const-string/jumbo v3, "allow_while_idle_long_time"

    #@41
    .line 252
    const-wide/32 v4, 0xdbba0

    #@44
    .line 251
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@47
    move-result-wide v4

    #@48
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    #@4a
    .line 253
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    #@4c
    .line 254
    const-string/jumbo v3, "allow_while_idle_whitelist_duration"

    #@4f
    .line 255
    const-wide/16 v4, 0x2710

    #@51
    .line 253
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@54
    move-result-wide v4

    #@55
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    #@57
    .line 257
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    #@5a
    .line 258
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    monitor-exit v2

    #@5e
    .line 236
    return-void

    #@5f
    .line 241
    :catch_0
    move-exception v0

    #@60
    .line 244
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v1, "AlarmManager"

    #@63
    const-string/jumbo v3, "Bad device idle settings"

    #@66
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    goto :goto_0

    #@6a
    .line 237
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    #@6b
    monitor-exit v2

    #@6c
    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 263
    const-string/jumbo v0, "  Settings:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 265
    const-string/jumbo v0, "    "

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    const-string/jumbo v0, "min_futurity"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    const-string/jumbo v0, "="

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 266
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    #@1a
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1d
    .line 267
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@20
    .line 269
    const-string/jumbo v0, "    "

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string/jumbo v0, "min_interval"

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v0, "="

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 270
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    #@34
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@37
    .line 271
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 273
    const-string/jumbo v0, "    "

    #@3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    const-string/jumbo v0, "allow_while_idle_short_time"

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v0, "="

    #@49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 274
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    #@4e
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@51
    .line 275
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@54
    .line 277
    const-string/jumbo v0, "    "

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    const-string/jumbo v0, "allow_while_idle_long_time"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    const-string/jumbo v0, "="

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 278
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    #@68
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@6b
    .line 279
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6e
    .line 281
    const-string/jumbo v0, "    "

    #@71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    const-string/jumbo v0, "allow_while_idle_whitelist_duration"

    #@77
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    const-string/jumbo v0, "="

    #@7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 282
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    #@82
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@85
    .line 283
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@88
    .line 262
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    #@3
    .line 232
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 212
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    #@4
    .line 213
    const-string/jumbo v1, "alarm_manager_constants"

    #@7
    .line 212
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    .line 213
    const/4 v2, 0x0

    #@c
    .line 212
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@f
    .line 214
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    #@12
    .line 210
    return-void
.end method

.method public updateAllowWhileIdleMinTimeLocked()V
    .locals 3

    #@0
    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    #@4
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 219
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    #@a
    .line 218
    :goto_0
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    #@c
    .line 217
    return-void

    #@d
    .line 219
    :cond_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    #@f
    goto :goto_0
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .locals 6

    #@0
    .prologue
    .line 223
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    #@2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    #@4
    cmp-long v1, v2, v4

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 224
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    #@a
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    #@c
    .line 225
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@f
    move-result-object v0

    #@10
    .line 226
    .local v0, "opts":Landroid/app/BroadcastOptions;
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    #@12
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@15
    .line 227
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    #@17
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, v1, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    #@1d
    .line 222
    .end local v0    # "opts":Landroid/app/BroadcastOptions;
    :cond_0
    return-void
.end method
