.class public Lcom/android/ims/internal/uce/options/OptionsCapInfo;
.super Ljava/lang/Object;
.source "OptionsCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/options/OptionsCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mSdp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;-><init>()V

    #@5
    .line 67
    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    #@8
    .line 45
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    #@a
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@f
    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    #@8
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@b
    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getOptionsCapInfoInstance()Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@2
    return-object v0
.end method

.method public getSdp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    #@6
    .line 85
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    #@12
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@14
    .line 83
    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@2
    .line 54
    return-void
.end method

.method public setSdp(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    #@2
    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 64
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 62
    return-void
.end method
