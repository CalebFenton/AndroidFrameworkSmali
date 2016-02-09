.class public final Landroid/content/pm/ProviderInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ProviderInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SINGLE_USER:I = 0x40000000


# instance fields
.field public authority:Ljava/lang/String;

.field public flags:I

.field public grantUriPermissions:Z

.field public initOrder:I

.field public isSyncable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public multiprocess:Z

.field public pathPermissions:[Landroid/content/pm/PathPermission;

.field public readPermission:Ljava/lang/String;

.field public uriPermissionPatterns:[Landroid/os/PatternMatcher;

.field public writePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/content/pm/ProviderInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ProviderInfo$1;-><init>()V

    #@5
    .line 141
    sput-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 100
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    #@5
    .line 34
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@7
    .line 38
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@9
    .line 42
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@b
    .line 49
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@d
    .line 59
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@f
    .line 67
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@11
    .line 72
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@13
    .line 76
    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@15
    .line 90
    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    #@17
    .line 98
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@19
    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 104
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    #@5
    .line 34
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@7
    .line 38
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@9
    .line 42
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@b
    .line 49
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@d
    .line 59
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@f
    .line 67
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@11
    .line 72
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@13
    .line 76
    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@15
    .line 90
    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    #@17
    .line 98
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@19
    .line 105
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@1b
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@1d
    .line 106
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@1f
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@21
    .line 107
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@23
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@25
    .line 108
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@27
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@29
    .line 109
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@2b
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@2d
    .line 110
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@2f
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@31
    .line 111
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@33
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@35
    .line 112
    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@37
    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@39
    .line 113
    iget v0, p1, Landroid/content/pm/ProviderInfo;->flags:I

    #@3b
    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    #@3d
    .line 114
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@3f
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@41
    .line 103
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 157
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    #@6
    .line 34
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@8
    .line 38
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@a
    .line 42
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@c
    .line 49
    iput-boolean v2, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@e
    .line 59
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@10
    .line 67
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@12
    .line 72
    iput-boolean v2, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@14
    .line 76
    iput v2, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@16
    .line 90
    iput v2, p0, Landroid/content/pm/ProviderInfo;->flags:I

    #@18
    .line 98
    iput-boolean v2, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@1a
    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@20
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@26
    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@2c
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_0

    #@32
    move v0, v1

    #@33
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@35
    .line 162
    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, [Landroid/os/PatternMatcher;

    #@3d
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@3f
    .line 163
    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, [Landroid/content/pm/PathPermission;

    #@47
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@49
    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_1

    #@4f
    move v0, v1

    #@50
    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@52
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v0

    #@56
    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@58
    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v0

    #@5c
    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    #@5e
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_2

    #@64
    :goto_2
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@66
    .line 156
    return-void

    #@67
    :cond_0
    move v0, v2

    #@68
    .line 161
    goto :goto_0

    #@69
    :cond_1
    move v0, v2

    #@6a
    .line 164
    goto :goto_1

    #@6b
    :cond_2
    move v1, v2

    #@6c
    .line 167
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "authority="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@20
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, "flags=0x"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget v1, p0, Landroid/content/pm/ProviderInfo;->flags:I

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@41
    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ContentProviderInfo{name="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " className="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 128
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 129
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 130
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 131
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 132
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    move v0, v1

    #@19
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 133
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@1e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@21
    .line 134
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@26
    .line 135
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@28
    if-eqz v0, :cond_1

    #@2a
    move v0, v1

    #@2b
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 136
    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 137
    iget v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 138
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@3a
    if-eqz v0, :cond_2

    #@3c
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 127
    return-void

    #@40
    :cond_0
    move v0, v2

    #@41
    .line 132
    goto :goto_0

    #@42
    :cond_1
    move v0, v2

    #@43
    .line 135
    goto :goto_1

    #@44
    :cond_2
    move v1, v2

    #@45
    .line 138
    goto :goto_2
.end method
