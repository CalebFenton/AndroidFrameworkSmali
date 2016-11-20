.class Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractorCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
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
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 147
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 145
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractorCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 222
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 223
    if-eqz p2, :cond_1

    #@16
    .line 224
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 225
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 230
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x4

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 217
    return-void

    #@2a
    .line 228
    :cond_1
    const/4 v1, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 232
    :catchall_0
    move-exception v1

    #@30
    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 232
    throw v1
.end method

.method public deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractorCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 261
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 262
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x6

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 256
    return-void

    #@20
    .line 264
    :catchall_0
    move-exception v1

    #@21
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 264
    throw v1
.end method

.method public deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractorCallback"

    #@a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 241
    if-eqz p1, :cond_0

    #@f
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 242
    if-eqz p2, :cond_1

    #@18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 243
    if-eqz p3, :cond_2

    #@1d
    .line 244
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 245
    const/4 v1, 0x0

    #@22
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 250
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v2, 0x5

    #@28
    const/4 v3, 0x0

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 236
    return-void

    #@31
    :cond_1
    move v1, v2

    #@32
    .line 242
    goto :goto_0

    #@33
    .line 248
    :cond_2
    const/4 v1, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_1

    #@38
    .line 252
    :catchall_0
    move-exception v1

    #@39
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 252
    throw v1
.end method

.method public deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractorCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 203
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 204
    if-eqz p2, :cond_1

    #@16
    .line 205
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 206
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 211
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x3

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 198
    return-void

    #@2a
    .line 209
    :cond_1
    const/4 v1, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 213
    :catchall_0
    move-exception v1

    #@30
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 213
    throw v1
.end method

.method public deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "confirmed"    # Z
    .param p3, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 161
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractorCallback"

    #@a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 162
    if-eqz p1, :cond_0

    #@f
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 163
    if-eqz p2, :cond_1

    #@18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 164
    if-eqz p3, :cond_2

    #@1d
    .line 165
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 166
    const/4 v1, 0x0

    #@22
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 171
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v2, 0x1

    #@28
    const/4 v3, 0x0

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 157
    return-void

    #@31
    :cond_1
    move v1, v2

    #@32
    .line 163
    goto :goto_0

    #@33
    .line 169
    :cond_2
    const/4 v1, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_1

    #@38
    .line 173
    :catchall_0
    move-exception v1

    #@39
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 173
    throw v1
.end method

.method public deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p4, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractorCallback"

    #@a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 182
    if-eqz p1, :cond_0

    #@f
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 183
    if-eqz p2, :cond_1

    #@18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 184
    const/4 v1, 0x0

    #@1c
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1f
    .line 185
    if-eqz p4, :cond_2

    #@21
    .line 186
    const/4 v1, 0x1

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 187
    const/4 v1, 0x0

    #@26
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    .line 192
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2b
    const/4 v2, 0x2

    #@2c
    const/4 v3, 0x0

    #@2d
    const/4 v4, 0x1

    #@2e
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 177
    return-void

    #@35
    :cond_1
    move v1, v2

    #@36
    .line 183
    goto :goto_0

    #@37
    .line 190
    :cond_2
    const/4 v1, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .line 194
    :catchall_0
    move-exception v1

    #@3d
    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 194
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractorCallback"

    #@3
    return-object v0
.end method
