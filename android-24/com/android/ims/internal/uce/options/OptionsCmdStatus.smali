.class public Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
.super Ljava/lang/Object;
.source "OptionsCmdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/options/OptionsCmdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

.field private mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

.field private mUserData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 126
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;-><init>()V

    #@5
    .line 125
    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@5
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@a
    .line 85
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    #@c
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@11
    .line 86
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@13
    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@18
    .line 87
    const/4 v0, 0x0

    #@19
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    #@1b
    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 136
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getOptionsCmdStatusInstance()Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    .locals 1

    #@0
    .prologue
    .line 108
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@2
    return-object v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@2
    return-object v0
.end method

.method public getUserData()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    #@6
    .line 143
    const-class v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@12
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@14
    .line 144
    const-class v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@16
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@20
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@22
    .line 145
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    #@24
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    #@2e
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@30
    .line 141
    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    #@0
    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@2
    .line 99
    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/options/OptionsCmdId;)V
    .locals 0
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@0
    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@2
    .line 44
    return-void
.end method

.method public setStatus(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0
    .param p1, "status"    # Lcom/android/ims/internal/uce/common/StatusCode;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@2
    .line 75
    return-void
.end method

.method public setUserData(I)V
    .locals 0
    .param p1, "userData"    # I

    #@0
    .prologue
    .line 60
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    #@2
    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 118
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 119
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 120
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@f
    .line 121
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 117
    return-void
.end method
