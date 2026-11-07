.class public final Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;
.super Ljava/lang/Object;
.source "BluetoothSinkAudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSinkAudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallEstablishPolicy:I

.field private blacklist mConnectingTimePolicy:I

.field private blacklist mInBandRingtonePolicy:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mCallEstablishPolicy:I

    .line 238
    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mConnectingTimePolicy:I

    .line 239
    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mInBandRingtonePolicy:I

    .line 241
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothSinkAudioPolicy;)V
    .registers 3
    .param p1, "policies"    # Landroid/bluetooth/BluetoothSinkAudioPolicy;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mCallEstablishPolicy:I

    .line 238
    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mConnectingTimePolicy:I

    .line 239
    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mInBandRingtonePolicy:I

    .line 244
    invoke-static {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy;->-$$Nest$fgetmCallEstablishPolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mCallEstablishPolicy:I

    .line 245
    invoke-static {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy;->-$$Nest$fgetmConnectingTimePolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mConnectingTimePolicy:I

    .line 246
    invoke-static {p1}, Landroid/bluetooth/BluetoothSinkAudioPolicy;->-$$Nest$fgetmInBandRingtonePolicy(Landroid/bluetooth/BluetoothSinkAudioPolicy;)I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mInBandRingtonePolicy:I

    .line 247
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothSinkAudioPolicy;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 324
    new-instance v0, Landroid/bluetooth/BluetoothSinkAudioPolicy;

    iget v1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mCallEstablishPolicy:I

    iget v2, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mConnectingTimePolicy:I

    iget v3, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mInBandRingtonePolicy:I

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothSinkAudioPolicy;-><init>(III)V

    return-object v0
.end method

.method public whitelist setActiveDevicePolicyAfterConnection(I)Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;
    .registers 2
    .param p1, "connectingTimePolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 290
    iput p1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mConnectingTimePolicy:I

    .line 291
    return-object p0
.end method

.method public whitelist setCallEstablishPolicy(I)Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;
    .registers 2
    .param p1, "callEstablishPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 266
    iput p1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mCallEstablishPolicy:I

    .line 267
    return-object p0
.end method

.method public whitelist setInBandRingtonePolicy(I)Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;
    .registers 2
    .param p1, "inBandRingtonePolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 312
    iput p1, p0, Landroid/bluetooth/BluetoothSinkAudioPolicy$Builder;->mInBandRingtonePolicy:I

    .line 313
    return-object p0
.end method
