.class public Landroid/service/notification/ZenModeConfig$ScheduleInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleInfo"
.end annotation


# instance fields
.field public greylist days:[I

.field public greylist endHour:I

.field public greylist endMinute:I

.field public greylist-max-o exitAtAlarm:Z

.field public greylist-max-o nextAlarm:J

.field public greylist startHour:I

.field public greylist startMinute:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 2318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static greylist-max-o ts(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 6

    .line 2350
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 2351
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_1b

    .line 2352
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 2353
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2355
    :cond_1b
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 2356
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 2357
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 2358
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 2359
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 2360
    iget-wide v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 2361
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2339
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2340
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 2341
    .local v0, "other":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->-$$Nest$smtoDayList([I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->-$$Nest$smtoDayList([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-ne v2, v3, :cond_3a

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-ne v2, v3, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2334
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleInfo{days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 2367
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exitAtAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 2373
    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->ts(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2366
    return-object v0
.end method
