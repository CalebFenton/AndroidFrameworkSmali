.class public Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
.super Ljava/lang/Object;
.source "TrafficStatsRateLimitCacheConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist expiryDurationMs:I

.field public final blacklist isCacheEnabled:Z

.field public final blacklist maxEntries:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ZII)V
    .registers 4
    .param p1, "isCacheEnabled"    # Z
    .param p2, "expiryDurationMs"    # I
    .param p3, "maxEntries"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    .line 69
    iput p2, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    .line 70
    iput p3, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    .line 71
    return-void
.end method

.method private static blacklist internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    .registers 9
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 74
    new-instance v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;-><init>()V

    .line 75
    .local v0, "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 76
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "_aidl_parcelable_size":I
    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_91

    :try_start_15
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    .line 79
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_35

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_8f

    .line 92
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2f

    .line 95
    :goto_25
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    move-result-object v3

    return-object v3

    .line 93
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 82
    .local v3, "_aidl_temp_isCacheEnabled":Z
    invoke-virtual {v0, v3}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->setIsCacheEnabled(Z)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_59

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_8f

    .line 92
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_53

    .line 95
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    move-result-object v4

    return-object v4

    .line 93
    :cond_53
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 86
    .local v6, "_aidl_temp_expiryDurationMs":I
    invoke-virtual {v0, v6}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->setExpiryDurationMs(I)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v1

    if-lt v7, v2, :cond_7d

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_8f

    .line 92
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_77

    .line 95
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    move-result-object v4

    return-object v4

    .line 93
    :cond_77
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_7d
    :try_start_7d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 90
    .local v7, "_aidl_temp_maxEntries":I
    invoke-virtual {v0, v7}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->setMaxEntries(I)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_8f

    .line 92
    nop

    .end local v3    # "_aidl_temp_isCacheEnabled":Z
    .end local v6    # "_aidl_temp_expiryDurationMs":I
    .end local v7    # "_aidl_temp_maxEntries":I
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_89

    .line 95
    goto :goto_25

    .line 93
    :cond_89
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :catchall_8f
    move-exception v3

    goto :goto_99

    .line 78
    :cond_91
    :try_start_91
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    .end local v1    # "_aidl_start_pos":I
    .end local v2    # "_aidl_parcelable_size":I
    .end local p0    # "_aidl_parcel":Landroid/os/Parcel;
    throw v3
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_8f

    .line 92
    .restart local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    .restart local v1    # "_aidl_start_pos":I
    .restart local v2    # "_aidl_parcelable_size":I
    .restart local p0    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_99
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_9d

    .line 95
    goto :goto_25

    .line 93
    :cond_9d
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 110
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 111
    :cond_8
    instance-of v2, p1, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    if-nez v2, :cond_d

    return v1

    .line 112
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    .line 113
    .local v2, "that":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    iget-boolean v3, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 114
    :cond_23
    iget v3, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 115
    :cond_36
    iget v3, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    return v1

    .line 116
    :cond_49
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/Serializable;

    iget-boolean v1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 101
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 102
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCacheEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiryDurationMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxEntries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrafficStatsRateLimitCacheConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 59
    iget v1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 62
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void
.end method
