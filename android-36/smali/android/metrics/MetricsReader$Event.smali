.class public Landroid/metrics/MetricsReader$Event;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/metrics/MetricsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field greylist-max-o mData:Ljava/lang/Object;

.field greylist-max-o mPid:I

.field greylist-max-o mTimeMillis:J

.field greylist-max-o mUid:I


# direct methods
.method public constructor greylist-max-o <init>(JIILjava/lang/Object;)V
    .registers 6
    .param p1, "timeMillis"    # J
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "data"    # Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-wide p1, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    .line 164
    iput p3, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    .line 165
    iput p4, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    .line 166
    iput-object p5, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/util/EventLog$Event;)V
    .registers 6
    .param p1, "nativeEvent"    # Landroid/util/EventLog$Event;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 171
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    .line 172
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v0

    iput v0, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    .line 173
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getUid()I

    move-result v0

    iput v0, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    .line 174
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    .line 175
    return-void
.end method


# virtual methods
.method public greylist-max-o getData()Ljava/lang/Object;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o getProcessId()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    return v0
.end method

.method public greylist-max-o getTimeMillis()J
    .registers 3

    .line 178
    iget-wide v0, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getUid()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    return v0
.end method

.method public greylist-max-o setData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 194
    iput-object p1, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    .line 195
    return-void
.end method
