.class public abstract Landroid/speech/IRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IRecognitionService.java"

# interfaces
.implements Landroid/speech/IRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionService"

.field static final greylist-max-o TRANSACTION_cancel:I = 0x3

.field static final blacklist TRANSACTION_checkRecognitionSupport:I = 0x4

.field static final greylist-max-o TRANSACTION_startListening:I = 0x1

.field static final greylist-max-o TRANSACTION_stopListening:I = 0x2

.field static final blacklist TRANSACTION_triggerModelDownload:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.speech.IRecognitionService"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    const-string v0, "android.speech.IRecognitionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/IRecognitionService;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/speech/IRecognitionService;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Landroid/speech/IRecognitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 110
    packed-switch p0, :pswitch_data_18

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 130
    :pswitch_5
    const-string/jumbo v0, "triggerModelDownload"

    return-object v0

    .line 126
    :pswitch_9
    const-string v0, "checkRecognitionSupport"

    return-object v0

    .line 122
    :pswitch_c
    const-string v0, "cancel"

    return-object v0

    .line 118
    :pswitch_f
    const-string/jumbo v0, "stopListening"

    return-object v0

    .line 114
    :pswitch_13
    const-string/jumbo v0, "startListening"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 344
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 141
    invoke-static {p1}, Landroid/speech/IRecognitionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 145
    const-string v0, "android.speech.IRecognitionService"

    .line 146
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_16
    packed-switch p1, :pswitch_data_9e

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 200
    :pswitch_1e
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 202
    .local v2, "_arg0":Landroid/content/Intent;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 204
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/speech/IModelDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IModelDownloadListener;

    move-result-object v4

    .line 205
    .local v4, "_arg2":Landroid/speech/IModelDownloadListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/IRecognitionService$Stub;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    .line 207
    goto :goto_9d

    .line 188
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Landroid/speech/IModelDownloadListener;
    :pswitch_3d
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 190
    .restart local v2    # "_arg0":Landroid/content/Intent;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 192
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/speech/IRecognitionSupportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionSupportCallback;

    move-result-object v4

    .line 193
    .local v4, "_arg2":Landroid/speech/IRecognitionSupportCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/IRecognitionService$Stub;->checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V

    .line 195
    goto :goto_9d

    .line 178
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Landroid/speech/IRecognitionSupportCallback;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v2

    .line 180
    .local v2, "_arg0":Landroid/speech/IRecognitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 181
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3}, Landroid/speech/IRecognitionService$Stub;->cancel(Landroid/speech/IRecognitionListener;Z)V

    .line 183
    goto :goto_9d

    .line 170
    .end local v2    # "_arg0":Landroid/speech/IRecognitionListener;
    .end local v3    # "_arg1":Z
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg0":Landroid/speech/IRecognitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionService$Stub;->stopListening(Landroid/speech/IRecognitionListener;)V

    .line 173
    goto :goto_9d

    .line 158
    .end local v2    # "_arg0":Landroid/speech/IRecognitionListener;
    :pswitch_7e
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 160
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v3

    .line 162
    .local v3, "_arg1":Landroid/speech/IRecognitionListener;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 163
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/IRecognitionService$Stub;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 165
    nop

    .line 214
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/speech/IRecognitionListener;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_6f
        :pswitch_5c
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method
