.class public final Landroid/bluetooth/BluetoothHeadsetClientCall;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadsetClientCall$1;
    }
.end annotation


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x0

.field public static final CALL_STATE_ALERTING:I = 0x3

.field public static final CALL_STATE_DIALING:I = 0x2

.field public static final CALL_STATE_HELD:I = 0x1

.field public static final CALL_STATE_HELD_BY_RESPONSE_AND_HOLD:I = 0x6

.field public static final CALL_STATE_INCOMING:I = 0x4

.field public static final CALL_STATE_TERMINATED:I = 0x7

.field public static final CALL_STATE_WAITING:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mId:I

.field private mMultiParty:Z

.field private mNumber:Ljava/lang/String;

.field private final mOutgoing:Z

.field private mState:I

.field private final mUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;-><init>()V

    #@5
    .line 229
    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z

    #@0
    .prologue
    .line 79
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@3
    move-result-object v3

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v4, p3

    #@8
    move-object v5, p4

    #@9
    move v6, p5

    #@a
    move v7, p6

    #@b
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZ)V

    #@e
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "state"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "multiParty"    # Z
    .param p7, "outgoing"    # Z

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@5
    .line 85
    iput p2, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@7
    .line 86
    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    #@9
    .line 87
    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@b
    .line 88
    if-eqz p5, :cond_0

    #@d
    .end local p5    # "number":Ljava/lang/String;
    :goto_0
    iput-object p5, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@f
    .line 89
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@11
    .line 90
    iput-boolean p7, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@13
    .line 83
    return-void

    #@14
    .line 88
    .restart local p5    # "number":Ljava/lang/String;
    :cond_0
    const-string/jumbo p5, ""

    #@17
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 257
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@2
    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@2
    return v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public isMultiParty()Z
    .locals 1

    #@0
    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@2
    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    #@0
    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@2
    return v0
.end method

.method public setMultiParty(Z)V
    .locals 0
    .param p1, "multiParty"    # Z

    #@0
    .prologue
    .line 124
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@2
    .line 123
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@2
    .line 111
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 101
    iput p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@2
    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->toString(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "loggable"    # Z

    #@0
    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "BluetoothHeadsetClientCall{mDevice: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 199
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    #@a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@c
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    .line 200
    const-string/jumbo v1, ", mId: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 201
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    .line 202
    const-string/jumbo v1, ", mUUID: "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 203
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    .line 204
    const-string/jumbo v1, ", mState: "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 205
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@2d
    packed-switch v1, :pswitch_data_0

    #@30
    .line 214
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 216
    :goto_1
    const-string/jumbo v1, ", mNumber: "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 217
    if-eqz p1, :cond_1

    #@3d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@3f
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    .line 218
    const-string/jumbo v1, ", mMultiParty: "

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 219
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    .line 220
    const-string/jumbo v1, ", mOutgoing: "

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 221
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@58
    .line 222
    const-string/jumbo v1, "}"

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    return-object v1

    #@63
    .line 199
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@65
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    #@68
    move-result v1

    #@69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v1

    #@6d
    goto :goto_0

    #@6e
    .line 206
    :pswitch_0
    const-string/jumbo v1, "ACTIVE"

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    goto :goto_1

    #@75
    .line 207
    :pswitch_1
    const-string/jumbo v1, "HELD"

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_1

    #@7c
    .line 208
    :pswitch_2
    const-string/jumbo v1, "DIALING"

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    goto :goto_1

    #@83
    .line 209
    :pswitch_3
    const-string/jumbo v1, "ALERTING"

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    goto :goto_1

    #@8a
    .line 210
    :pswitch_4
    const-string/jumbo v1, "INCOMING"

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    goto :goto_1

    #@91
    .line 211
    :pswitch_5
    const-string/jumbo v1, "WAITING"

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    goto :goto_1

    #@98
    .line 212
    :pswitch_6
    const-string/jumbo v1, "HELD_BY_RESPONSE_AND_HOLD"

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    goto :goto_1

    #@9f
    .line 213
    :pswitch_7
    const-string/jumbo v1, "TERMINATED"

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    goto :goto_1

    #@a6
    .line 217
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@a8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@ab
    move-result v1

    #@ac
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v1

    #@b0
    goto :goto_2

    #@b1
    .line 205
    nop

    #@b2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 246
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@4
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@7
    .line 247
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 248
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    #@e
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 249
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 250
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 251
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@21
    if-eqz v0, :cond_0

    #@23
    move v0, v1

    #@24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 252
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@29
    if-eqz v0, :cond_1

    #@2b
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 245
    return-void

    #@2f
    :cond_0
    move v0, v2

    #@30
    .line 251
    goto :goto_0

    #@31
    :cond_1
    move v1, v2

    #@32
    .line 252
    goto :goto_1
.end method
