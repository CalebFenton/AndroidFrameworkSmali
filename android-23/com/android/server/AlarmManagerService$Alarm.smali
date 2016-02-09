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

.field public final flags:I

.field public maxWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final tag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V
    .locals 2
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_ws"    # Landroid/os/WorkSource;
    .param p14, "_flags"    # I
    .param p15, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "_uid"    # I

    #@0
    .prologue
    .line 1963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1966
    iput p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@5
    .line 1967
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    #@7
    .line 1968
    const/4 v1, 0x2

    #@8
    if-eq p1, v1, :cond_0

    #@a
    .line 1969
    if-nez p1, :cond_1

    #@c
    const/4 v1, 0x1

    #@d
    .line 1968
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    #@f
    .line 1970
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@11
    .line 1971
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@13
    .line 1972
    iput-wide p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@15
    .line 1973
    iput-wide p8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@17
    .line 1974
    iput-wide p10, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@19
    .line 1975
    iput-object p12, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@1b
    .line 1976
    invoke-static {p12, p1}, Lcom/android/server/AlarmManagerService$Alarm;->makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@21
    .line 1977
    iput-object p13, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@23
    .line 1978
    move/from16 v0, p14

    #@25
    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@27
    .line 1979
    move-object/from16 v0, p15

    #@29
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@2b
    .line 1980
    move/from16 v0, p16

    #@2d
    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@2f
    .line 1965
    return-void

    #@30
    .line 1968
    :cond_0
    const/4 v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1969
    :cond_1
    const/4 v1, 0x0

    #@33
    goto :goto_0
.end method

.method public static makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;
    .locals 1
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "type"    # I

    #@0
    .prologue
    .line 1984
    const/4 v0, 0x2

    #@1
    if-eq p1, v0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 1985
    :cond_0
    const-string/jumbo v0, "*walarm*:"

    #@8
    .line 1984
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1985
    :cond_1
    const-string/jumbo v0, "*alarm*:"

    #@10
    goto :goto_0
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
    .line 2005
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@2
    const/4 v2, 0x1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@7
    if-nez v1, :cond_2

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    .line 2006
    .local v0, "isRtc":Z
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    const-string/jumbo v1, "tag="

    #@10
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 2007
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
    .line 2008
    const-string/jumbo v1, " whenElapsed="

    #@29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@2e
    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@31
    .line 2010
    if-eqz v0, :cond_3

    #@33
    .line 2011
    const-string/jumbo v1, " when="

    #@36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
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
    .line 2015
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@4a
    .line 2016
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
    .line 2017
    const-string/jumbo v1, " repeatInterval="

    #@5b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@60
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@63
    .line 2018
    const-string/jumbo v1, " count="

    #@66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@6b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@6e
    .line 2019
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
    .line 2020
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@7f
    if-eqz v1, :cond_1

    #@81
    .line 2021
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    const-string/jumbo v1, "Alarm clock:"

    #@87
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 2022
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v1, "  triggerTime="

    #@90
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    .line 2023
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
    .line 2024
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
    .line 2026
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
    .line 2004
    return-void

    #@c6
    .line 2005
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    #@c7
    .restart local v0    # "isRtc":Z
    goto/16 :goto_0

    #@c9
    .line 2013
    :cond_3
    const-string/jumbo v1, " when="

    #@cc
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cf
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@d1
    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@d4
    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1991
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Alarm{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 1992
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
    .line 1993
    const-string/jumbo v1, " type "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1994
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 1995
    const-string/jumbo v1, " when "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 1996
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@2b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2e
    .line 1997
    const-string/jumbo v1, " "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 1998
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@36
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 1999
    const/16 v1, 0x7d

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    .line 2000
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    return-object v1
.end method
