.class public Lcom/android/ims/internal/uce/presence/PresCapInfo;
.super Ljava/lang/Object;
.source "PresCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private greylist-max-r mContactUri:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 74
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCapInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object v0
.end method

.method public greylist-max-r getContactUri()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 108
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 109
    return-void
.end method

.method public greylist-max-o setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .registers 2
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    .line 47
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 48
    return-void
.end method

.method public greylist-max-o setContactUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "contactUri"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    return-void
.end method
