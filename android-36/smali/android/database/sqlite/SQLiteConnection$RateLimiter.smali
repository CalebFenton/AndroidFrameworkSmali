.class Landroid/database/sqlite/SQLiteConnection$RateLimiter;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RateLimiter"
.end annotation


# instance fields
.field private final blacklist mCreationUptimeMs:J

.field private final blacklist mMaxCredits:I

.field private final blacklist mMsPerCredit:J

.field private blacklist mSpent:J


# direct methods
.method constructor blacklist <init>(JI)V
    .registers 10
    .param p1, "msPerCredit"    # J
    .param p3, "maxCredits"    # I

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    .line 1626
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMsPerCredit:J

    .line 1627
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    .line 1628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMsPerCredit:J

    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mCreationUptimeMs:J

    .line 1629
    return-void
.end method


# virtual methods
.method blacklist tryAcquire()Z
    .registers 11

    .line 1633
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1634
    .local v0, "now":J
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mCreationUptimeMs:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMsPerCredit:J

    div-long/2addr v2, v4

    .line 1636
    .local v2, "credits":J
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    sub-long v4, v2, v4

    .line 1637
    .local v4, "available":J
    iget v6, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_24

    .line 1638
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    iget v8, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    int-to-long v8, v8

    sub-long v8, v4, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    .line 1639
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    sub-long v4, v2, v6

    .line 1641
    :cond_24
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_33

    .line 1642
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    .line 1643
    const/4 v6, 0x1

    return v6

    .line 1645
    :cond_33
    const/4 v6, 0x0

    return v6
.end method
