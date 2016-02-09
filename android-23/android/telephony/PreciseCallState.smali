.class public Landroid/telephony/PreciseCallState;
.super Ljava/lang/Object;
.source "PreciseCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PreciseCallState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/PreciseCallState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x1

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x4

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x3

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x7

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x8

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x2

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x0

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x5

.field public static final PRECISE_CALL_STATE_NOT_VALID:I = -0x1

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x6


# instance fields
.field private mBackgroundCallState:I

.field private mDisconnectCause:I

.field private mForegroundCallState:I

.field private mPreciseDisconnectCause:I

.field private mRingingCallState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 255
    new-instance v0, Landroid/telephony/PreciseCallState$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/PreciseCallState$1;-><init>()V

    #@5
    .line 254
    sput-object v0, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@6
    .line 64
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@8
    .line 65
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@a
    .line 66
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@c
    .line 67
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@e
    .line 88
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "ringingCall"    # I
    .param p2, "foregroundCall"    # I
    .param p3, "backgroundCall"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@6
    .line 64
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@8
    .line 65
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@a
    .line 66
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@c
    .line 67
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@e
    .line 76
    iput p1, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@10
    .line 77
    iput p2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@12
    .line 78
    iput p3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@14
    .line 79
    iput p4, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@16
    .line 80
    iput p5, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@18
    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@6
    .line 64
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@8
    .line 65
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@a
    .line 66
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@c
    .line 67
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@e
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@14
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@1a
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@20
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@26
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@2c
    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PreciseCallState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/PreciseCallState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 242
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 280
    if-ne p0, p1, :cond_0

    #@4
    .line 281
    return v1

    #@5
    .line 283
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 284
    return v2

    #@8
    .line 286
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 287
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 289
    check-cast v0, Landroid/telephony/PreciseCallState;

    #@16
    .line 290
    .local v0, "other":Landroid/telephony/PreciseCallState;
    iget v3, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@18
    iget v4, v0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@1a
    if-eq v3, v4, :cond_4

    #@1c
    .line 291
    iget v3, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@1e
    iget v4, v0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@20
    if-eq v3, v4, :cond_4

    #@22
    .line 292
    iget v3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@24
    iget v4, v0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@26
    if-eq v3, v4, :cond_4

    #@28
    .line 293
    iget v3, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@2a
    iget v4, v0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@2c
    if-eq v3, v4, :cond_4

    #@2e
    .line 294
    iget v3, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@30
    iget v4, v0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@32
    if-eq v3, v4, :cond_3

    #@34
    .line 290
    :goto_0
    return v1

    #@35
    :cond_3
    move v1, v2

    #@36
    .line 294
    goto :goto_0

    #@37
    :cond_4
    move v1, v2

    #@38
    .line 290
    goto :goto_0
.end method

.method public getBackgroundCallState()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@2
    return v0
.end method

.method public getDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@2
    return v0
.end method

.method public getForegroundCallState()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@2
    return v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    #@0
    .prologue
    .line 237
    iget v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@2
    return v0
.end method

.method public getRingingCallState()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 268
    const/16 v0, 0x1f

    #@2
    .line 270
    .local v0, "prime":I
    iget v2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@4
    add-int/lit8 v1, v2, 0x1f

    #@6
    .line 271
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget v3, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@a
    add-int v1, v2, v3

    #@c
    .line 272
    mul-int/lit8 v2, v1, 0x1f

    #@e
    iget v3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@10
    add-int v1, v2, v3

    #@12
    .line 273
    mul-int/lit8 v2, v1, 0x1f

    #@14
    iget v3, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@16
    add-int v1, v2, v3

    #@18
    .line 274
    mul-int/lit8 v2, v1, 0x1f

    #@1a
    iget v3, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@1c
    add-int v1, v2, v3

    #@1e
    .line 275
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 301
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Ringing call state: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, ", Foreground call state: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, ", Background call state: "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget v2, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v2, ", Disconnect cause: "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    iget v2, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, ", Precise disconnect cause: "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    iget v2, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 247
    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 248
    iget v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 249
    iget v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 250
    iget v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 251
    iget v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 246
    return-void
.end method
