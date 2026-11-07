.class public Landroid/content/pm/PermissionGroupInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "PermissionGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PermissionGroupInfo$Flags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_PERSONAL_INFO:I = 0x1


# instance fields
.field public final whitelist backgroundRequestDetailResourceId:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist backgroundRequestResourceId:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist descriptionRes:I

.field public whitelist flags:I

.field public whitelist nonLocalizedDescription:Ljava/lang/CharSequence;

.field public whitelist priority:I

.field public final whitelist requestDetailResourceId:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist requestRes:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 204
    new-instance v0, Landroid/content/pm/PermissionGroupInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PermissionGroupInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "requestDetailResourceId"    # I
    .param p2, "backgroundRequestResourceId"    # I
    .param p3, "backgroundRequestDetailResourceId"    # I

    .line 128
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 129
    iput p1, p0, Landroid/content/pm/PermissionGroupInfo;->requestDetailResourceId:I

    .line 130
    iput p2, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestResourceId:I

    .line 131
    iput p3, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestDetailResourceId:I

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/PermissionGroupInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 148
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 149
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 150
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->requestDetailResourceId:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->requestDetailResourceId:I

    .line 151
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestResourceId:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestResourceId:I

    .line 152
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestDetailResourceId:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestDetailResourceId:I

    .line 153
    iget-object v0, p1, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 154
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 155
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 156
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 215
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->requestDetailResourceId:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestResourceId:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestDetailResourceId:I

    .line 221
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 224
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PermissionGroupInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 170
    iget-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    return-object v0

    .line 173
    :cond_7
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 174
    iget-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_17

    .line 176
    return-object v0

    .line 179
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_17
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroupInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 193
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->requestDetailResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->backgroundRequestDetailResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 200
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
