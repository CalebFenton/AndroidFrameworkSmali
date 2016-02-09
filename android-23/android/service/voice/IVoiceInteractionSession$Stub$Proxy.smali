.class Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractionSession.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionSession$Stub;
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
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 167
    iput-object p1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 165
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public closeSystemDialogs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 301
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x7

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 296
    return-void

    #@16
    .line 303
    :catchall_0
    move-exception v1

    #@17
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 303
    throw v1
.end method

.method public destroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 323
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x9

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 318
    return-void

    #@17
    .line 325
    :catchall_0
    move-exception v1

    #@18
    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 325
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@3
    return-object v0
.end method

.method public handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .locals 5
    .param p1, "assistData"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 213
    if-eqz p1, :cond_0

    #@c
    .line 214
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 215
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 220
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 221
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 222
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/app/assist/AssistStructure;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 227
    :goto_1
    if-eqz p3, :cond_2

    #@20
    .line 228
    const/4 v1, 0x1

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 229
    const/4 v1, 0x0

    #@25
    invoke-virtual {p3, v0, v1}, Landroid/app/assist/AssistContent;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 234
    :goto_2
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v2, 0x3

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x1

    #@2d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 208
    return-void

    #@34
    .line 218
    :cond_0
    const/4 v1, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 236
    :catchall_0
    move-exception v1

    #@3a
    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 236
    throw v1

    #@3e
    .line 225
    :cond_1
    const/4 v1, 0x0

    #@3f
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    goto :goto_1

    #@43
    .line 232
    :cond_2
    const/4 v1, 0x0

    #@44
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_2
.end method

.method public handleScreenshot(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 245
    if-eqz p1, :cond_0

    #@c
    .line 246
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 247
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 252
    :goto_0
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x4

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 240
    return-void

    #@20
    .line 250
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 254
    :catchall_0
    move-exception v1

    #@26
    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 254
    throw v1
.end method

.method public hide()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 202
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 197
    return-void

    #@16
    .line 204
    :catchall_0
    move-exception v1

    #@17
    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 204
    throw v1
.end method

.method public onLockscreenShown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 311
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 312
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x8

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 307
    return-void

    #@17
    .line 314
    :catchall_0
    move-exception v1

    #@18
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 314
    throw v1
.end method

.method public show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 5
    .param p1, "sessionArgs"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.voice.IVoiceInteractionSession"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 182
    if-eqz p1, :cond_1

    #@d
    .line 183
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 184
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 189
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 190
    if-eqz p3, :cond_0

    #@1a
    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 191
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v2, 0x1

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 177
    return-void

    #@2d
    .line 187
    :cond_1
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 193
    :catchall_0
    move-exception v1

    #@33
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 193
    throw v1
.end method

.method public taskFinished(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 282
    if-eqz p1, :cond_0

    #@c
    .line 283
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 284
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 289
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 290
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x6

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 277
    return-void

    #@23
    .line 287
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 292
    :catchall_0
    move-exception v1

    #@29
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 292
    throw v1
.end method

.method public taskStarted(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 263
    if-eqz p1, :cond_0

    #@c
    .line 264
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 265
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 270
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 271
    iget-object v1, p0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x5

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 258
    return-void

    #@23
    .line 268
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 273
    :catchall_0
    move-exception v1

    #@29
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 273
    throw v1
.end method
