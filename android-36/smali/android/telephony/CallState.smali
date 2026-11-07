.class public final Landroid/telephony/CallState;
.super Ljava/lang/Object;
.source "CallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallState$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CALL_CLASSIFICATION_BACKGROUND:I = 0x2

.field public static final blacklist CALL_CLASSIFICATION_FOREGROUND:I = 0x1

.field public static final blacklist CALL_CLASSIFICATION_MAX:I = 0x3

.field public static final blacklist CALL_CLASSIFICATION_RINGING:I = 0x0

.field public static final blacklist CALL_CLASSIFICATION_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallClassification:I

.field private final blacklist mCallQuality:Landroid/telephony/CallQuality;

.field private blacklist mImsCallId:Ljava/lang/String;

.field private blacklist mImsCallServiceType:I

.field private blacklist mImsCallType:I

.field private final blacklist mNetworkType:I

.field private final blacklist mPreciseCallState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 275
    new-instance v0, Landroid/telephony/CallState$1;

    invoke-direct {v0}, Landroid/telephony/CallState$1;-><init>()V

    sput-object v0, Landroid/telephony/CallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/telephony/CallQuality;ILjava/lang/String;II)V
    .registers 8
    .param p1, "callState"    # I
    .param p2, "networkType"    # I
    .param p3, "callQuality"    # Landroid/telephony/CallQuality;
    .param p4, "callClassification"    # I
    .param p5, "imsCallId"    # Ljava/lang/String;
    .param p6, "imsCallServiceType"    # I
    .param p7, "imsCallType"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    .line 118
    iput p2, p0, Landroid/telephony/CallState;->mNetworkType:I

    .line 119
    iput-object p3, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    .line 120
    iput p4, p0, Landroid/telephony/CallState;->mCallClassification:I

    .line 121
    iput-object p5, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    .line 122
    iput p6, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    .line 123
    iput p7, p0, Landroid/telephony/CallState;->mImsCallType:I

    .line 124
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/telephony/CallQuality;ILjava/lang/String;IILandroid/telephony/CallState-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/telephony/CallState;-><init>(IILandroid/telephony/CallQuality;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    .line 138
    const-class v0, Landroid/telephony/CallQuality;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CallQuality;

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallQuality;

    iput-object v0, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    .line 144
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CallState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CallState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 236
    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    instance-of v1, p1, Landroid/telephony/CallState;

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Landroid/telephony/CallState;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_4f

    .line 240
    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    .line 241
    return v1

    .line 244
    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallState;

    .line 246
    .local v2, "s":Landroid/telephony/CallState;
    iget v3, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    iget v4, v2, Landroid/telephony/CallState;->mPreciseCallState:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/telephony/CallState;->mNetworkType:I

    iget v4, v2, Landroid/telephony/CallState;->mNetworkType:I

    if-ne v3, v4, :cond_4d

    iget-object v3, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    iget-object v4, v2, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    .line 248
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget v3, p0, Landroid/telephony/CallState;->mCallClassification:I

    iget v4, v2, Landroid/telephony/CallState;->mCallClassification:I

    if-ne v3, v4, :cond_4d

    iget-object v3, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    .line 250
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget v3, p0, Landroid/telephony/CallState;->mImsCallType:I

    iget v4, v2, Landroid/telephony/CallState;->mImsCallType:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    iget v4, v2, Landroid/telephony/CallState;->mImsCallServiceType:I

    if-ne v3, v4, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    nop

    .line 246
    :goto_4e
    return v0

    .line 237
    .end local v2    # "s":Landroid/telephony/CallState;
    :cond_4f
    :goto_4f
    return v0
.end method

.method public blacklist getCallClassification()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    return v0
.end method

.method public whitelist getCallQuality()Landroid/telephony/CallQuality;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    return-object v0
.end method

.method public whitelist getCallState()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    return v0
.end method

.method public whitelist getImsCallServiceType()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    return v0
.end method

.method public whitelist getImsCallSessionId()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImsCallType()I
    .registers 2

    .line 225
    iget v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    return v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 230
    iget v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    iget v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 230
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPreciseCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallClassification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mCallClassification:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsCallServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mImsCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 266
    iget v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v0, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 269
    iget v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return-void
.end method
