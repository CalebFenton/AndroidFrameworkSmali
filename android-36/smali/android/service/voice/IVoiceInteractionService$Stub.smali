.class public abstract Landroid/service/voice/IVoiceInteractionService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionService.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionService"

.field static final blacklist TRANSACTION_detectorRemoteExceptionOccurred:I = 0x8

.field static final blacklist TRANSACTION_getActiveServiceSupportedActions:I = 0x5

.field static final greylist-max-o TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x4

.field static final blacklist TRANSACTION_prepareToShowSession:I = 0x6

.field static final greylist-max-o TRANSACTION_ready:I = 0x1

.field static final blacklist TRANSACTION_showSessionFailed:I = 0x7

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x3

.field static final greylist-max-o TRANSACTION_soundModelsChanged:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.service.voice.IVoiceInteractionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionService;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IVoiceInteractionService;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_24

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_5
    const-string v0, "detectorRemoteExceptionOccurred"

    return-object v0

    .line 104
    :pswitch_8
    const-string/jumbo v0, "showSessionFailed"

    return-object v0

    .line 100
    :pswitch_c
    const-string/jumbo v0, "prepareToShowSession"

    return-object v0

    .line 96
    :pswitch_10
    const-string v0, "getActiveServiceSupportedActions"

    return-object v0

    .line 92
    :pswitch_13
    const-string/jumbo v0, "launchVoiceAssistFromKeyguard"

    return-object v0

    .line 88
    :pswitch_17
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 84
    :pswitch_1b
    const-string/jumbo v0, "soundModelsChanged"

    return-object v0

    .line 80
    :pswitch_1f
    const-string/jumbo v0, "ready"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 322
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Landroid/service/voice/IVoiceInteractionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const-string v0, "android.service.voice.IVoiceInteractionService"

    .line 124
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_16
    packed-switch p1, :pswitch_data_74

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 184
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 186
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->detectorRemoteExceptionOccurred(Landroid/os/IBinder;I)V

    .line 189
    goto :goto_72

    .line 176
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_2d
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 177
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Landroid/service/voice/IVoiceInteractionService$Stub;->showSessionFailed(Landroid/os/Bundle;)V

    .line 179
    goto :goto_72

    .line 166
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_3c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 168
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->prepareToShowSession(Landroid/os/Bundle;I)V

    .line 171
    goto :goto_72

    .line 156
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 158
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceActionCheckCallback;

    move-result-object v3

    .line 159
    .local v3, "_arg1":Lcom/android/internal/app/IVoiceActionCheckCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    .line 161
    goto :goto_72

    .line 150
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Lcom/android/internal/app/IVoiceActionCheckCallback;
    :pswitch_62
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->launchVoiceAssistFromKeyguard()V

    .line 151
    goto :goto_72

    .line 145
    :pswitch_66
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->shutdown()V

    .line 146
    goto :goto_72

    .line 140
    :pswitch_6a
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->soundModelsChanged()V

    .line 141
    goto :goto_72

    .line 135
    :pswitch_6e
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->ready()V

    .line 136
    nop

    .line 196
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_4f
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
