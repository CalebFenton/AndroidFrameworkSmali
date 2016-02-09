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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 205
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;-><init>()V

    #@5
    .line 204
    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@5
    .line 77
    iput p2, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@7
    .line 78
    iput p3, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@9
    .line 79
    if-eqz p4, :cond_0

    #@b
    .end local p4    # "number":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@d
    .line 80
    iput-boolean p5, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@f
    .line 81
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@11
    .line 75
    return-void

    #@12
    .line 79
    .restart local p4    # "number":Ljava/lang/String;
    :cond_0
    const-string/jumbo p4, ""

    #@15
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 231
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@2
    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@2
    return v0
.end method

.method public isMultiParty()Z
    .locals 1

    #@0
    .prologue
    .line 161
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@2
    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    #@0
    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@2
    return v0
.end method

.method public setMultiParty(Z)V
    .locals 0
    .param p1, "multiParty"    # Z

    #@0
    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@2
    .line 114
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@2
    .line 102
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 92
    iput p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@2
    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "BluetoothHeadsetClientCall{mDevice: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d
    .line 177
    const-string/jumbo v1, ", mId: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 178
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    .line 179
    const-string/jumbo v1, ", mState: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 180
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@20
    packed-switch v1, :pswitch_data_0

    #@23
    .line 189
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 191
    :goto_0
    const-string/jumbo v1, ", mNumber: "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 192
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 193
    const-string/jumbo v1, ", mMultiParty: "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 194
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3e
    .line 195
    const-string/jumbo v1, ", mOutgoing: "

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 196
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    .line 197
    const-string/jumbo v1, "}"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    return-object v1

    #@54
    .line 181
    :pswitch_0
    const-string/jumbo v1, "ACTIVE"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_0

    #@5b
    .line 182
    :pswitch_1
    const-string/jumbo v1, "HELD"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    goto :goto_0

    #@62
    .line 183
    :pswitch_2
    const-string/jumbo v1, "DIALING"

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    goto :goto_0

    #@69
    .line 184
    :pswitch_3
    const-string/jumbo v1, "ALERTING"

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    goto :goto_0

    #@70
    .line 185
    :pswitch_4
    const-string/jumbo v1, "INCOMING"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    goto :goto_0

    #@77
    .line 186
    :pswitch_5
    const-string/jumbo v1, "WAITING"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    goto :goto_0

    #@7e
    .line 187
    :pswitch_6
    const-string/jumbo v1, "HELD_BY_RESPONSE_AND_HOLD"

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_0

    #@85
    .line 188
    :pswitch_7
    const-string/jumbo v1, "TERMINATED"

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_0

    #@8c
    .line 180
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
    .line 221
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@4
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@7
    .line 222
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 223
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 224
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 225
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    move v0, v1

    #@1b
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 226
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    #@20
    if-eqz v0, :cond_1

    #@22
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 220
    return-void

    #@26
    :cond_0
    move v0, v2

    #@27
    .line 225
    goto :goto_0

    #@28
    :cond_1
    move v1, v2

    #@29
    .line 226
    goto :goto_1
.end method
