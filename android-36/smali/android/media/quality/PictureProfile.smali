.class public final Landroid/media/quality/PictureProfile;
.super Ljava/lang/Object;
.source "PictureProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/PictureProfile$Builder;,
        Landroid/media/quality/PictureProfile$ErrorCode;,
        Landroid/media/quality/PictureProfile$ProfileName;,
        Landroid/media/quality/PictureProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_DUPLICATE:I = 0x2

.field public static final whitelist ERROR_INVALID_ARGUMENT:I = 0x3

.field public static final whitelist ERROR_NOT_ALLOWLISTED:I = 0x4

.field public static final whitelist ERROR_NO_PERMISSION:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final blacklist NAME_DEFAULT:Ljava/lang/String; = "default"

.field public static final blacklist NAME_ENERGY_SAVING:Ljava/lang/String; = "energy_saving"

.field public static final blacklist NAME_GAME:Ljava/lang/String; = "game"

.field public static final blacklist NAME_MOVIE:Ljava/lang/String; = "movie"

.field public static final blacklist NAME_SPORTS:Ljava/lang/String; = "sports"

.field public static final blacklist NAME_STANDARD:Ljava/lang/String; = "standard"

.field public static final blacklist NAME_USER:Ljava/lang/String; = "user"

.field public static final blacklist NAME_VIVID:Ljava/lang/String; = "vivid"

.field public static final blacklist STATUS_HDR:Ljava/lang/String; = "HDR"

.field public static final blacklist STATUS_SDR:Ljava/lang/String; = "SDR"

.field public static final whitelist TYPE_APPLICATION:I = 0x2

.field public static final whitelist TYPE_SYSTEM:I = 0x1


# instance fields
.field private final blacklist mHandle:Landroid/media/quality/PictureProfileHandle;

.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mInputId:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/os/PersistableBundle;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/media/quality/PictureProfile$1;

    invoke-direct {v0}, Landroid/media/quality/PictureProfile$1;-><init>()V

    sput-object v0, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/PictureProfile;->mType:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    .line 165
    const-class v0, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/quality/PictureProfileHandle;

    iput-object v0, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    .line 166
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/PictureProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/quality/PictureProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/PictureProfileHandle;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "inputId"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "params"    # Landroid/os/PersistableBundle;
    .param p7, "handle"    # Landroid/media/quality/PictureProfileHandle;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    .line 212
    iput p2, p0, Landroid/media/quality/PictureProfile;->mType:I

    .line 213
    iput-object p3, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    .line 214
    iput-object p4, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    .line 215
    iput-object p5, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    .line 216
    iput-object p6, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    .line 217
    iput-object p7, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    .line 218
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHandle()Landroid/media/quality/PictureProfileHandle;
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    return-object v0
.end method

.method public whitelist getInputId()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParameters()Landroid/os/PersistableBundle;
    .registers 3

    .line 297
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getProfileId()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProfileType()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/media/quality/PictureProfile;->mType:I

    return v0
.end method

.method public blacklist setProfileId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Landroid/media/quality/PictureProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 176
    iget-object v0, p0, Landroid/media/quality/PictureProfile;->mHandle:Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    return-void
.end method
