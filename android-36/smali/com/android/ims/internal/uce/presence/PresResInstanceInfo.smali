.class public Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;
.super Ljava/lang/Object;
.source "PresResInstanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UCE_PRES_RES_INSTANCE_STATE_ACTIVE:I = 0x0

.field public static final greylist-max-o UCE_PRES_RES_INSTANCE_STATE_PENDING:I = 0x1

.field public static final greylist-max-o UCE_PRES_RES_INSTANCE_STATE_TERMINATED:I = 0x2

.field public static final greylist-max-o UCE_PRES_RES_INSTANCE_STATE_UNKNOWN:I = 0x3

.field public static final greylist-max-o UCE_PRES_RES_INSTANCE_UNKNOWN:I = 0x4


# instance fields
.field private greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mPresentityUri:Ljava/lang/String;

.field private greylist-max-o mReason:Ljava/lang/String;

.field private greylist-max-o mResInstanceState:I

.field private greylist-max-o mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 184
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresResInstanceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getPresentityUri()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getReason()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getResId()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getResInstanceState()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    return v0
.end method

.method public greylist-max-o getTupleInfo()[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 192
    const-class v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 194
    .local v0, "tempParcelableArray":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 195
    if-eqz v0, :cond_38

    .line 196
    array-length v1, v0

    const-class v2, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 200
    :cond_38
    return-void
.end method

.method public greylist-max-r setPresentityUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "presentityUri"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public greylist-max-r setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public greylist-max-r setResId(Ljava/lang/String;)V
    .registers 2
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public greylist-max-r setResInstanceState(I)V
    .registers 2
    .param p1, "nResInstanceState"    # I

    .line 67
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    .line 68
    return-void
.end method

.method public greylist-max-r setTupleInfo([Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V
    .registers 3
    .param p1, "tupleInfo"    # [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 137
    array-length v0, p1

    new-array v0, v0, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 138
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 139
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 164
    return-void
.end method
