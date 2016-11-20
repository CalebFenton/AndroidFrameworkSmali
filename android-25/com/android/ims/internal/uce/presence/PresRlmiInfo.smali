.class public Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
.super Ljava/lang/Object;
.source "PresRlmiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresRlmiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFullState:Z

.field private mListName:Ljava/lang/String;

.field private mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

.field private mRequestId:I

.field private mSubscriptionExpireTime:I

.field private mSubscriptionTerminatedReason:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 204
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;-><init>()V

    #@5
    .line 203
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    #@8
    .line 38
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    #@d
    .line 183
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    #@8
    .line 38
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    #@d
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@10
    .line 216
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresRlmiInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 187
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getListName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPresSubscriptionState()Lcom/android/ims/internal/uce/presence/PresSubscriptionState;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    #@2
    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    #@2
    return v0
.end method

.method public getSubscriptionExpireTime()I
    .locals 1

    #@0
    .prologue
    .line 152
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    #@2
    return v0
.end method

.method public getSubscriptionTerminatedReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    #@2
    return v0
.end method

.method public isFullState()Z
    .locals 1

    #@0
    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    #@7
    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    #@d
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    :goto_0
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    #@15
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    #@1b
    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    #@21
    .line 228
    const-class v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    #@23
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@26
    move-result-object v0

    #@27
    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    #@2d
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    #@2f
    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    #@35
    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    #@3b
    .line 221
    return-void

    #@3c
    .line 224
    :cond_0
    const/4 v0, 0x1

    #@3d
    goto :goto_0
.end method

.method public setFullState(Z)V
    .locals 0
    .param p1, "fullState"    # Z

    #@0
    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    #@2
    .line 95
    return-void
.end method

.method public setListName(Ljava/lang/String;)V
    .locals 0
    .param p1, "listName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    #@2
    .line 111
    return-void
.end method

.method public setPresSubscriptionState(Lcom/android/ims/internal/uce/presence/PresSubscriptionState;)V
    .locals 0
    .param p1, "presSubscriptionState"    # Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    #@2
    .line 143
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 128
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    #@2
    .line 127
    return-void
.end method

.method public setSubscriptionExpireTime(I)V
    .locals 0
    .param p1, "subscriptionExpireTime"    # I

    #@0
    .prologue
    .line 160
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    #@2
    .line 159
    return-void
.end method

.method public setSubscriptionTerminatedReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscriptionTerminatedReason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    #@2
    .line 175
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    #@2
    .line 63
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    #@0
    .prologue
    .line 80
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    #@2
    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 193
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 194
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 195
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 196
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 197
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    #@1e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@21
    .line 198
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 199
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 191
    return-void

    #@2c
    .line 194
    :cond_0
    const/4 v0, 0x0

    #@2d
    goto :goto_0
.end method
