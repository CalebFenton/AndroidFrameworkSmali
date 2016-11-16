.class Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alarm"
.end annotation


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public maxWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 2
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_rec"    # Landroid/app/IAlarmListener;
    .param p14, "_listenerTag"    # Ljava/lang/String;
    .param p15, "_ws"    # Landroid/os/WorkSource;
    .param p16, "_flags"    # I
    .param p17, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p18, "_uid"    # I
    .param p19, "_pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2250
    iput p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@5
    .line 2251
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    #@7
    .line 2252
    const/4 v1, 0x2

    #@8
    if-eq p1, v1, :cond_0

    #@a
    .line 2253
    if-nez p1, :cond_1

    #@c
    const/4 v1, 0x1

    #@d
    .line 2252
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    #@f
    .line 2254
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@11
    .line 2255
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@13
    .line 2256
    iput-wide p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@15
    .line 2257
    iput-wide p8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@17
    .line 2258
    iput-wide p10, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@19
    .line 2259
    iput-object p12, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@1b
    .line 2260
    iput-object p13, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    #@1d
    .line 2261
    move-object/from16 v0, p14

    #@1f
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    #@21
    .line 2262
    move-object/from16 v0, p14

    #@23
    invoke-static {p12, v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@29
    .line 2263
    move-object/from16 v0, p15

    #@2b
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@2d
    .line 2264
    move/from16 v0, p16

    #@2f
    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@31
    .line 2265
    move-object/from16 v0, p17

    #@33
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@35
    .line 2266
    move/from16 v0, p18

    #@37
    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@39
    .line 2267
    move-object/from16 v0, p19

    #@3b
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@3d
    .line 2269
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@3f
    if-eqz v1, :cond_2

    #@41
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@43
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    #@46
    move-result v1

    #@47
    :goto_1
    iput v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    #@49
    .line 2249
    return-void

    #@4a
    .line 2252
    :cond_0
    const/4 v1, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 2253
    :cond_1
    const/4 v1, 0x0

    #@4d
    goto :goto_0

    #@4e
    .line 2269
    :cond_2
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@50
    goto :goto_1
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 2273
    const/4 v1, 0x2

    #@1
    if-eq p2, v1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 2274
    :cond_0
    const-string/jumbo v0, "*walarm*:"

    #@8
    .line 2275
    .local v0, "alarmString":Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_2

    #@a
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    :goto_1
    return-object v1

    #@f
    .line 2274
    .end local v0    # "alarmString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "*alarm*:"

    #@12
    .restart local v0    # "alarmString":Ljava/lang/String;
    goto :goto_0

    #@13
    .line 2275
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowRTC"    # J
    .param p5, "nowELAPSED"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;

    #@0
    .prologue
    .line 2319
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@2
    const/4 v2, 0x1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@7
    if-nez v1, :cond_3

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    .line 2320
    .local v0, "isRtc":Z
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    const-string/jumbo v1, "tag="

    #@10
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 2321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    const-string/jumbo v1, "type="

    #@1e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@26
    .line 2322
    const-string/jumbo v1, " whenElapsed="

    #@29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@2e
    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@31
    .line 2324
    const-string/jumbo v1, " when="

    #@34
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 2325
    if-eqz v0, :cond_4

    #@39
    .line 2326
    new-instance v1, Ljava/util/Date;

    #@3b
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@3d
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@40
    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    .line 2330
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@4a
    .line 2331
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    const-string/jumbo v1, "window="

    #@50
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@55
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@58
    .line 2332
    const-string/jumbo v1, " repeatInterval="

    #@5b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@60
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@63
    .line 2333
    const-string/jumbo v1, " count="

    #@66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@6b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@6e
    .line 2334
    const-string/jumbo v1, " flags=0x"

    #@71
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 2335
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@7f
    if-eqz v1, :cond_1

    #@81
    .line 2336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    const-string/jumbo v1, "Alarm clock:"

    #@87
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 2337
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v1, "  triggerTime="

    #@90
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    .line 2338
    new-instance v1, Ljava/util/Date;

    #@95
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@97
    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@9a
    move-result-wide v2

    #@9b
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@9e
    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a5
    .line 2339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v1, "  showIntent="

    #@ab
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@b0
    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@b7
    .line 2341
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ba
    const-string/jumbo v1, "operation="

    #@bd
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@c2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@c5
    .line 2342
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    #@c7
    if-eqz v1, :cond_2

    #@c9
    .line 2343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    const-string/jumbo v1, "listener="

    #@cf
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    #@d4
    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@db
    .line 2318
    :cond_2
    return-void

    #@dc
    .line 2319
    .end local v0    # "isRtc":Z
    :cond_3
    const/4 v0, 0x0

    #@dd
    .restart local v0    # "isRtc":Z
    goto/16 :goto_0

    #@df
    .line 2328
    :cond_4
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@e1
    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@e4
    goto/16 :goto_1
.end method

.method public makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;
    .locals 5
    .param p1, "nowRTC"    # J

    #@0
    .prologue
    .line 2279
    new-instance v1, Lcom/android/server/AlarmManagerService$WakeupEvent;

    #@2
    iget v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    #@4
    .line 2280
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2281
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@a
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 2279
    :goto_0
    invoke-direct {v1, p1, p2, v2, v0}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    #@15
    return-object v1

    #@16
    .line 2282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "<listener>:"

    #@1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    #@0
    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2288
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    .line 2287
    :goto_0
    return v0

    #@b
    .line 2289
    :cond_0
    if-eqz p2, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    #@f
    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    goto :goto_0

    #@1c
    :cond_1
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2293
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2294
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@6
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 2293
    :goto_0
    return v0

    #@f
    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 2300
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 2301
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Alarm{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 2302
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 2303
    const-string/jumbo v1, " type "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 2304
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 2305
    const-string/jumbo v1, " when "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 2306
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@2b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2e
    .line 2307
    const-string/jumbo v1, " "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 2308
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 2309
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@3a
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 2313
    :goto_0
    const/16 v1, 0x7d

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 2314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 2311
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    goto :goto_0
.end method
