.class public Lcom/android/ims/internal/uce/presence/PresSipResponse;
.super Ljava/lang/Object;
.source "PresSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresSipResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

.field private mReasonPhrase:Ljava/lang/String;

.field private mRequestId:I

.field private mRetryAfter:I

.field private mSipResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 135
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;-><init>()V

    #@5
    .line 134
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 25
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@6
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@b
    .line 26
    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    #@d
    .line 27
    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    #@f
    .line 28
    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    #@11
    .line 29
    const-string/jumbo v0, ""

    #@14
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@16
    .line 117
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 25
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@6
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@b
    .line 26
    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    #@d
    .line 27
    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    #@f
    .line 28
    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    #@11
    .line 29
    const-string/jumbo v0, ""

    #@14
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@16
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    #@19
    .line 147
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSipResponse;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/presence/PresCmdId;
    .locals 1

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@2
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    #@2
    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    #@0
    .prologue
    .line 102
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    #@2
    return v0
.end method

.method public getSipResponseCode()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    #@6
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    #@c
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@12
    .line 156
    const-class v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@14
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@1e
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@20
    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    #@26
    .line 152
    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .locals 0
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@0
    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@2
    .line 43
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@2
    .line 93
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 60
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    #@2
    .line 59
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0
    .param p1, "retryAfter"    # I

    #@0
    .prologue
    .line 110
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    #@2
    .line 109
    return-void
.end method

.method public setSipResponseCode(I)V
    .locals 0
    .param p1, "sipResponseCode"    # I

    #@0
    .prologue
    .line 76
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    #@2
    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 126
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 127
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 128
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 129
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 130
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 125
    return-void
.end method
