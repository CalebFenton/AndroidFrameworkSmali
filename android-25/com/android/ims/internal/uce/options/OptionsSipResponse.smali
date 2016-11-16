.class public Lcom/android/ims/internal/uce/options/OptionsSipResponse;
.super Ljava/lang/Object;
.source "OptionsSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/options/OptionsSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

.field private mReasonPhrase:Ljava/lang/String;

.field private mRequestId:I

.field private mRetryAfter:I

.field private mSipResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 137
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;-><init>()V

    #@5
    .line 136
    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 27
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    #@6
    .line 28
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    #@8
    .line 29
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    #@a
    .line 30
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@f
    .line 117
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@11
    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@16
    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 27
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    #@6
    .line 28
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    #@8
    .line 29
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    #@a
    .line 30
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@f
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    #@12
    .line 148
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsSipResponse;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .locals 1

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@2
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    #@2
    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    #@0
    .prologue
    .line 101
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    #@2
    return v0
.end method

.method public getSipResponseCode()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    #@6
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    #@c
    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@12
    .line 157
    const-class v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@14
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@1e
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@20
    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    #@26
    .line 153
    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/options/OptionsCmdId;)V
    .locals 0
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@0
    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@2
    .line 44
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@2
    .line 92
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 61
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    #@2
    .line 60
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0
    .param p1, "retryAfter"    # I

    #@0
    .prologue
    .line 109
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    #@2
    .line 108
    return-void
.end method

.method public setSipResponseCode(I)V
    .locals 0
    .param p1, "sipResponseCode"    # I

    #@0
    .prologue
    .line 77
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    #@2
    .line 76
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 128
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 129
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 130
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 131
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 132
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 126
    return-void
.end method
