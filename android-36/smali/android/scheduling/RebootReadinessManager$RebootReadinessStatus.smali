.class public final Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;
.super Ljava/lang/Object;
.source "RebootReadinessManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/scheduling/RebootReadinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RebootReadinessStatus"
.end annotation


# instance fields
.field private final blacklist mEstimatedFinishTime:J

.field private final blacklist mIsReadyToReboot:Z

.field private final blacklist mLogSubsystemName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ZJLjava/lang/String;)V
    .registers 7
    .param p1, "isReadyToReboot"    # Z
    .param p2, "estimatedFinishTime"    # J
    .param p4, "logSubsystemName"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean p1, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->mIsReadyToReboot:Z

    .line 184
    iput-wide p2, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->mEstimatedFinishTime:J

    .line 186
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 189
    iput-object p4, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->mLogSubsystemName:Ljava/lang/String;

    .line 190
    return-void

    .line 187
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subsystem name should not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getEstimatedFinishTime()J
    .registers 3

    .line 210
    iget-wide v0, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->mEstimatedFinishTime:J

    return-wide v0
.end method

.method public whitelist getLogSubsystemName()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->mLogSubsystemName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isReadyToReboot()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->mIsReadyToReboot:Z

    return v0
.end method
