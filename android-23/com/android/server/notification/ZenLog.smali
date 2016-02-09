.class public Lcom/android/server/notification/ZenLog;
.super Ljava/lang/Object;
.source "ZenLog.java"


# static fields
.field private static final DEBUG:Z

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MSGS:[Ljava/lang/String;

.field private static final SIZE:I

.field private static final TAG:Ljava/lang/String; = "ZenLog"

.field private static final TIMES:[J

.field private static final TYPES:[I

.field private static final TYPE_ALLOW_DISABLE:I = 0x2

.field private static final TYPE_CONFIG:I = 0xb

.field private static final TYPE_DISABLE_EFFECTS:I = 0xd

.field private static final TYPE_DOWNTIME:I = 0x5

.field private static final TYPE_EXIT_CONDITION:I = 0x8

.field private static final TYPE_INTERCEPTED:I = 0x1

.field private static final TYPE_LISTENER_HINTS_CHANGED:I = 0xf

.field private static final TYPE_NOT_INTERCEPTED:I = 0xc

.field private static final TYPE_SET_RINGER_MODE_EXTERNAL:I = 0x3

.field private static final TYPE_SET_RINGER_MODE_INTERNAL:I = 0x4

.field private static final TYPE_SET_ZEN_MODE:I = 0x6

.field private static final TYPE_SUBSCRIBE:I = 0x9

.field private static final TYPE_SUPPRESSOR_CHANGED:I = 0xe

.field private static final TYPE_UNSUBSCRIBE:I = 0xa

.field private static final TYPE_UPDATE_ZEN_MODE:I = 0x7

.field private static sNext:I

.field private static sSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 37
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    sput-boolean v0, Lcom/android/server/notification/ZenLog;->DEBUG:Z

    #@4
    .line 39
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/16 v0, 0x64

    #@a
    :goto_0
    sput v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@c
    .line 41
    sget v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@e
    new-array v0, v0, [J

    #@10
    sput-object v0, Lcom/android/server/notification/ZenLog;->TIMES:[J

    #@12
    .line 42
    sget v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@14
    new-array v0, v0, [I

    #@16
    sput-object v0, Lcom/android/server/notification/ZenLog;->TYPES:[I

    #@18
    .line 43
    sget v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@1a
    new-array v0, v0, [Ljava/lang/String;

    #@1c
    sput-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    #@1e
    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@20
    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    #@23
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    #@28
    .line 35
    return-void

    #@29
    .line 39
    :cond_0
    const/16 v0, 0x14

    #@2b
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static append(ILjava/lang/String;)V
    .locals 6
    .param p0, "type"    # I
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    sget-object v1, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    #@2
    monitor-enter v1

    #@3
    .line 198
    :try_start_0
    sget-object v0, Lcom/android/server/notification/ZenLog;->TIMES:[J

    #@5
    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    #@7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v4

    #@b
    aput-wide v4, v0, v2

    #@d
    .line 199
    sget-object v0, Lcom/android/server/notification/ZenLog;->TYPES:[I

    #@f
    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    #@11
    aput p0, v0, v2

    #@13
    .line 200
    sget-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    #@15
    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    #@17
    aput-object p1, v0, v2

    #@19
    .line 201
    sget v0, Lcom/android/server/notification/ZenLog;->sNext:I

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    sget v2, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@1f
    rem-int/2addr v0, v2

    #@20
    sput v0, Lcom/android/server/notification/ZenLog;->sNext:I

    #@22
    .line 202
    sget v0, Lcom/android/server/notification/ZenLog;->sSize:I

    #@24
    sget v2, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@26
    if-ge v0, v2, :cond_0

    #@28
    .line 203
    sget v0, Lcom/android/server/notification/ZenLog;->sSize:I

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    sput v0, Lcom/android/server/notification/ZenLog;->sSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_0
    monitor-exit v1

    #@2f
    .line 206
    sget-boolean v0, Lcom/android/server/notification/ZenLog;->DEBUG:Z

    #@31
    if-eqz v0, :cond_1

    #@33
    const-string/jumbo v0, "ZenLog"

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string/jumbo v2, ": "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 196
    :cond_1
    return-void

    #@56
    .line 197
    :catchall_0
    move-exception v0

    #@57
    monitor-exit v1

    #@58
    throw v0
.end method

.method private static componentToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 193
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    return-object v0
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    sget-object v4, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    #@2
    monitor-enter v4

    #@3
    .line 211
    :try_start_0
    sget v3, Lcom/android/server/notification/ZenLog;->sNext:I

    #@5
    sget v5, Lcom/android/server/notification/ZenLog;->sSize:I

    #@7
    sub-int/2addr v3, v5

    #@8
    sget v5, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@a
    add-int/2addr v3, v5

    #@b
    sget v5, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@d
    rem-int v2, v3, v5

    #@f
    .line 212
    .local v2, "start":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/server/notification/ZenLog;->sSize:I

    #@12
    if-ge v0, v3, :cond_0

    #@14
    .line 213
    add-int v3, v2, v0

    #@16
    sget v5, Lcom/android/server/notification/ZenLog;->SIZE:I

    #@18
    rem-int v1, v3, v5

    #@1a
    .line 214
    .local v1, "j":I
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 215
    sget-object v3, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    #@1f
    new-instance v5, Ljava/util/Date;

    #@21
    sget-object v6, Lcom/android/server/notification/ZenLog;->TIMES:[J

    #@23
    aget-wide v6, v6, v1

    #@25
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@28
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 216
    const/16 v3, 0x20

    #@31
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@34
    .line 217
    sget-object v3, Lcom/android/server/notification/ZenLog;->TYPES:[I

    #@36
    aget v3, v3, v1

    #@38
    invoke-static {v3}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 218
    const-string/jumbo v3, ": "

    #@42
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    .line 219
    sget-object v3, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    #@47
    aget-object v3, v3, v1

    #@49
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .end local v1    # "j":I
    :cond_0
    monitor-exit v4

    #@50
    .line 209
    return-void

    #@51
    .line 210
    .end local v0    # "i":I
    .end local v2    # "start":I
    :catchall_0
    move-exception v3

    #@52
    monitor-exit v4

    #@53
    throw v3
.end method

.method private static hintsToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "hints"    # I

    #@0
    .prologue
    .line 185
    packed-switch p0, :pswitch_data_0

    #@3
    .line 188
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 186
    :pswitch_0
    const-string/jumbo v0, "none"

    #@b
    return-object v0

    #@c
    .line 187
    :pswitch_1
    const-string/jumbo v0, "disable_effects"

    #@f
    return-object v0

    #@10
    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ringerMode"    # I

    #@0
    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    #@3
    .line 170
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 167
    :pswitch_0
    const-string/jumbo v0, "silent"

    #@a
    return-object v0

    #@b
    .line 168
    :pswitch_1
    const-string/jumbo v0, "vibrate"

    #@e
    return-object v0

    #@f
    .line 169
    :pswitch_2
    const-string/jumbo v0, "normal"

    #@12
    return-object v0

    #@13
    .line 166
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;
    .locals 1
    .param p0, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p1, "e"    # Landroid/os/RemoteException;

    #@0
    .prologue
    .line 141
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "no provider"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    if-eqz p1, :cond_1

    #@8
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0

    #@d
    :cond_1
    const-string/jumbo v0, "ok"

    #@10
    goto :goto_0
.end method

.method public static traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "oldConfig"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "newConfig"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v1

    #@a
    .line 121
    const-string/jumbo v2, ","

    #@d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 121
    if-eqz p2, :cond_0

    #@13
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 120
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 122
    const-string/jumbo v1, ","

    #@1e
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 122
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    #@25
    move-result-object v1

    #@26
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    const/16 v1, 0xb

    #@30
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@33
    .line 119
    return-void
.end method

.method public static traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ","

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    const/16 v1, 0xd

    #@1e
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@21
    .line 125
    return-void
.end method

.method public static traceDowntimeAutotrigger(Ljava/lang/String;)V
    .locals 1
    .param p0, "result"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    const/4 v0, 0x5

    #@1
    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@4
    .line 94
    return-void
.end method

.method public static traceEffectsSuppressorChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "oldSuppressor"    # Landroid/content/ComponentName;
    .param p1, "newSuppressor"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "->"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 132
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const/16 v1, 0xe

    #@22
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@25
    .line 130
    return-void
.end method

.method public static traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ","

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ","

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    const/16 v1, 0x8

    #@29
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@2c
    .line 106
    return-void
.end method

.method public static traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    return-void

    #@9
    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ","

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    const/4 v1, 0x1

    #@26
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@29
    .line 66
    return-void
.end method

.method public static traceListenerHintsChanged(III)V
    .locals 2
    .param p0, "oldHints"    # I
    .param p1, "newHints"    # I
    .param p2, "listenerCount"    # I

    #@0
    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->hintsToString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "->"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 137
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->hintsToString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 137
    const-string/jumbo v1, ",listeners="

    #@1f
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    const/16 v1, 0xf

    #@2d
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@30
    .line 135
    return-void
.end method

.method public static traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    if-eqz p0, :cond_0

    #@2
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ","

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    const/16 v1, 0xc

    #@25
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@28
    .line 71
    return-void
.end method

.method public static traceSetRingerModeExternal(IILjava/lang/String;II)V
    .locals 2
    .param p0, "ringerModeOld"    # I
    .param p1, "ringerModeNew"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "ringerModeInternalIn"    # I
    .param p4, "ringerModeInternalOut"    # I

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ",e:"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 79
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 79
    const-string/jumbo v1, "->"

    #@1b
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 80
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 80
    const-string/jumbo v1, ",i:"

    #@2a
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 81
    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 81
    const-string/jumbo v1, "->"

    #@39
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 82
    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    const/4 v1, 0x3

    #@4a
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@4d
    .line 77
    return-void
.end method

.method public static traceSetRingerModeInternal(IILjava/lang/String;II)V
    .locals 2
    .param p0, "ringerModeOld"    # I
    .param p1, "ringerModeNew"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "ringerModeExternalIn"    # I
    .param p4, "ringerModeExternalOut"    # I

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ",i:"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 88
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 88
    const-string/jumbo v1, "->"

    #@1b
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 89
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 89
    const-string/jumbo v1, ",e:"

    #@2a
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 90
    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 90
    const-string/jumbo v1, "->"

    #@39
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 91
    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    const/4 v1, 0x4

    #@4a
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@4d
    .line 86
    return-void
.end method

.method public static traceSetZenMode(ILjava/lang/String;)V
    .locals 2
    .param p0, "zenMode"    # I
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ","

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    const/4 v1, 0x6

    #@1d
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@20
    .line 98
    return-void
.end method

.method public static traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p2, "e"    # Landroid/os/RemoteException;

    #@0
    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ","

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    const/16 v1, 0x9

    #@1e
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@21
    .line 110
    return-void
.end method

.method public static traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p2, "e"    # Landroid/os/RemoteException;

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ","

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    const/16 v1, 0xa

    #@1e
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@21
    .line 114
    return-void
.end method

.method public static traceUpdateZenMode(II)V
    .locals 2
    .param p0, "fromMode"    # I
    .param p1, "toMode"    # I

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " -> "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const/4 v1, 0x7

    #@21
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    #@24
    .line 102
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    #@3
    .line 161
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 146
    :pswitch_0
    const-string/jumbo v0, "intercepted"

    #@a
    return-object v0

    #@b
    .line 147
    :pswitch_1
    const-string/jumbo v0, "allow_disable"

    #@e
    return-object v0

    #@f
    .line 148
    :pswitch_2
    const-string/jumbo v0, "set_ringer_mode_external"

    #@12
    return-object v0

    #@13
    .line 149
    :pswitch_3
    const-string/jumbo v0, "set_ringer_mode_internal"

    #@16
    return-object v0

    #@17
    .line 150
    :pswitch_4
    const-string/jumbo v0, "downtime"

    #@1a
    return-object v0

    #@1b
    .line 151
    :pswitch_5
    const-string/jumbo v0, "set_zen_mode"

    #@1e
    return-object v0

    #@1f
    .line 152
    :pswitch_6
    const-string/jumbo v0, "update_zen_mode"

    #@22
    return-object v0

    #@23
    .line 153
    :pswitch_7
    const-string/jumbo v0, "exit_condition"

    #@26
    return-object v0

    #@27
    .line 154
    :pswitch_8
    const-string/jumbo v0, "subscribe"

    #@2a
    return-object v0

    #@2b
    .line 155
    :pswitch_9
    const-string/jumbo v0, "unsubscribe"

    #@2e
    return-object v0

    #@2f
    .line 156
    :pswitch_a
    const-string/jumbo v0, "config"

    #@32
    return-object v0

    #@33
    .line 157
    :pswitch_b
    const-string/jumbo v0, "not_intercepted"

    #@36
    return-object v0

    #@37
    .line 158
    :pswitch_c
    const-string/jumbo v0, "disable_effects"

    #@3a
    return-object v0

    #@3b
    .line 159
    :pswitch_d
    const-string/jumbo v0, "suppressor_changed"

    #@3e
    return-object v0

    #@3f
    .line 160
    :pswitch_e
    const-string/jumbo v0, "listener_hints_changed"

    #@42
    return-object v0

    #@43
    .line 145
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "zenMode"    # I

    #@0
    .prologue
    .line 175
    packed-switch p0, :pswitch_data_0

    #@3
    .line 180
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 176
    :pswitch_0
    const-string/jumbo v0, "off"

    #@a
    return-object v0

    #@b
    .line 177
    :pswitch_1
    const-string/jumbo v0, "important_interruptions"

    #@e
    return-object v0

    #@f
    .line 178
    :pswitch_2
    const-string/jumbo v0, "alarms"

    #@12
    return-object v0

    #@13
    .line 179
    :pswitch_3
    const-string/jumbo v0, "no_interruptions"

    #@16
    return-object v0

    #@17
    .line 175
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
