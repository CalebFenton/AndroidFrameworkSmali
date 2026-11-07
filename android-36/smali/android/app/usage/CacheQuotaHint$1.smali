.class Landroid/app/usage/CacheQuotaHint$1;
.super Ljava/lang/Object;
.source "CacheQuotaHint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/CacheQuotaHint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/CacheQuotaHint;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 147
    new-instance v0, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v0}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 148
    .local v0, "builder":Landroid/app/usage/CacheQuotaHint$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v1

    const-class v2, Landroid/app/usage/UsageStats;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/app/usage/UsageStats;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    invoke-virtual {v1, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v1

    .line 148
    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Landroid/app/usage/CacheQuotaHint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/CacheQuotaHint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/usage/CacheQuotaHint;
    .registers 3
    .param p1, "size"    # I

    .line 157
    new-array v0, p1, [Landroid/app/usage/CacheQuotaHint;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Landroid/app/usage/CacheQuotaHint$1;->newArray(I)[Landroid/app/usage/CacheQuotaHint;

    move-result-object p1

    return-object p1
.end method
