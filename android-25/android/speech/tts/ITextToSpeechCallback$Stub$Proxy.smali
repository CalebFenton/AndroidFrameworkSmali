.class Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITextToSpeechCallback.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 116
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    const-string/jumbo v0, "android.speech.tts.ITextToSpeechCallback"

    #@3
    return-object v0
.end method

.method public onAudioAvailable(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "audio"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.speech.tts.ITextToSpeechCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 250
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@10
    .line 251
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x6

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 244
    return-void

    #@1c
    .line 253
    :catchall_0
    move-exception v1

    #@1d
    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 253
    throw v1
.end method

.method public onBeginSynthesis(Ljava/lang/String;III)V
    .locals 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.speech.tts.ITextToSpeechCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 223
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 224
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 225
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 226
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v2, 0x5

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 217
    return-void

    #@22
    .line 228
    :catchall_0
    move-exception v1

    #@23
    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 228
    throw v1
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 191
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.speech.tts.ITextToSpeechCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 194
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x4

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 187
    return-void

    #@1c
    .line 196
    :catchall_0
    move-exception v1

    #@1d
    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 196
    throw v1
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 137
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.speech.tts.ITextToSpeechCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 139
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x1

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 133
    return-void

    #@19
    .line 141
    :catchall_0
    move-exception v1

    #@1a
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 141
    throw v1
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.speech.tts.ITextToSpeechCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 173
    if-eqz p2, :cond_0

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 174
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x3

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 167
    return-void

    #@1f
    .line 173
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 176
    :catchall_0
    move-exception v1

    #@22
    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 176
    throw v1
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.speech.tts.ITextToSpeechCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 156
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 150
    return-void

    #@19
    .line 158
    :catchall_0
    move-exception v1

    #@1a
    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 158
    throw v1
.end method
