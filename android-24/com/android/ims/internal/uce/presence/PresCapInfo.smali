.class public Lcom/android/ims/internal/uce/presence/PresCapInfo;
.super Ljava/lang/Object;
.source "PresCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresCapInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mContactUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;-><init>()V

    #@5
    .line 83
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    #@8
    .line 68
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    #@a
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@f
    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    #@8
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@b
    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCapInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@2
    return-object v0
.end method

.method public getContactUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    #@6
    .line 103
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
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@14
    .line 101
    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@2
    .line 42
    return-void
.end method

.method public setContactUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactUri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

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
    .line 78
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 79
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 77
    return-void
.end method
