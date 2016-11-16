.class public Lcom/android/ims/internal/uce/presence/PresCmdStatus;
.super Ljava/lang/Object;
.source "PresCmdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresCmdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

.field private mRequestId:I

.field private mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

.field private mUserData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 120
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;-><init>()V

    #@5
    .line 119
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@5
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@a
    .line 29
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@c
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@11
    .line 101
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@13
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@18
    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@5
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@a
    .line 29
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@c
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@11
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->readFromParcel(Landroid/os/Parcel;)V

    #@14
    .line 134
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/presence/PresCmdId;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@2
    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    #@2
    return v0
.end method

.method public getStatus()Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@2
    return-object v0
.end method

.method public getUserData()I
    .locals 1

    #@0
    .prologue
    .line 54
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    #@6
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    #@c
    .line 142
    const-class v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@e
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@18
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@1a
    .line 143
    const-class v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@26
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@28
    .line 139
    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .locals 0
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@0
    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@2
    .line 45
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 93
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    #@2
    .line 92
    return-void
.end method

.method public setStatus(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0
    .param p1, "status"    # Lcom/android/ims/internal/uce/common/StatusCode;

    #@0
    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@2
    .line 76
    return-void
.end method

.method public setUserData(I)V
    .locals 0
    .param p1, "userData"    # I

    #@0
    .prologue
    .line 62
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    #@2
    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 112
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 113
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 114
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@f
    .line 115
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 111
    return-void
.end method
