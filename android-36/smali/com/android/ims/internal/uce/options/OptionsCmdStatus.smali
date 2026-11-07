.class public Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
.super Ljava/lang/Object;
.source "OptionsCmdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsCmdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private greylist-max-o mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

.field private greylist-max-o mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

.field private greylist-max-o mUserData:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 91
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 92
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    .line 94
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCmdStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o getOptionsCmdStatusInstance()Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    .registers 1

    .line 115
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object v0
.end method

.method public greylist-max-o getCmdId()Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-object v0
.end method

.method public greylist-max-o getStatus()Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    return-object v0
.end method

.method public greylist-max-o getUserData()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    .line 150
    const-class v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 151
    const-class v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 152
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 153
    return-void
.end method

.method public greylist-max-r setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .registers 2
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    .line 107
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 108
    return-void
.end method

.method public greylist-max-r setCmdId(Lcom/android/ims/internal/uce/options/OptionsCmdId;)V
    .registers 2
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 48
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 49
    return-void
.end method

.method public greylist-max-r setStatus(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .registers 2
    .param p1, "status"    # Lcom/android/ims/internal/uce/common/StatusCode;

    .line 81
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 82
    return-void
.end method

.method public greylist-max-r setUserData(I)V
    .registers 2
    .param p1, "userData"    # I

    .line 64
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    .line 65
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    return-void
.end method
