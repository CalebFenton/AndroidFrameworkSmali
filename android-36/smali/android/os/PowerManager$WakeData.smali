.class public Landroid/os/PowerManager$WakeData;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeData"
.end annotation


# instance fields
.field public final blacklist sleepDurationRealtime:J

.field public final blacklist wakeReason:I

.field public final blacklist wakeTime:J


# direct methods
.method public constructor blacklist <init>(JIJ)V
    .registers 6
    .param p1, "wakeTime"    # J
    .param p3, "wakeReason"    # I
    .param p4, "sleepDurationRealtime"    # J

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-wide p1, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    .line 813
    iput p3, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    .line 814
    iput-wide p4, p0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    .line 815
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 822
    instance-of v0, p1, Landroid/os/PowerManager$WakeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 823
    move-object v0, p1

    check-cast v0, Landroid/os/PowerManager$WakeData;

    .line 824
    .local v0, "other":Landroid/os/PowerManager$WakeData;
    iget-wide v2, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget-wide v4, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    iget v2, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    iget v3, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v3, :cond_1f

    iget-wide v2, p0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    iget-wide v4, v0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 827
    .end local v0    # "other":Landroid/os/PowerManager$WakeData;
    :cond_20
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 832
    iget-wide v0, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
