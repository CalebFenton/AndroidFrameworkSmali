.class public Landroid/content/pm/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/UserInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADMIN:I = 0x2

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_EPHEMERAL:I = 0x100

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_MASK_USER_TYPE:I = 0xff

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_QUIET_MODE:I = 0x80

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final NO_PROFILE_GROUP_ID:I = -0x2710


# instance fields
.field public creationTime:J

.field public flags:I

.field public guestToRemove:Z

.field public iconPath:Ljava/lang/String;

.field public id:I

.field public lastLoggedInFingerprint:Ljava/lang/String;

.field public lastLoggedInTime:J

.field public name:Ljava/lang/String;

.field public partial:Z

.field public profileGroupId:I

.field public restrictedProfileParentId:I

.field public serialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 254
    new-instance v0, Landroid/content/pm/UserInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/UserInfo$1;-><init>()V

    #@5
    .line 253
    sput-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@4
    .line 107
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "flags"    # I

    #@0
    .prologue
    const/16 v0, -0x2710

    #@2
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 112
    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    #@7
    .line 113
    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@9
    .line 114
    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    #@b
    .line 115
    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@d
    .line 116
    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@f
    .line 117
    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@11
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 211
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@7
    .line 212
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@b
    .line 213
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    #@d
    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    #@f
    .line 214
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    #@11
    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@13
    .line 215
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    #@15
    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@17
    .line 216
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    #@19
    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    #@1b
    .line 217
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@1d
    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@1f
    .line 218
    iget-object v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@21
    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@23
    .line 219
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    #@25
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    #@27
    .line 220
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@29
    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@2b
    .line 221
    iget v0, p1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@2d
    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@2f
    .line 222
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@31
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@33
    .line 210
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    #@b
    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@11
    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@17
    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@1d
    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@23
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@26
    move-result-wide v4

    #@27
    iput-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    #@29
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2c
    move-result-wide v4

    #@2d
    iput-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@2f
    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@35
    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_0

    #@3b
    move v0, v1

    #@3c
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    #@3e
    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v0

    #@42
    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@44
    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_1

    #@4a
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@4c
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v0

    #@50
    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@52
    .line 263
    return-void

    #@53
    :cond_0
    move v0, v2

    #@54
    .line 272
    goto :goto_0

    #@55
    :cond_1
    move v1, v2

    #@56
    .line 274
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static isSystemOnly(I)Z
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 171
    if-nez p0, :cond_0

    #@3
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@6
    move-result v0

    #@7
    :cond_0
    return v0
.end method


# virtual methods
.method public canHaveProfile()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 197
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 198
    :cond_0
    return v1

    #@15
    .line 200
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    .line 201
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    #@1d
    if-eqz v2, :cond_2

    #@1f
    :goto_0
    return v0

    #@20
    :cond_2
    move v0, v1

    #@21
    goto :goto_0

    #@22
    .line 203
    :cond_3
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    #@24
    if-nez v2, :cond_4

    #@26
    :goto_1
    return v0

    #@27
    :cond_4
    move v0, v1

    #@28
    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 235
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    #@0
    .prologue
    .line 226
    new-instance v0, Landroid/os/UserHandle;

    #@2
    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    #@4
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@7
    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit8 v0, v0, 0x40

    #@4
    const/16 v1, 0x40

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isEphemeral()Z
    .locals 2

    #@0
    .prologue
    .line 149
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit16 v0, v0, 0x100

    #@4
    const/16 v1, 0x100

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isGuest()Z
    .locals 2

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 2

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit8 v0, v0, 0x10

    #@4
    const/16 v1, 0x10

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isManagedProfile()Z
    .locals 2

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit8 v0, v0, 0x20

    #@4
    const/16 v1, 0x20

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 121
    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isQuietModeEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 145
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit16 v0, v0, 0x80

    #@4
    const/16 v1, 0x80

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isRestricted()Z
    .locals 2

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    const/16 v1, 0x8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isSystemOnly()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    #@2
    invoke-static {v0}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public supportsSwitchTo()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 178
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    const-string/jumbo v0, "fw.show_hidden_users"

    #@16
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@19
    move-result v0

    #@1a
    :goto_0
    return v0

    #@1b
    .line 180
    :cond_1
    return v1

    #@1c
    .line 183
    :cond_2
    const/4 v0, 0x1

    #@1d
    goto :goto_0
.end method

.method public supportsSwitchToByUser()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@4
    move-result v0

    #@5
    .line 192
    .local v0, "hideSystemUser":Z
    if-eqz v0, :cond_0

    #@7
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    #@9
    if-eqz v2, :cond_1

    #@b
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    #@e
    move-result v1

    #@f
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UserInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ":"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ":"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v1, "}"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 239
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 240
    iget-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 241
    iget-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 242
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 243
    iget v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 244
    iget-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    #@1d
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    .line 245
    iget-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@22
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@25
    .line 246
    iget-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 247
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    #@2c
    if-eqz v0, :cond_0

    #@2e
    move v0, v1

    #@2f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 248
    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 249
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@39
    if-eqz v0, :cond_1

    #@3b
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 250
    iget v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 238
    return-void

    #@44
    :cond_0
    move v0, v2

    #@45
    .line 247
    goto :goto_0

    #@46
    :cond_1
    move v1, v2

    #@47
    .line 249
    goto :goto_1
.end method
