.class public final Landroid/content/pm/InstantAppResolveInfo;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EMPTY_DIGEST:[B

.field private static final greylist-max-o SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final greylist-max-o mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mShouldLetInstallerDecide:Z

.field private final greylist-max-o mVersionCode:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo;->EMPTY_DIGEST:[B

    .line 211
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppResolveInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V
    .registers 12
    .param p1, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;I)V"
        }
    .end annotation

    .line 88
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    int-to-long v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    .local v1, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V
    .registers 15
    .param p1, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 95
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .end local p1    # "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    .end local p4    # "versionCode":J
    .end local p6    # "extras":Landroid/os/Bundle;
    .local v1, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    .local v4, "versionCode":J
    .local v6, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v7}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V

    .line 96
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V
    .registers 10
    .param p1, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "shouldLetInstallerDecide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;J",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 115
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p2, :cond_d

    if-eqz p3, :cond_d

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    :cond_d
    if-eqz p2, :cond_1e

    if-eqz p3, :cond_18

    .line 118
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1e

    .line 119
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_1e
    :goto_1e
    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 122
    if-eqz p3, :cond_33

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 124
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_36

    .line 126
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 128
    :goto_36
    iput-object p2, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    .line 129
    iput-wide p4, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    .line 130
    iput-object p6, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    .line 131
    iput-boolean p7, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 110
    sget-object v1, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p1

    .end local p1    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v7}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V

    .line 111
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    .line 137
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 138
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 139
    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    goto :goto_49

    .line 143
    :cond_25
    const-class v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 146
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    sget-object v1, Landroid/content/pm/InstantAppIntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    .line 149
    :goto_49
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    new-instance v1, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-direct {v1, p1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDigestBytes()[B
    .registers 3

    .line 161
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-static {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->-$$Nest$fgetmDigestBytes(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;)[[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_15

    :cond_13
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo;->EMPTY_DIGEST:[B

    :goto_15
    return-object v0
.end method

.method public whitelist getDigestPrefix()I
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIntentFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLongVersionCode()J
    .registers 3

    .line 185
    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist shouldLetInstallerDecide()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 202
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    if-eqz v0, :cond_f

    .line 203
    return-void

    .line 205
    :cond_f
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 208
    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    return-void
.end method
