.class public Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
.super Ljava/lang/Object;
.source "PresRlmiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresRlmiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mFullState:Z

.field private greylist-max-o mListName:Ljava/lang/String;

.field private greylist-max-o mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

.field private greylist-max-o mRequestId:I

.field private greylist-max-o mSubscriptionExpireTime:I

.field private greylist-max-o mSubscriptionTerminatedReason:Ljava/lang/String;

.field private greylist-max-o mUri:Ljava/lang/String;

.field private greylist-max-o mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 214
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    .line 194
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 229
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresRlmiInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getListName()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPresSubscriptionState()Lcom/android/ims/internal/uce/presence/PresSubscriptionState;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    return-object v0
.end method

.method public greylist-max-o getRequestId()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    return v0
.end method

.method public greylist-max-o getSubscriptionExpireTime()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    return v0
.end method

.method public greylist-max-o getSubscriptionTerminatedReason()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUri()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getVersion()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    return v0
.end method

.method public greylist-max-o isFullState()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    .line 238
    const-class v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public greylist-max-r setFullState(Z)V
    .registers 2
    .param p1, "fullState"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    .line 102
    return-void
.end method

.method public greylist-max-r setListName(Ljava/lang/String;)V
    .registers 2
    .param p1, "listName"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public greylist-max-r setPresSubscriptionState(Lcom/android/ims/internal/uce/presence/PresSubscriptionState;)V
    .registers 2
    .param p1, "presSubscriptionState"    # Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    .line 152
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    .line 153
    return-void
.end method

.method public greylist-max-r setRequestId(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 135
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    .line 136
    return-void
.end method

.method public greylist-max-r setSubscriptionExpireTime(I)V
    .registers 2
    .param p1, "subscriptionExpireTime"    # I

    .line 169
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    .line 170
    return-void
.end method

.method public greylist-max-r setSubscriptionTerminatedReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "subscriptionTerminatedReason"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public greylist-max-r setUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public greylist-max-r setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .line 84
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    .line 85
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 203
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    return-void
.end method
