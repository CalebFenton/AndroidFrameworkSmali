.class public Landroid/telephony/PreciseDataConnectionState;
.super Ljava/lang/Object;
.source "PreciseDataConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PreciseDataConnectionState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPN:Ljava/lang/String;

.field private mAPNType:Ljava/lang/String;

.field private mFailCause:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkType:I

.field private mReason:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 178
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$1;-><init>()V

    #@5
    .line 177
    sput-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@6
    .line 44
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@9
    .line 45
    const-string/jumbo v0, ""

    #@c
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@e
    .line 46
    const-string/jumbo v0, ""

    #@11
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@13
    .line 47
    const-string/jumbo v0, ""

    #@16
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@18
    .line 48
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@1b
    .line 49
    const-string/jumbo v0, ""

    #@1e
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@20
    .line 73
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@6
    .line 44
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@9
    .line 45
    const-string/jumbo v0, ""

    #@c
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@e
    .line 46
    const-string/jumbo v0, ""

    #@11
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@13
    .line 47
    const-string/jumbo v0, ""

    #@16
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@18
    .line 48
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@1b
    .line 49
    const-string/jumbo v0, ""

    #@1e
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@20
    .line 59
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@22
    .line 60
    iput p2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@24
    .line 61
    iput-object p3, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@26
    .line 62
    iput-object p4, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@28
    .line 63
    iput-object p5, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@2a
    .line 64
    iput-object p6, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@2c
    .line 65
    iput-object p7, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@2e
    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@7
    .line 44
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@a
    .line 45
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@f
    .line 46
    const-string/jumbo v0, ""

    #@12
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@14
    .line 47
    const-string/jumbo v0, ""

    #@17
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@19
    .line 48
    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@1b
    .line 49
    const-string/jumbo v0, ""

    #@1e
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@20
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@26
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@2c
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@32
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@38
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@3e
    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/net/LinkProperties;

    #@44
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@46
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@4c
    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/PreciseDataConnectionState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 163
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 205
    if-ne p0, p1, :cond_0

    #@4
    .line 206
    return v4

    #@5
    .line 208
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 209
    return v3

    #@8
    .line 211
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 212
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 214
    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    #@16
    .line 215
    .local v0, "other":Landroid/telephony/PreciseDataConnectionState;
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 216
    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 217
    return v3

    #@1f
    .line 219
    :cond_3
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@21
    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 220
    return v3

    #@2a
    .line 222
    :cond_4
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@2c
    if-nez v1, :cond_5

    #@2e
    .line 223
    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@30
    if-eqz v1, :cond_6

    #@32
    .line 224
    return v3

    #@33
    .line 226
    :cond_5
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@35
    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-nez v1, :cond_6

    #@3d
    .line 227
    return v3

    #@3e
    .line 229
    :cond_6
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@40
    if-nez v1, :cond_7

    #@42
    .line 230
    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@44
    if-eqz v1, :cond_8

    #@46
    .line 231
    return v3

    #@47
    .line 233
    :cond_7
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@49
    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_8

    #@51
    .line 234
    return v3

    #@52
    .line 236
    :cond_8
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@54
    if-nez v1, :cond_9

    #@56
    .line 237
    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@58
    if-eqz v1, :cond_a

    #@5a
    .line 238
    return v3

    #@5b
    .line 240
    :cond_9
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@5d
    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@5f
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v1

    #@63
    if-nez v1, :cond_a

    #@65
    .line 241
    return v3

    #@66
    .line 243
    :cond_a
    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@68
    iget v2, v0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@6a
    if-eq v1, v2, :cond_b

    #@6c
    .line 244
    return v3

    #@6d
    .line 246
    :cond_b
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@6f
    if-nez v1, :cond_c

    #@71
    .line 247
    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@73
    if-eqz v1, :cond_d

    #@75
    .line 248
    return v3

    #@76
    .line 250
    :cond_c
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@78
    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v1

    #@7e
    if-nez v1, :cond_d

    #@80
    .line 251
    return v3

    #@81
    .line 253
    :cond_d
    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@83
    iget v2, v0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@85
    if-eq v1, v2, :cond_e

    #@87
    .line 254
    return v3

    #@88
    .line 256
    :cond_e
    return v4
.end method

.method public getDataConnectionAPN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataConnectionAPNType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataConnectionChangeReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataConnectionFailCause()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataConnectionLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object v0
.end method

.method public getDataConnectionNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@2
    return v0
.end method

.method public getDataConnectionState()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 191
    const/16 v0, 0x1f

    #@3
    .line 193
    .local v0, "prime":I
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@5
    add-int/lit8 v1, v2, 0x1f

    #@7
    .line 194
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@9
    iget v4, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@b
    add-int v1, v2, v4

    #@d
    .line 195
    mul-int/lit8 v4, v1, 0x1f

    #@f
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@11
    if-nez v2, :cond_0

    #@13
    move v2, v3

    #@14
    :goto_0
    add-int v1, v4, v2

    #@16
    .line 196
    mul-int/lit8 v4, v1, 0x1f

    #@18
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@1a
    if-nez v2, :cond_1

    #@1c
    move v2, v3

    #@1d
    :goto_1
    add-int v1, v4, v2

    #@1f
    .line 197
    mul-int/lit8 v4, v1, 0x1f

    #@21
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@23
    if-nez v2, :cond_2

    #@25
    move v2, v3

    #@26
    :goto_2
    add-int v1, v4, v2

    #@28
    .line 198
    mul-int/lit8 v4, v1, 0x1f

    #@2a
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@2c
    if-nez v2, :cond_3

    #@2e
    move v2, v3

    #@2f
    :goto_3
    add-int v1, v4, v2

    #@31
    .line 199
    mul-int/lit8 v2, v1, 0x1f

    #@33
    iget-object v4, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@35
    if-nez v4, :cond_4

    #@37
    :goto_4
    add-int v1, v2, v3

    #@39
    .line 200
    return v1

    #@3a
    .line 195
    :cond_0
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@3c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@3f
    move-result v2

    #@40
    goto :goto_0

    #@41
    .line 196
    :cond_1
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@43
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@46
    move-result v2

    #@47
    goto :goto_1

    #@48
    .line 197
    :cond_2
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@4a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@4d
    move-result v2

    #@4e
    goto :goto_2

    #@4f
    .line 198
    :cond_3
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@51
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hashCode()I

    #@54
    move-result v2

    #@55
    goto :goto_3

    #@56
    .line 199
    :cond_4
    iget-object v3, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@58
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@5b
    move-result v3

    #@5c
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Data Connection state: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 264
    const-string/jumbo v1, ", Network type: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 265
    const-string/jumbo v1, ", APN type: "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 266
    const-string/jumbo v1, ", APN: "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 267
    const-string/jumbo v1, ", Change reason: "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 268
    const-string/jumbo v1, ", Link properties: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    .line 269
    const-string/jumbo v1, ", Fail cause: "

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 168
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 169
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 170
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 171
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 172
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 173
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    #@1b
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1e
    .line 174
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 167
    return-void
.end method
