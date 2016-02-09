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

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_MASK_USER_TYPE:I = 0xff

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final NO_PROFILE_GROUP_ID:I = -0x1


# instance fields
.field public creationTime:J

.field public flags:I

.field public guestToRemove:Z

.field public iconPath:Ljava/lang/String;

.field public id:I

.field public lastLoggedInTime:J

.field public name:Ljava/lang/String;

.field public partial:Z

.field public profileGroupId:I

.field public serialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 181
    new-instance v0, Landroid/content/pm/UserInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/UserInfo$1;-><init>()V

    #@5
    .line 180
    sput-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 138
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
    .line 95
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@4
    .line 94
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
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    #@5
    .line 100
    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@7
    .line 101
    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    #@9
    .line 102
    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@b
    .line 103
    const/4 v0, -0x1

    #@c
    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@e
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@7
    .line 143
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@b
    .line 144
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    #@d
    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    #@f
    .line 145
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    #@11
    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@13
    .line 146
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    #@15
    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@17
    .line 147
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    #@19
    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    #@1b
    .line 148
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@1d
    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@1f
    .line 149
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    #@21
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    #@23
    .line 150
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@25
    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@27
    .line 151
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@29
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@2b
    .line 141
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
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    #@b
    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@11
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@17
    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@1d
    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@23
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@26
    move-result-wide v4

    #@27
    iput-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    #@29
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2c
    move-result-wide v4

    #@2d
    iput-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@2f
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_0

    #@35
    move v0, v1

    #@36
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    #@38
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@3e
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_1

    #@44
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@46
    .line 190
    return-void

    #@47
    :cond_0
    move v0, v2

    #@48
    .line 198
    goto :goto_0

    #@49
    :cond_1
    move v1, v2

    #@4a
    .line 200
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


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    #@0
    .prologue
    .line 155
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
    .line 111
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
    .line 127
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

.method public isGuest()Z
    .locals 2

    #@0
    .prologue
    .line 115
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

.method public isManagedProfile()Z
    .locals 2

    #@0
    .prologue
    .line 123
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
    .line 107
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

.method public isRestricted()Z
    .locals 2

    #@0
    .prologue
    .line 119
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

.method public supportsSwitchTo()Z
    .locals 2

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "fw.show_hidden_users"

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 160
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
    .line 168
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 169
    iget-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 170
    iget-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 171
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 172
    iget v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 173
    iget-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    #@1d
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    .line 174
    iget-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@22
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@25
    .line 175
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    #@27
    if-eqz v0, :cond_0

    #@29
    move v0, v1

    #@2a
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 176
    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 177
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@34
    if-eqz v0, :cond_1

    #@36
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 167
    return-void

    #@3a
    :cond_0
    move v0, v2

    #@3b
    .line 175
    goto :goto_0

    #@3c
    :cond_1
    move v1, v2

    #@3d
    .line 177
    goto :goto_1
.end method
