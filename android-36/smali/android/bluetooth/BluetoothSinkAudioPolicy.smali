.class public final Landroid/bluetooth/BluetoothSinkAudioPolicy;
.super Ljava/lang/Object;
.source "BluetoothSinkAudioPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;,
        Landroid/bluetooth/BluetoothSinkAudioPolicy$AudioPolicyValues;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothSinkAudioPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HFP_SET_SINK_AUDIO_POLICY_ID:Ljava/lang/String; = "SINKAUDIOPOLICY"

.field public static final whitelist POLICY_ALLOWED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist POLICY_NOT_ALLOWED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist POLICY_UNCONFIGURED:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mCallEstablishPolicy:I

.field private final blacklist mConnectingTimePolicy:I

.field private final blacklist mInBandRingtonePolicy:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallEstablishPolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectingTimePolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInBandRingtonePolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 182
    new-instance v0, Landroid/bluetooth/BluetoothSinkAudioPolicy$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSinkAudioPolicy$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "callEstablishPolicy"    # I
    .param p2, "connectingTimePolicy"    # I
    .param p3, "inBandRingtonePolicy"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    .line 117
    iput p2, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    .line 118
    iput p3, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    .line 119
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    instance-of v0, p1, Landroid/bluetooth/BluetoothSinkAudioPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 212
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothSinkAudioPolicy;

    .line 213
    .local v0, "other":Landroid/bluetooth/BluetoothSinkAudioPolicy;
    iget v2, v0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    iget v3, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    if-ne v2, v3, :cond_1b

    iget v2, v0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    iget v3, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    if-ne v2, v3, :cond_1b

    iget v2, v0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    iget v3, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    if-ne v2, v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 217
    .end local v0    # "other":Landroid/bluetooth/BluetoothSinkAudioPolicy;
    :cond_1c
    return v1
.end method

.method public whitelist getActiveDevicePolicyAfterConnection()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    iget v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    return v0
.end method

.method public whitelist getCallEstablishPolicy()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 132
    iget v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    return v0
.end method

.method public whitelist getInBandRingtonePolicy()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 164
    iget v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 227
    iget v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothSinkAudioPolicy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "mCallEstablishPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget v1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", mConnectingTimePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", mInBandRingtonePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 198
    iget v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mCallEstablishPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mConnectingTimePolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy;->mInBandRingtonePolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
