.class public Lcom/android/ims/internal/uce/common/CapInfo;
.super Ljava/lang/Object;
.source "CapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/common/CapInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/common/CapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapTimestamp:J

.field private mCdViaPresenceSupported:Z

.field private mExts:[Ljava/lang/String;

.field private mFtHttpSupported:Z

.field private mFtSnFSupported:Z

.field private mFtSupported:Z

.field private mFtThumbSupported:Z

.field private mFullSnFGroupChatSupported:Z

.field private mGeoPullFtSupported:Z

.field private mGeoPullSupported:Z

.field private mGeoPushSupported:Z

.field private mImSupported:Z

.field private mIpVideoSupported:Z

.field private mIpVoiceSupported:Z

.field private mIsSupported:Z

.field private mRcsIpVideoCallSupported:Z

.field private mRcsIpVideoOnlyCallSupported:Z

.field private mRcsIpVoiceCallSupported:Z

.field private mSmSupported:Z

.field private mSpSupported:Z

.field private mVsDuringCSSupported:Z

.field private mVsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 401
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 28
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    #@6
    .line 30
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    #@8
    .line 32
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    #@a
    .line 34
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    #@c
    .line 36
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    #@e
    .line 38
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    #@10
    .line 40
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    #@12
    .line 42
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    #@14
    .line 44
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    #@16
    .line 46
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    #@18
    .line 48
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    #@1a
    .line 50
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    #@1c
    .line 52
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    #@1e
    .line 54
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    #@20
    .line 56
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    #@22
    .line 58
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    #@24
    .line 60
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    #@26
    .line 62
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    #@28
    .line 64
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    #@2a
    .line 66
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    #@2c
    .line 68
    const/16 v0, 0xa

    #@2e
    new-array v0, v0, [Ljava/lang/String;

    #@30
    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    #@32
    .line 70
    const-wide/16 v0, 0x0

    #@34
    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    #@36
    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 28
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    #@6
    .line 30
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    #@8
    .line 32
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    #@a
    .line 34
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    #@c
    .line 36
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    #@e
    .line 38
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    #@10
    .line 40
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    #@12
    .line 42
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    #@14
    .line 44
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    #@16
    .line 46
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    #@18
    .line 48
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    #@1a
    .line 50
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    #@1c
    .line 52
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    #@1e
    .line 54
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    #@20
    .line 56
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    #@22
    .line 58
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    #@24
    .line 60
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    #@26
    .line 62
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    #@28
    .line 64
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    #@2a
    .line 66
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    #@2c
    .line 68
    const/16 v0, 0xa

    #@2e
    new-array v0, v0, [Ljava/lang/String;

    #@30
    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    #@32
    .line 70
    const-wide/16 v0, 0x0

    #@34
    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    #@36
    .line 413
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@39
    .line 412
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 371
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCapTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 361
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    #@2
    return-wide v0
.end method

.method public getExts()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isCdViaPresenceSupported()Z
    .locals 1

    #@0
    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    #@2
    return v0
.end method

.method public isFtHttpSupported()Z
    .locals 1

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    #@2
    return v0
.end method

.method public isFtSnFSupported()Z
    .locals 1

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    #@2
    return v0
.end method

.method public isFtSupported()Z
    .locals 1

    #@0
    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    #@2
    return v0
.end method

.method public isFtThumbSupported()Z
    .locals 1

    #@0
    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    #@2
    return v0
.end method

.method public isFullSnFGroupChatSupported()Z
    .locals 1

    #@0
    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    #@2
    return v0
.end method

.method public isGeoPullFtSupported()Z
    .locals 1

    #@0
    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    #@2
    return v0
.end method

.method public isGeoPullSupported()Z
    .locals 1

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    #@2
    return v0
.end method

.method public isGeoPushSupported()Z
    .locals 1

    #@0
    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    #@2
    return v0
.end method

.method public isImSupported()Z
    .locals 1

    #@0
    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    #@2
    return v0
.end method

.method public isIpVideoSupported()Z
    .locals 1

    #@0
    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    #@2
    return v0
.end method

.method public isIpVoiceSupported()Z
    .locals 1

    #@0
    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    #@2
    return v0
.end method

.method public isIsSupported()Z
    .locals 1

    #@0
    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    #@2
    return v0
.end method

.method public isRcsIpVideoCallSupported()Z
    .locals 1

    #@0
    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    #@2
    return v0
.end method

.method public isRcsIpVideoOnlyCallSupported()Z
    .locals 1

    #@0
    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    #@2
    return v0
.end method

.method public isRcsIpVoiceCallSupported()Z
    .locals 1

    #@0
    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    #@2
    return v0
.end method

.method public isSmSupported()Z
    .locals 1

    #@0
    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    #@2
    return v0
.end method

.method public isSpSupported()Z
    .locals 1

    #@0
    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    #@2
    return v0
.end method

.method public isVsDuringCSSupported()Z
    .locals 1

    #@0
    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    #@2
    return v0
.end method

.method public isVsSupported()Z
    .locals 1

    #@0
    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    move v0, v1

    #@9
    :goto_0
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    #@b
    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    move v0, v1

    #@12
    :goto_1
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    #@14
    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2

    #@1a
    move v0, v1

    #@1b
    :goto_2
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    #@1d
    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_3

    #@23
    move v0, v1

    #@24
    :goto_3
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    #@26
    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_4

    #@2c
    move v0, v1

    #@2d
    :goto_4
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    #@2f
    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_5

    #@35
    move v0, v1

    #@36
    :goto_5
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    #@38
    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_6

    #@3e
    move v0, v1

    #@3f
    :goto_6
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    #@41
    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_7

    #@47
    move v0, v1

    #@48
    :goto_7
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    #@4a
    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_8

    #@50
    move v0, v1

    #@51
    :goto_8
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    #@53
    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v0

    #@57
    if-nez v0, :cond_9

    #@59
    move v0, v1

    #@5a
    :goto_9
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    #@5c
    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v0

    #@60
    if-nez v0, :cond_a

    #@62
    move v0, v1

    #@63
    :goto_a
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    #@65
    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v0

    #@69
    if-nez v0, :cond_b

    #@6b
    move v0, v1

    #@6c
    :goto_b
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    #@6e
    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v0

    #@72
    if-nez v0, :cond_c

    #@74
    move v0, v1

    #@75
    :goto_c
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    #@77
    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_d

    #@7d
    move v0, v1

    #@7e
    :goto_d
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    #@80
    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v0

    #@84
    if-nez v0, :cond_e

    #@86
    move v0, v1

    #@87
    :goto_e
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    #@89
    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v0

    #@8d
    if-nez v0, :cond_f

    #@8f
    move v0, v1

    #@90
    :goto_f
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    #@92
    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v0

    #@96
    if-nez v0, :cond_10

    #@98
    move v0, v1

    #@99
    :goto_10
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    #@9b
    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v0

    #@9f
    if-nez v0, :cond_11

    #@a1
    move v0, v1

    #@a2
    :goto_11
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    #@a4
    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v0

    #@a8
    if-nez v0, :cond_12

    #@aa
    move v0, v1

    #@ab
    :goto_12
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    #@ad
    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v0

    #@b1
    if-nez v0, :cond_13

    #@b3
    :goto_13
    iput-boolean v1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    #@b5
    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    #@bb
    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@be
    move-result-wide v0

    #@bf
    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    #@c1
    .line 416
    return-void

    #@c2
    :cond_0
    move v0, v2

    #@c3
    .line 418
    goto/16 :goto_0

    #@c5
    :cond_1
    move v0, v2

    #@c6
    .line 419
    goto/16 :goto_1

    #@c8
    :cond_2
    move v0, v2

    #@c9
    .line 420
    goto/16 :goto_2

    #@cb
    :cond_3
    move v0, v2

    #@cc
    .line 421
    goto/16 :goto_3

    #@ce
    :cond_4
    move v0, v2

    #@cf
    .line 422
    goto/16 :goto_4

    #@d1
    :cond_5
    move v0, v2

    #@d2
    .line 423
    goto/16 :goto_5

    #@d4
    :cond_6
    move v0, v2

    #@d5
    .line 424
    goto/16 :goto_6

    #@d7
    :cond_7
    move v0, v2

    #@d8
    .line 425
    goto/16 :goto_7

    #@da
    :cond_8
    move v0, v2

    #@db
    .line 426
    goto/16 :goto_8

    #@dd
    :cond_9
    move v0, v2

    #@de
    .line 427
    goto/16 :goto_9

    #@e0
    :cond_a
    move v0, v2

    #@e1
    .line 428
    goto :goto_a

    #@e2
    :cond_b
    move v0, v2

    #@e3
    .line 429
    goto :goto_b

    #@e4
    :cond_c
    move v0, v2

    #@e5
    .line 430
    goto :goto_c

    #@e6
    :cond_d
    move v0, v2

    #@e7
    .line 431
    goto :goto_d

    #@e8
    :cond_e
    move v0, v2

    #@e9
    .line 432
    goto :goto_e

    #@ea
    :cond_f
    move v0, v2

    #@eb
    .line 433
    goto :goto_f

    #@ec
    :cond_10
    move v0, v2

    #@ed
    .line 434
    goto :goto_10

    #@ee
    :cond_11
    move v0, v2

    #@ef
    .line 436
    goto :goto_11

    #@f0
    :cond_12
    move v0, v2

    #@f1
    .line 437
    goto :goto_12

    #@f2
    :cond_13
    move v1, v2

    #@f3
    .line 438
    goto :goto_13
.end method

.method public setCapTimestamp(J)V
    .locals 1
    .param p1, "capTimestamp"    # J

    #@0
    .prologue
    .line 366
    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    #@2
    .line 365
    return-void
.end method

.method public setCdViaPresenceSupported(Z)V
    .locals 0
    .param p1, "cdViaPresenceSupported"    # Z

    #@0
    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    #@2
    .line 222
    return-void
.end method

.method public setExts([Ljava/lang/String;)V
    .locals 0
    .param p1, "exts"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    #@2
    .line 354
    return-void
.end method

.method public setFtHttpSupported(Z)V
    .locals 0
    .param p1, "ftHttpSupported"    # Z

    #@0
    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    #@2
    .line 134
    return-void
.end method

.method public setFtSnFSupported(Z)V
    .locals 0
    .param p1, "ftSnFSupported"    # Z

    #@0
    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    #@2
    .line 120
    return-void
.end method

.method public setFtSupported(Z)V
    .locals 0
    .param p1, "ftSupported"    # Z

    #@0
    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    #@2
    .line 148
    return-void
.end method

.method public setFtThumbSupported(Z)V
    .locals 0
    .param p1, "ftThumbSupported"    # Z

    #@0
    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    #@2
    .line 104
    return-void
.end method

.method public setFullSnFGroupChatSupported(Z)V
    .locals 0
    .param p1, "fullSnFGroupChatSupported"    # Z

    #@0
    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    #@2
    .line 334
    return-void
.end method

.method public setGeoPullFtSupported(Z)V
    .locals 0
    .param p1, "geoPullFtSupported"    # Z

    #@0
    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    #@2
    .line 266
    return-void
.end method

.method public setGeoPullSupported(Z)V
    .locals 0
    .param p1, "geoPullSupported"    # Z

    #@0
    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    #@2
    .line 280
    return-void
.end method

.method public setGeoPushSupported(Z)V
    .locals 0
    .param p1, "geoPushSupported"    # Z

    #@0
    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    #@2
    .line 294
    return-void
.end method

.method public setImSupported(Z)V
    .locals 0
    .param p1, "imSupported"    # Z

    #@0
    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    #@2
    .line 90
    return-void
.end method

.method public setIpVideoSupported(Z)V
    .locals 0
    .param p1, "ipVideoSupported"    # Z

    #@0
    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    #@2
    .line 250
    return-void
.end method

.method public setIpVoiceSupported(Z)V
    .locals 0
    .param p1, "ipVoiceSupported"    # Z

    #@0
    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    #@2
    .line 236
    return-void
.end method

.method public setIsSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    #@0
    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    #@2
    .line 162
    return-void
.end method

.method public setRcsIpVideoCallSupported(Z)V
    .locals 0
    .param p1, "rcsIpVideoCallSupported"    # Z

    #@0
    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    #@2
    .line 341
    return-void
.end method

.method public setRcsIpVideoOnlyCallSupported(Z)V
    .locals 0
    .param p1, "rcsIpVideoOnlyCallSupported"    # Z

    #@0
    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    #@2
    .line 344
    return-void
.end method

.method public setRcsIpVoiceCallSupported(Z)V
    .locals 0
    .param p1, "rcsIpVoiceCallSupported"    # Z

    #@0
    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    #@2
    .line 338
    return-void
.end method

.method public setSmSupported(Z)V
    .locals 0
    .param p1, "smSupported"    # Z

    #@0
    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    #@2
    .line 308
    return-void
.end method

.method public setSpSupported(Z)V
    .locals 0
    .param p1, "spSupported"    # Z

    #@0
    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    #@2
    .line 206
    return-void
.end method

.method public setVsDuringCSSupported(Z)V
    .locals 0
    .param p1, "vsDuringCSSupported"    # Z

    #@0
    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    #@2
    .line 177
    return-void
.end method

.method public setVsSupported(Z)V
    .locals 0
    .param p1, "vsSupported"    # Z

    #@0
    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    #@2
    .line 192
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 376
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 377
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 378
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 379
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    #@1c
    if-eqz v0, :cond_3

    #@1e
    move v0, v1

    #@1f
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 380
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    #@24
    if-eqz v0, :cond_4

    #@26
    move v0, v1

    #@27
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 381
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    #@2c
    if-eqz v0, :cond_5

    #@2e
    move v0, v1

    #@2f
    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 382
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    #@34
    if-eqz v0, :cond_6

    #@36
    move v0, v1

    #@37
    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 383
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    #@3c
    if-eqz v0, :cond_7

    #@3e
    move v0, v1

    #@3f
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 384
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    #@44
    if-eqz v0, :cond_8

    #@46
    move v0, v1

    #@47
    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 385
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    #@4c
    if-eqz v0, :cond_9

    #@4e
    move v0, v1

    #@4f
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    .line 386
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    #@54
    if-eqz v0, :cond_a

    #@56
    move v0, v1

    #@57
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 387
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    #@5c
    if-eqz v0, :cond_b

    #@5e
    move v0, v1

    #@5f
    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 388
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    #@64
    if-eqz v0, :cond_c

    #@66
    move v0, v1

    #@67
    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 389
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    #@6c
    if-eqz v0, :cond_d

    #@6e
    move v0, v1

    #@6f
    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 390
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    #@74
    if-eqz v0, :cond_e

    #@76
    move v0, v1

    #@77
    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 391
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    #@7c
    if-eqz v0, :cond_f

    #@7e
    move v0, v1

    #@7f
    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    .line 392
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    #@84
    if-eqz v0, :cond_10

    #@86
    move v0, v1

    #@87
    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8a
    .line 394
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    #@8c
    if-eqz v0, :cond_11

    #@8e
    move v0, v1

    #@8f
    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@92
    .line 395
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    #@94
    if-eqz v0, :cond_12

    #@96
    move v0, v1

    #@97
    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    .line 396
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    #@9c
    if-eqz v0, :cond_13

    #@9e
    :goto_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a1
    .line 397
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    #@a3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@a6
    .line 398
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    #@a8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@ab
    .line 374
    return-void

    #@ac
    :cond_0
    move v0, v2

    #@ad
    .line 376
    goto/16 :goto_0

    #@af
    :cond_1
    move v0, v2

    #@b0
    .line 377
    goto/16 :goto_1

    #@b2
    :cond_2
    move v0, v2

    #@b3
    .line 378
    goto/16 :goto_2

    #@b5
    :cond_3
    move v0, v2

    #@b6
    .line 379
    goto/16 :goto_3

    #@b8
    :cond_4
    move v0, v2

    #@b9
    .line 380
    goto/16 :goto_4

    #@bb
    :cond_5
    move v0, v2

    #@bc
    .line 381
    goto/16 :goto_5

    #@be
    :cond_6
    move v0, v2

    #@bf
    .line 382
    goto/16 :goto_6

    #@c1
    :cond_7
    move v0, v2

    #@c2
    .line 383
    goto/16 :goto_7

    #@c4
    :cond_8
    move v0, v2

    #@c5
    .line 384
    goto :goto_8

    #@c6
    :cond_9
    move v0, v2

    #@c7
    .line 385
    goto :goto_9

    #@c8
    :cond_a
    move v0, v2

    #@c9
    .line 386
    goto :goto_a

    #@ca
    :cond_b
    move v0, v2

    #@cb
    .line 387
    goto :goto_b

    #@cc
    :cond_c
    move v0, v2

    #@cd
    .line 388
    goto :goto_c

    #@ce
    :cond_d
    move v0, v2

    #@cf
    .line 389
    goto :goto_d

    #@d0
    :cond_e
    move v0, v2

    #@d1
    .line 390
    goto :goto_e

    #@d2
    :cond_f
    move v0, v2

    #@d3
    .line 391
    goto :goto_f

    #@d4
    :cond_10
    move v0, v2

    #@d5
    .line 392
    goto :goto_10

    #@d6
    :cond_11
    move v0, v2

    #@d7
    .line 394
    goto :goto_11

    #@d8
    :cond_12
    move v0, v2

    #@d9
    .line 395
    goto :goto_12

    #@da
    :cond_13
    move v1, v2

    #@db
    .line 396
    goto :goto_13
.end method
