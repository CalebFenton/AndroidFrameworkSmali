.class public final Landroid/app/usage/CacheQuotaHint$Builder;
.super Ljava/lang/Object;
.source "CacheQuotaHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mQuota:J

.field private greylist-max-o mUid:I

.field private greylist-max-o mUsageStats:Landroid/app/usage/UsageStats;

.field private greylist-max-o mUuid:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmQuota(Landroid/app/usage/CacheQuotaHint$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUid(Landroid/app/usage/CacheQuotaHint$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageStats(Landroid/app/usage/CacheQuotaHint$Builder;)Landroid/app/usage/UsageStats;
    .registers 1

    iget-object p0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUuid(Landroid/app/usage/CacheQuotaHint$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/usage/CacheQuotaHint;)V
    .registers 4
    .param p1, "hint"    # Landroid/app/usage/CacheQuotaHint;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 111
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 112
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUsageStats()Landroid/app/usage/UsageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 113
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/usage/CacheQuotaHint;
    .registers 2

    .line 139
    new-instance v0, Landroid/app/usage/CacheQuotaHint;

    invoke-direct {v0, p0}, Landroid/app/usage/CacheQuotaHint;-><init>(Landroid/app/usage/CacheQuotaHint$Builder;)V

    return-object v0
.end method

.method public whitelist setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 5
    .param p1, "quota"    # J

    .line 133
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 134
    iput-wide p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    .line 135
    return-object p0
.end method

.method public whitelist setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 3
    .param p1, "uid"    # I

    .line 122
    const-string v0, "Proposed uid was negative."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 123
    iput p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    .line 124
    return-object p0
.end method

.method public whitelist setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 2
    .param p1, "stats"    # Landroid/app/usage/UsageStats;

    .line 128
    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    .line 129
    return-object p0
.end method

.method public whitelist setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 2
    .param p1, "uuid"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    .line 118
    return-object p0
.end method
