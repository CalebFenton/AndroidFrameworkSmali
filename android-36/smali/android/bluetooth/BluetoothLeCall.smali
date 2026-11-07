.class public final Landroid/bluetooth/BluetoothLeCall;
.super Ljava/lang/Object;
.source "BluetoothLeCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeCall$State;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_OUTGOING_CALL:I = 0x1

.field public static final blacklist FLAG_WITHHELD_BY_NETWORK:I = 0x4

.field public static final blacklist FLAG_WITHHELD_BY_SERVER:I = 0x2

.field public static final blacklist STATE_ACTIVE:I = 0x3

.field public static final blacklist STATE_ALERTING:I = 0x2

.field public static final blacklist STATE_DIALING:I = 0x1

.field public static final blacklist STATE_INCOMING:I = 0x0

.field public static final blacklist STATE_LOCALLY_AND_REMOTELY_HELD:I = 0x6

.field public static final blacklist STATE_LOCALLY_HELD:I = 0x4

.field public static final blacklist STATE_REMOTELY_HELD:I = 0x5


# instance fields
.field private final blacklist mCallFlags:I

.field private final blacklist mFriendlyName:Ljava/lang/String;

.field private final blacklist mState:I

.field private final blacklist mUri:Ljava/lang/String;

.field private final blacklist mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    new-instance v0, Landroid/bluetooth/BluetoothLeCall$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeCall$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCall;)V
    .registers 7
    .param p1, "that"    # Landroid/bluetooth/BluetoothLeCall;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/UUID;

    .line 145
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeCall;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    .line 146
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeCall;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    .line 147
    iget-object v0, p1, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 149
    iget v0, p1, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    .line 150
    iget v0, p1, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    .line 151
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    .line 230
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothLeCall-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "callFlags"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    .line 161
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 163
    iput p4, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    .line 164
    iput p5, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 172
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    .line 174
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothLeCall;

    .line 175
    .local v2, "that":Landroid/bluetooth/BluetoothLeCall;
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iget v4, v2, Landroid/bluetooth/BluetoothLeCall;->mState:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    iget v4, v2, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    if-ne v3, v4, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    .line 175
    :goto_41
    return v0

    .line 172
    .end local v2    # "that":Landroid/bluetooth/BluetoothLeCall;
    :cond_42
    :goto_42
    return v1
.end method

.method public blacklist getCallFlags()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    return v0
.end method

.method public blacklist getFriendlyName()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getState()I
    .registers 2

    .line 271
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    return v0
.end method

.method public blacklist getUri()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUuid()Ljava/util/UUID;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 184
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iget v3, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isIncomingCall()Z
    .registers 3

    .line 291
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 206
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 209
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return-void
.end method
