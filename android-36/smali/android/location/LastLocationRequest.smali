.class public final Landroid/location/LastLocationRequest;
.super Ljava/lang/Object;
.source "LastLocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LastLocationRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LastLocationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdasGnssBypass:Z

.field private final blacklist mHiddenFromAppOps:Z

.field private final blacklist mLocationSettingsIgnored:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdasGnssBypass(Landroid/location/LastLocationRequest;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHiddenFromAppOps(Landroid/location/LastLocationRequest;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationSettingsIgnored(Landroid/location/LastLocationRequest;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/location/LastLocationRequest$1;

    invoke-direct {v0}, Landroid/location/LastLocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LastLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZZZ)V
    .registers 4
    .param p1, "hiddenFromAppOps"    # Z
    .param p2, "adasGnssBypass"    # Z
    .param p3, "locationSettingsIgnored"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    .line 49
    iput-boolean p2, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    .line 50
    iput-boolean p3, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZLandroid/location/LastLocationRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/location/LastLocationRequest;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 139
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/location/LastLocationRequest;

    .line 140
    .local v2, "that":Landroid/location/LastLocationRequest;
    iget-boolean v3, p0, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    iget-boolean v4, v2, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    if-ne v3, v4, :cond_28

    iget-boolean v3, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    iget-boolean v4, v2, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    if-ne v3, v4, :cond_28

    iget-boolean v3, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    iget-boolean v4, v2, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 137
    .end local v2    # "that":Landroid/location/LastLocationRequest;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 147
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAdasGnssBypass()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 79
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    return v0
.end method

.method public blacklist isBypass()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist isHiddenFromAppOps()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 64
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    return v0
.end method

.method public whitelist isLocationSettingsIgnored()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 93
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "LastLocationRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-boolean v2, p0, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    if-eqz v2, :cond_13

    .line 156
    const-string v2, "hiddenFromAppOps, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_13
    iget-boolean v2, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    if-eqz v2, :cond_1c

    .line 159
    const-string v2, "adasGnssBypass, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_1c
    iget-boolean v2, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    if-eqz v2, :cond_25

    .line 162
    const-string v2, "settingsBypass, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v2, v1, :cond_38

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 167
    :cond_38
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 126
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mHiddenFromAppOps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mAdasGnssBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    iget-boolean v0, p0, Landroid/location/LastLocationRequest;->mLocationSettingsIgnored:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    return-void
.end method
