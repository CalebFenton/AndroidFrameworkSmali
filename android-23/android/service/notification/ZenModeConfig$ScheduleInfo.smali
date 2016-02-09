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
.field public days:[I

.field public endHour:I

.field public endMinute:I

.field public startHour:I

.field public startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 782
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@3
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@6
    .line 783
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 784
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@c
    array-length v1, v1

    #@d
    new-array v1, v1, [I

    #@f
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@11
    .line 785
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@13
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@15
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@17
    array-length v3, v3

    #@18
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@1b
    .line 787
    :cond_0
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@1d
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@1f
    .line 788
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@21
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@23
    .line 789
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@25
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@27
    .line 790
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@29
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@2b
    .line 791
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 772
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 773
    check-cast v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@9
    .line 774
    .local v0, "other":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@b
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->-wrap5([I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@11
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->-wrap5([I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 775
    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@1d
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    .line 776
    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@23
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 777
    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@29
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@2b
    if-ne v2, v3, :cond_1

    #@2d
    .line 778
    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@2f
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@31
    if-ne v2, v3, :cond_1

    #@33
    const/4 v1, 0x1

    #@34
    .line 774
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 767
    const/4 v0, 0x0

    #@1
    return v0
.end method
