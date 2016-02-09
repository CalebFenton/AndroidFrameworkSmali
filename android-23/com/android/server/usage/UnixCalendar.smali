.class public Lcom/android/server/usage/UnixCalendar;
.super Ljava/lang/Object;
.source "UnixCalendar.java"


# static fields
.field private static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final MONTH_IN_MILLIS:J = 0x9a7ec800L

.field private static final WEEK_IN_MILLIS:J = 0x240c8400L

.field private static final YEAR_IN_MILLIS:J = 0x757b12c00L


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-wide p1, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@5
    .line 32
    return-void
.end method

.method public static truncateTo(Lcom/android/server/usage/UnixCalendar;I)V
    .locals 3
    .param p0, "calendar"    # Lcom/android/server/usage/UnixCalendar;
    .param p1, "intervalType"    # I

    #@0
    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    #@3
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Can\'t truncate date to interval "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToYear()V

    #@20
    .line 76
    :goto_0
    return-void

    #@21
    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToMonth()V

    #@24
    goto :goto_0

    #@25
    .line 87
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToWeek()V

    #@28
    goto :goto_0

    #@29
    .line 91
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    #@2c
    goto :goto_0

    #@2d
    .line 77
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addDays(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    int-to-long v2, p1

    #@3
    const-wide/32 v4, 0x5265c00

    #@6
    mul-long/2addr v2, v4

    #@7
    add-long/2addr v0, v2

    #@8
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@a
    .line 52
    return-void
.end method

.method public addMonths(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    int-to-long v2, p1

    #@3
    const-wide v4, 0x9a7ec800L

    #@8
    mul-long/2addr v2, v4

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@c
    .line 60
    return-void
.end method

.method public addWeeks(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    int-to-long v2, p1

    #@3
    const-wide/32 v4, 0x240c8400

    #@6
    mul-long/2addr v2, v4

    #@7
    add-long/2addr v0, v2

    #@8
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@a
    .line 56
    return-void
.end method

.method public addYears(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    int-to-long v2, p1

    #@3
    const-wide v4, 0x757b12c00L

    #@8
    mul-long/2addr v2, v4

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@c
    .line 64
    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    #@0
    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    return-wide v0
.end method

.method public setTimeInMillis(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    .line 68
    return-void
.end method

.method public truncateToDay()V
    .locals 6

    #@0
    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@4
    const-wide/32 v4, 0x5265c00

    #@7
    rem-long/2addr v2, v4

    #@8
    sub-long/2addr v0, v2

    #@9
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@b
    .line 36
    return-void
.end method

.method public truncateToMonth()V
    .locals 6

    #@0
    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@4
    const-wide v4, 0x9a7ec800L

    #@9
    rem-long/2addr v2, v4

    #@a
    sub-long/2addr v0, v2

    #@b
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@d
    .line 44
    return-void
.end method

.method public truncateToWeek()V
    .locals 6

    #@0
    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@4
    const-wide/32 v4, 0x240c8400

    #@7
    rem-long/2addr v2, v4

    #@8
    sub-long/2addr v0, v2

    #@9
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@b
    .line 40
    return-void
.end method

.method public truncateToYear()V
    .locals 6

    #@0
    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@4
    const-wide v4, 0x757b12c00L

    #@9
    rem-long/2addr v2, v4

    #@a
    sub-long/2addr v0, v2

    #@b
    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@d
    .line 48
    return-void
.end method
