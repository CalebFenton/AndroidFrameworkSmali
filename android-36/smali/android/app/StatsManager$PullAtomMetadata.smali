.class public Landroid/app/StatsManager$PullAtomMetadata;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PullAtomMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatsManager$PullAtomMetadata$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAdditiveFields:[I

.field private final blacklist mCoolDownMillis:J

.field private final blacklist mTimeoutMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdditiveFields(Landroid/app/StatsManager$PullAtomMetadata;)[I
    .registers 1

    iget-object p0, p0, Landroid/app/StatsManager$PullAtomMetadata;->mAdditiveFields:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCoolDownMillis(Landroid/app/StatsManager$PullAtomMetadata;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/StatsManager$PullAtomMetadata;->mCoolDownMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeoutMillis(Landroid/app/StatsManager$PullAtomMetadata;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/StatsManager$PullAtomMetadata;->mTimeoutMillis:J

    return-wide v0
.end method

.method private constructor blacklist <init>(JJ[I)V
    .registers 6
    .param p1, "coolDownMillis"    # J
    .param p3, "timeoutMillis"    # J
    .param p5, "additiveFields"    # [I

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-wide p1, p0, Landroid/app/StatsManager$PullAtomMetadata;->mCoolDownMillis:J

    .line 740
    iput-wide p3, p0, Landroid/app/StatsManager$PullAtomMetadata;->mTimeoutMillis:J

    .line 741
    iput-object p5, p0, Landroid/app/StatsManager$PullAtomMetadata;->mAdditiveFields:[I

    .line 742
    return-void
.end method

.method synthetic constructor blacklist <init>(JJ[ILandroid/app/StatsManager-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/StatsManager$PullAtomMetadata;-><init>(JJ[I)V

    return-void
.end method


# virtual methods
.method public whitelist getAdditiveFields()[I
    .registers 2

    .line 829
    iget-object v0, p0, Landroid/app/StatsManager$PullAtomMetadata;->mAdditiveFields:[I

    return-object v0
.end method

.method public whitelist getCoolDownMillis()J
    .registers 3

    .line 810
    iget-wide v0, p0, Landroid/app/StatsManager$PullAtomMetadata;->mCoolDownMillis:J

    return-wide v0
.end method

.method public whitelist getTimeoutMillis()J
    .registers 3

    .line 817
    iget-wide v0, p0, Landroid/app/StatsManager$PullAtomMetadata;->mTimeoutMillis:J

    return-wide v0
.end method
