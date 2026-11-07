.class public final Landroid/content/pm/ProviderInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_SINGLE_USER:I = 0x40000000

.field public static final blacklist FLAG_SYSTEM_USER_ONLY:I = 0x20000000

.field public static final greylist-max-o FLAG_VISIBLE_TO_INSTANT_APP:I = 0x100000


# instance fields
.field public whitelist authority:Ljava/lang/String;

.field public whitelist flags:I

.field public whitelist forceUriPermissions:Z

.field public whitelist grantUriPermissions:Z

.field public whitelist initOrder:I

.field public whitelist isSyncable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist multiprocess:Z

.field public whitelist pathPermissions:[Landroid/content/pm/PathPermission;

.field public whitelist readPermission:Ljava/lang/String;

.field public whitelist uriPermissionPatterns:[Landroid/os/PatternMatcher;

.field public whitelist writePermission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 171
    new-instance v0, Landroid/content/pm/ProviderInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 122
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 56
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 66
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 74
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 79
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 83
    iput v1, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 112
    iput v1, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 119
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 123
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/ProviderInfo;

    .line 126
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 56
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 66
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 74
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 79
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 83
    iput v1, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 112
    iput v1, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 119
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 127
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 128
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 130
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 131
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 132
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 133
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 134
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 135
    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 136
    iget v0, p1, Landroid/content/pm/ProviderInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 137
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 138
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 187
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 56
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 66
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 74
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 79
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 83
    iput v1, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 112
    iput v1, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 119
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_36

    move v0, v2

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    move v0, v2

    goto :goto_42

    :cond_41
    move v0, v1

    :goto_42
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 193
    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 194
    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    move v0, v2

    goto :goto_61

    :cond_60
    move v0, v1

    :goto_61
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76

    move v1, v2

    :cond_76
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 199
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ProviderInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ProviderInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 146
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentProviderInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 157
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 165
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return-void
.end method
