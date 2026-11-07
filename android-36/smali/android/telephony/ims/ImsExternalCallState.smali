.class public final Landroid/telephony/ims/ImsExternalCallState;
.super Ljava/lang/Object;
.source "ImsExternalCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsExternalCallState$ExternalCallType;,
        Landroid/telephony/ims/ImsExternalCallState$ExternalCallState;
    }
.end annotation


# static fields
.field public static final whitelist CALL_STATE_CONFIRMED:I = 0x1

.field public static final whitelist CALL_STATE_TERMINATED:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsExternalCallState"


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mCallId:I

.field private greylist-max-o mCallState:I

.field private greylist-max-o mCallType:I

.field private greylist-max-o mIsHeld:Z

.field private greylist-max-o mIsPullable:Z

.field private blacklist mLocalAddress:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Landroid/telephony/ims/ImsExternalCallState$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsExternalCallState$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsExternalCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/net/Uri;Landroid/net/Uri;ZIIZ)V
    .registers 10
    .param p1, "callId"    # I
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "localAddress"    # Landroid/net/Uri;
    .param p4, "isPullable"    # Z
    .param p5, "callState"    # I
    .param p6, "callType"    # I
    .param p7, "isCallheld"    # Z

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    .line 106
    iput-object p2, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 107
    iput-object p3, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    .line 108
    iput-boolean p4, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    .line 109
    iput p5, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    .line 110
    iput p6, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    .line 111
    iput-boolean p7, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsExternalCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallState"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/net/Uri;ZIIZ)V
    .registers 9
    .param p1, "callId"    # I
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "isPullable"    # Z
    .param p4, "callState"    # I
    .param p5, "callType"    # I
    .param p6, "isCallheld"    # Z

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    .line 93
    iput-object p2, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 94
    iput-boolean p3, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    .line 95
    iput p4, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    .line 96
    iput p5, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    .line 97
    iput-boolean p6, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsExternalCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallState"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    .line 143
    const-class v0, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 144
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 145
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    move v1, v3

    :goto_2e
    iput-boolean v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    iput-boolean v2, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsExternalCallState const = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsExternalCallState"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ZIIZ)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "localAddress"    # Landroid/net/Uri;
    .param p4, "isPullable"    # Z
    .param p5, "callState"    # I
    .param p6, "callType"    # I
    .param p7, "isCallheld"    # Z

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsExternalCallState;->getIdForString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    .line 131
    iput-object p2, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 132
    iput-object p3, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    .line 133
    iput-boolean p4, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    .line 134
    iput p5, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    .line 135
    iput p6, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    .line 136
    iput-boolean p7, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsExternalCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallState"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private blacklist getIdForString(Ljava/lang/String;)I
    .registers 4
    .param p1, "idString"    # Ljava/lang/String;

    .line 228
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 229
    :catch_5
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCallId()I
    .registers 2

    .line 184
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    return v0
.end method

.method public whitelist getCallState()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    return v0
.end method

.method public whitelist getCallType()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    return v0
.end method

.method public whitelist getLocalAddress()Landroid/net/Uri;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isCallHeld()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    return v0
.end method

.method public whitelist isCallPullable()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsExternalCallState { mCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 218
    const-string v2, "ImsExternalCallState"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    .line 219
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsPullable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsHeld = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mLocalAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 163
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsPullable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Landroid/telephony/ims/ImsExternalCallState;->mIsHeld:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsExternalCallState writeToParcel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallState"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method
