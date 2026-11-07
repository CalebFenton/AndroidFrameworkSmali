.class public abstract Lcom/android/internal/telecom/ICallControl$Stub;
.super Landroid/os/Binder;
.source "ICallControl.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_answer:I = 0x2

.field static final blacklist TRANSACTION_disconnect:I = 0x4

.field static final blacklist TRANSACTION_requestCallEndpointChange:I = 0x6

.field static final blacklist TRANSACTION_requestVideoState:I = 0x9

.field static final blacklist TRANSACTION_sendEvent:I = 0x8

.field static final blacklist TRANSACTION_setActive:I = 0x1

.field static final blacklist TRANSACTION_setInactive:I = 0x3

.field static final blacklist TRANSACTION_setMuteState:I = 0x7

.field static final blacklist TRANSACTION_startCallStreaming:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "com.android.internal.telecom.ICallControl"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallControl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallControl;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallControl;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallControl$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_28

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string/jumbo v0, "requestVideoState"

    return-object v0

    .line 111
    :pswitch_9
    const-string/jumbo v0, "sendEvent"

    return-object v0

    .line 107
    :pswitch_d
    const-string/jumbo v0, "setMuteState"

    return-object v0

    .line 103
    :pswitch_11
    const-string/jumbo v0, "requestCallEndpointChange"

    return-object v0

    .line 99
    :pswitch_15
    const-string/jumbo v0, "startCallStreaming"

    return-object v0

    .line 95
    :pswitch_19
    const-string v0, "disconnect"

    return-object v0

    .line 91
    :pswitch_1c
    const-string/jumbo v0, "setInactive"

    return-object v0

    .line 87
    :pswitch_20
    const-string v0, "answer"

    return-object v0

    .line 83
    :pswitch_23
    const-string/jumbo v0, "setActive"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 394
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Lcom/android/internal/telecom/ICallControl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const-string v0, "com.android.internal.telecom.ICallControl"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_16
    packed-switch p1, :pswitch_data_e6

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 229
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 234
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallControl$Stub;->requestVideoState(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 236
    goto/16 :goto_e4

    .line 217
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 222
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallControl$Stub;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    goto/16 :goto_e4

    .line 207
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 209
    .local v2, "_arg0":Z
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 210
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallControl$Stub;->setMuteState(ZLandroid/os/ResultReceiver;)V

    .line 212
    goto/16 :goto_e4

    .line 197
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_62
    sget-object v2, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallEndpoint;

    .line 199
    .local v2, "_arg0":Landroid/telecom/CallEndpoint;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 200
    .restart local v3    # "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallControl$Stub;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;)V

    .line 202
    goto :goto_e4

    .line 187
    .end local v2    # "_arg0":Landroid/telecom/CallEndpoint;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 190
    .restart local v3    # "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallControl$Stub;->startCallStreaming(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 192
    goto :goto_e4

    .line 175
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/DisconnectCause;

    .line 179
    .local v3, "_arg1":Landroid/telecom/DisconnectCause;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 180
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallControl$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V

    .line 182
    goto :goto_e4

    .line 165
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/DisconnectCause;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 168
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallControl$Stub;->setInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 170
    goto :goto_e4

    .line 153
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 158
    .restart local v4    # "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallControl$Stub;->answer(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 160
    goto :goto_e4

    .line 143
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 146
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallControl$Stub;->setActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 148
    nop

    .line 243
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :goto_e4
    return v1

    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_ba
        :pswitch_a7
        :pswitch_8c
        :pswitch_79
        :pswitch_62
        :pswitch_4e
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
