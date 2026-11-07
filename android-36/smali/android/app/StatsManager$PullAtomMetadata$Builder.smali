.class public Landroid/app/StatsManager$PullAtomMetadata$Builder;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatsManager$PullAtomMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdditiveFields:[I

.field private blacklist mCoolDownMillis:J

.field private blacklist mTimeoutMillis:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mCoolDownMillis:J

    .line 758
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mTimeoutMillis:J

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mAdditiveFields:[I

    .line 760
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/StatsManager$PullAtomMetadata;
    .registers 8

    .line 802
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata;

    iget-wide v1, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mCoolDownMillis:J

    iget-wide v3, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mTimeoutMillis:J

    iget-object v5, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mAdditiveFields:[I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/StatsManager$PullAtomMetadata;-><init>(JJ[ILandroid/app/StatsManager-IA;)V

    return-object v0
.end method

.method public whitelist setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;
    .registers 2
    .param p1, "additiveFields"    # [I

    .line 792
    iput-object p1, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mAdditiveFields:[I

    .line 793
    return-object p0
.end method

.method public whitelist setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;
    .registers 3
    .param p1, "coolDownMillis"    # J

    .line 769
    iput-wide p1, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mCoolDownMillis:J

    .line 770
    return-object p0
.end method

.method public whitelist setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;
    .registers 3
    .param p1, "timeoutMillis"    # J

    .line 779
    iput-wide p1, p0, Landroid/app/StatsManager$PullAtomMetadata$Builder;->mTimeoutMillis:J

    .line 780
    return-object p0
.end method
