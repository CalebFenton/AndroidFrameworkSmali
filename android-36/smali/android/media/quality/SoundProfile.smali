.class public final Landroid/media/quality/SoundProfile;
.super Ljava/lang/Object;
.source "SoundProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/SoundProfile$Builder;,
        Landroid/media/quality/SoundProfile$ErrorCode;,
        Landroid/media/quality/SoundProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_DUPLICATE:I = 0x2

.field public static final whitelist ERROR_INVALID_ARGUMENT:I = 0x3

.field public static final whitelist ERROR_NOT_ALLOWLISTED:I = 0x4

.field public static final whitelist ERROR_NO_PERMISSION:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_APPLICATION:I = 0x2

.field public static final whitelist TYPE_SYSTEM:I = 0x1


# instance fields
.field private final blacklist mHandle:Landroid/media/quality/SoundProfileHandle;

.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mInputId:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/os/PersistableBundle;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/media/quality/SoundProfile$1;

    invoke-direct {v0}, Landroid/media/quality/SoundProfile$1;-><init>()V

    sput-object v0, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/SoundProfile;->mType:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    .line 125
    const-class v0, Landroid/media/quality/SoundProfileHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/quality/SoundProfileHandle;

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    .line 126
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/SoundProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/quality/SoundProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/SoundProfileHandle;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "inputId"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "params"    # Landroid/os/PersistableBundle;
    .param p7, "handle"    # Landroid/media/quality/SoundProfileHandle;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    .line 172
    iput p2, p0, Landroid/media/quality/SoundProfile;->mType:I

    .line 173
    iput-object p3, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    .line 176
    iput-object p6, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    .line 177
    iput-object p7, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHandle()Landroid/media/quality/SoundProfileHandle;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    return-object v0
.end method

.method public whitelist getInputId()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParameters()Landroid/os/PersistableBundle;
    .registers 3

    .line 257
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getProfileId()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProfileType()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/media/quality/SoundProfile;->mType:I

    return v0
.end method

.method public blacklist setProfileId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget v0, p0, Landroid/media/quality/SoundProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 136
    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    return-void
.end method
