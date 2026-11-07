.class public abstract Lcom/android/internal/telecom/ICallDiagnosticService$Stub;
.super Landroid/os/Binder;
.source "ICallDiagnosticService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callQualityChanged:I = 0x7

.field static final blacklist TRANSACTION_initializeDiagnosticCall:I = 0x2

.field static final blacklist TRANSACTION_notifyCallDisconnected:I = 0x9

.field static final blacklist TRANSACTION_receiveBluetoothCallQualityReport:I = 0x8

.field static final blacklist TRANSACTION_receiveDeviceToDeviceMessage:I = 0x6

.field static final blacklist TRANSACTION_removeDiagnosticCall:I = 0x5

.field static final blacklist TRANSACTION_setAdapter:I = 0x1

.field static final blacklist TRANSACTION_updateCall:I = 0x3

.field static final blacklist TRANSACTION_updateCallAudioState:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallDiagnosticService;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallDiagnosticService;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_26

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_5
    const-string v0, "notifyCallDisconnected"

    return-object v0

    .line 115
    :pswitch_8
    const-string/jumbo v0, "receiveBluetoothCallQualityReport"

    return-object v0

    .line 111
    :pswitch_c
    const-string v0, "callQualityChanged"

    return-object v0

    .line 107
    :pswitch_f
    const-string/jumbo v0, "receiveDeviceToDeviceMessage"

    return-object v0

    .line 103
    :pswitch_13
    const-string/jumbo v0, "removeDiagnosticCall"

    return-object v0

    .line 99
    :pswitch_17
    const-string/jumbo v0, "updateCallAudioState"

    return-object v0

    .line 95
    :pswitch_1b
    const-string/jumbo v0, "updateCall"

    return-object v0

    .line 91
    :pswitch_1f
    const-string v0, "initializeDiagnosticCall"

    return-object v0

    .line 87
    :pswitch_22
    const-string/jumbo v0, "setAdapter"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 371
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_16
    packed-switch p1, :pswitch_data_b0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 217
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/DisconnectCause;

    .line 220
    .local v3, "_arg1":Landroid/telecom/DisconnectCause;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 222
    goto/16 :goto_ae

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/DisconnectCause;
    :pswitch_32
    sget-object v2, Landroid/telecom/BluetoothCallQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/BluetoothCallQualityReport;

    .line 210
    .local v2, "_arg0":Landroid/telecom/BluetoothCallQualityReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    .line 212
    goto :goto_ae

    .line 199
    .end local v2    # "_arg0":Landroid/telecom/BluetoothCallQualityReport;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CallQuality;

    .line 202
    .local v3, "_arg1":Landroid/telephony/CallQuality;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    .line 204
    goto :goto_ae

    .line 187
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/CallQuality;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 192
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 194
    goto :goto_ae

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->removeDiagnosticCall(Ljava/lang/String;)V

    .line 182
    goto :goto_ae

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_72
    sget-object v2, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 172
    .local v2, "_arg0":Landroid/telecom/CallAudioState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 174
    goto :goto_ae

    .line 163
    .end local v2    # "_arg0":Landroid/telecom/CallAudioState;
    :pswitch_81
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 164
    .local v2, "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    .line 166
    goto :goto_ae

    .line 155
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_90
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 156
    .restart local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V

    .line 158
    goto :goto_ae

    .line 147
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    move-result-object v2

    .line 148
    .local v2, "_arg0":Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    .line 150
    nop

    .line 229
    .end local v2    # "_arg0":Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    :goto_ae
    return v1

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_90
        :pswitch_81
        :pswitch_72
        :pswitch_67
        :pswitch_54
        :pswitch_41
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
