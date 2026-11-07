.class public final Landroid/telephony/ims/RcsClientConfiguration;
.super Ljava/lang/Object;
.source "RcsClientConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsClientConfiguration$StringRcsProfile;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsClientConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RCS_PROFILE_1_0:Ljava/lang/String; = "UP_1.0"

.field public static final whitelist RCS_PROFILE_2_3:Ljava/lang/String; = "UP_2.3"

.field public static final whitelist RCS_PROFILE_2_4:Ljava/lang/String; = "UP_2.4"


# instance fields
.field private blacklist mClientVendor:Ljava/lang/String;

.field private blacklist mClientVersion:Ljava/lang/String;

.field private blacklist mRcsEnabledByUser:Z

.field private blacklist mRcsProfile:Ljava/lang/String;

.field private blacklist mRcsVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Landroid/telephony/ims/RcsClientConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsClientConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "rcsVersion":Ljava/lang/String;
    .end local p2    # "rcsProfile":Ljava/lang/String;
    .end local p3    # "clientVendor":Ljava/lang/String;
    .end local p4    # "clientVersion":Ljava/lang/String;
    .local v1, "rcsVersion":Ljava/lang/String;
    .local v2, "rcsProfile":Ljava/lang/String;
    .local v3, "clientVendor":Ljava/lang/String;
    .local v4, "clientVersion":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsClientConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;
    .param p5, "isRcsEnabledByUser"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    .line 108
    iput-boolean p5, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Landroid/telephony/ims/RcsClientConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 197
    return v1

    .line 200
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/RcsClientConfiguration;

    .line 202
    .local v0, "other":Landroid/telephony/ims/RcsClientConfiguration;
    iget-object v2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    iget-boolean v3, v0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    if-ne v2, v3, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 202
    :goto_3a
    return v1
.end method

.method public whitelist getClientVendor()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClientVersion()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRcsProfile()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRcsVersion()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 210
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    .line 211
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isRcsEnabledByUser()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    return-void
.end method
