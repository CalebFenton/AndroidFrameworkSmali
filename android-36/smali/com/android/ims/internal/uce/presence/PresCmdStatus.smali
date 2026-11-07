.class public Lcom/android/ims/internal/uce/presence/PresCmdStatus;
.super Ljava/lang/Object;
.source "PresCmdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresCmdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

.field private greylist-max-o mRequestId:I

.field private greylist-max-o mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

.field private greylist-max-o mUserData:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 31
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 108
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 109
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 31
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 143
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCmdStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCmdId()Lcom/android/ims/internal/uce/presence/PresCmdId;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-object v0
.end method

.method public greylist-max-o getRequestId()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    return v0
.end method

.method public greylist-max-o getStatus()Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    return-object v0
.end method

.method public greylist-max-o getUserData()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    .line 149
    const-class v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 150
    const-class v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 151
    return-void
.end method

.method public greylist-max-r setCmdId(Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .registers 2
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 49
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 50
    return-void
.end method

.method public greylist-max-r setRequestId(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 99
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    .line 100
    return-void
.end method

.method public greylist-max-r setStatus(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .registers 2
    .param p1, "status"    # Lcom/android/ims/internal/uce/common/StatusCode;

    .line 82
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 83
    return-void
.end method

.method public greylist-max-r setUserData(I)V
    .registers 2
    .param p1, "userData"    # I

    .line 66
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    .line 67
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    return-void
.end method
