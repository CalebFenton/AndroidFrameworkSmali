.class public final Landroid/app/usage/CacheQuotaHint;
.super Ljava/lang/Object;
.source "CacheQuotaHint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/CacheQuotaHint$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist QUOTA_NOT_SET:J = -0x1L


# instance fields
.field private final greylist-max-o mQuota:J

.field private final greylist-max-o mUid:I

.field private final greylist-max-o mUsageStats:Landroid/app/usage/UsageStats;

.field private final greylist-max-o mUuid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/app/usage/CacheQuotaHint$1;

    invoke-direct {v0}, Landroid/app/usage/CacheQuotaHint$1;-><init>()V

    sput-object v0, Landroid/app/usage/CacheQuotaHint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/usage/CacheQuotaHint$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/usage/CacheQuotaHint$Builder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmUuid(Landroid/app/usage/CacheQuotaHint$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmUid(Landroid/app/usage/CacheQuotaHint$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    .line 50
    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmUsageStats(Landroid/app/usage/CacheQuotaHint$Builder;)Landroid/app/usage/UsageStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    .line 51
    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmQuota(Landroid/app/usage/CacheQuotaHint$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Landroid/app/usage/CacheQuotaHint;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/app/usage/CacheQuotaHint;

    .line 87
    .local v0, "other":Landroid/app/usage/CacheQuotaHint;
    iget-object v2, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    iget-object v3, v0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    .line 88
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    iget v3, v0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    if-ne v2, v3, :cond_2c

    iget-wide v2, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    iget-wide v4, v0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 87
    :goto_2d
    return v1

    .line 92
    .end local v0    # "other":Landroid/app/usage/CacheQuotaHint;
    :cond_2e
    return v1
.end method

.method public whitelist getQuota()J
    .registers 3

    .line 63
    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    return-wide v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 59
    iget v0, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    return v0
.end method

.method public whitelist getUsageStats()Landroid/app/usage/UsageStats;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object v0
.end method

.method public whitelist getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 97
    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    iget v1, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    iget-wide v3, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 76
    return-void
.end method
