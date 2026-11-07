.class public Lcom/android/ims/internal/uce/options/OptionsCapInfo;
.super Ljava/lang/Object;
.source "OptionsCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private greylist-max-o mSdp:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 51
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCapInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o getOptionsCapInfoInstance()Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .registers 1

    .line 32
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object v0
.end method

.method public greylist-max-r getSdp()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 92
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 93
    return-void
.end method

.method public greylist-max-r setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .registers 2
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    .line 62
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 63
    return-void
.end method

.method public greylist-max-r setSdp(Ljava/lang/String;)V
    .registers 2
    .param p1, "sdp"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
