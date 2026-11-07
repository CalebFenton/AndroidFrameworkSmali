.class public abstract Lcom/android/internal/app/IVoiceInteractor$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractor"

.field static final blacklist TRANSACTION_notifyDirectActionsChanged:I = 0x7

.field static final blacklist TRANSACTION_setKillCallback:I = 0x8

.field static final greylist-max-o TRANSACTION_startAbortVoice:I = 0x4

.field static final greylist-max-o TRANSACTION_startCommand:I = 0x5

.field static final greylist-max-o TRANSACTION_startCompleteVoice:I = 0x3

.field static final greylist-max-o TRANSACTION_startConfirmation:I = 0x1

.field static final greylist-max-o TRANSACTION_startPickOption:I = 0x2

.field static final greylist-max-o TRANSACTION_supportsCommands:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractor;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_24

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 114
    :pswitch_5
    const-string/jumbo v0, "setKillCallback"

    return-object v0

    .line 110
    :pswitch_9
    const-string v0, "notifyDirectActionsChanged"

    return-object v0

    .line 106
    :pswitch_c
    const-string/jumbo v0, "supportsCommands"

    return-object v0

    .line 102
    :pswitch_10
    const-string/jumbo v0, "startCommand"

    return-object v0

    .line 98
    :pswitch_14
    const-string/jumbo v0, "startAbortVoice"

    return-object v0

    .line 94
    :pswitch_18
    const-string/jumbo v0, "startCompleteVoice"

    return-object v0

    .line 90
    :pswitch_1c
    const-string/jumbo v0, "startPickOption"

    return-object v0

    .line 86
    :pswitch_20
    const-string/jumbo v0, "startConfirmation"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 445
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-string v6, "com.android.internal.app.IVoiceInteractor"

    .line 130
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 131
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 134
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return v7

    .line 137
    :cond_16
    packed-switch p1, :pswitch_data_136

    .line 255
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 247
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 248
    .local v1, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->setKillCallback(Landroid/os/ICancellationSignal;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto/16 :goto_134

    .line 236
    .end local v1    # "_arg0":Landroid/os/ICancellationSignal;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 239
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->notifyDirectActionsChanged(ILandroid/os/IBinder;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_134

    .line 224
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v3

    .line 229
    .local v3, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 231
    goto/16 :goto_134

    .line 208
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_result":[Z
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 212
    .local v2, "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 215
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v5

    .line 217
    .local v5, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 219
    goto/16 :goto_134

    .line 192
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 196
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v3, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 198
    .local v3, "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 199
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v5

    .line 201
    .restart local v5    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 203
    goto/16 :goto_134

    .line 176
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v3, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 182
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 183
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v5

    .line 185
    .restart local v5    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 187
    goto :goto_134

    .line 158
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v3, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 164
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v4, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 166
    .local v4, "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 167
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v8

    .line 169
    .local v8, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 171
    goto :goto_134

    .line 142
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v8    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 146
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v3, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 148
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 149
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v5

    .line 151
    .local v5, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 153
    nop

    .line 258
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :goto_134
    return v7

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_d7
        :pswitch_ad
        :pswitch_82
        :pswitch_5b
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
