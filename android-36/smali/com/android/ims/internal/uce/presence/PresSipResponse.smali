.class public Lcom/android/ims/internal/uce/presence/PresSipResponse;
.super Ljava/lang/Object;
.source "PresSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

.field private blacklist mReasonHeader:Ljava/lang/String;

.field private greylist-max-o mReasonPhrase:Ljava/lang/String;

.field private greylist-max-o mRequestId:I

.field private greylist-max-o mRetryAfter:I

.field private greylist-max-o mSipResponseCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 166
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    .line 29
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    .line 30
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 148
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    .line 29
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    .line 30
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 181
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSipResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getCmdId()Lcom/android/ims/internal/uce/presence/PresCmdId;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-object v0
.end method

.method public blacklist getReasonHeader()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getRequestId()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    return v0
.end method

.method public greylist-max-r getRetryAfter()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    return v0
.end method

.method public greylist-max-r getSipResponseCode()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 188
    const-class v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public greylist-max-r setCmdId(Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .registers 2
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 49
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    .line 50
    return-void
.end method

.method public blacklist setReasonHeader(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonHeader"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public greylist-max-r setReasonPhrase(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public greylist-max-r setRequestId(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 67
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    .line 68
    return-void
.end method

.method public greylist-max-r setRetryAfter(I)V
    .registers 2
    .param p1, "retryAfter"    # I

    .line 123
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    .line 124
    return-void
.end method

.method public greylist-max-r setSipResponseCode(I)V
    .registers 2
    .param p1, "sipResponseCode"    # I

    .line 85
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    .line 86
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 161
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return-void
.end method
