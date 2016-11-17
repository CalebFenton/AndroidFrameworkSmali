.class public Lcom/android/server/usage/UnixCalendar;
.super Ljava/lang/Object;
.source "UnixCalendar.java"


# static fields
.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final MONTH_IN_MILLIS:J = 0x9a7ec800L

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_IN_MILLIS:J = 0x757b12c00L


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-wide p1, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@5
    .line 30
    return-void
.end method


# virtual methods
.method public addDays(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 35
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
    .line 34
    return-void
.end method

.method public addMonths(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 43
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
    .line 42
    return-void
.end method

.method public addWeeks(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 39
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
    .line 38
    return-void
.end method

.method public addYears(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 47
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
    .line 46
    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    #@0
    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    return-wide v0
.end method

.method public setTimeInMillis(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    #@2
    .line 50
    return-void
.end method
