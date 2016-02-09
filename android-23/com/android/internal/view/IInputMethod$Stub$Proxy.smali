.class Lcom/android/internal/view/IInputMethod$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod$Stub;
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
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    iput-object p1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 189
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public attachToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 205
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 207
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 201
    return-void

    #@19
    .line 209
    :catchall_0
    move-exception v1

    #@1a
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 209
    throw v1
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 5
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 217
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 218
    if-eqz p1, :cond_0

    #@c
    .line 219
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 220
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputBinding;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 225
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x2

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 213
    return-void

    #@20
    .line 223
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
    .line 227
    :catchall_0
    move-exception v1

    #@26
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 227
    throw v1
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 367
    if-eqz p1, :cond_0

    #@c
    .line 368
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 369
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 374
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xb

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 362
    return-void

    #@21
    .line 372
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 376
    :catchall_0
    move-exception v1

    #@27
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 376
    throw v1
.end method

.method public createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 5
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 285
    if-eqz p1, :cond_1

    #@d
    .line 286
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 287
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 292
    :goto_0
    if-eqz p2, :cond_0

    #@17
    invoke-interface {p2}, Lcom/android/internal/view/IInputSessionCallback;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v1

    #@1b
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e
    .line 293
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x6

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 280
    return-void

    #@2a
    .line 290
    :cond_1
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 295
    :catchall_0
    move-exception v1

    #@30
    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 295
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 199
    const-string/jumbo v0, "com.android.internal.view.IInputMethod"

    #@3
    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 349
    if-eqz p2, :cond_0

    #@f
    .line 350
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 351
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 356
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0xa

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 343
    return-void

    #@24
    .line 354
    :cond_0
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 358
    :catchall_0
    move-exception v1

    #@2a
    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 358
    throw v1
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 265
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 266
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 267
    if-eqz p2, :cond_1

    #@16
    .line 268
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 269
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 274
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x5

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 261
    return-void

    #@2a
    .line 272
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
    .line 276
    :catchall_0
    move-exception v1

    #@30
    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 276
    throw v1
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 317
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodSession;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 318
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x8

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 312
    return-void

    #@21
    .line 320
    :catchall_0
    move-exception v1

    #@22
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 320
    throw v1
.end method

.method public setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "enabled"    # Z
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
    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 303
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethod"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 304
    if-eqz p1, :cond_0

    #@e
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodSession;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 305
    if-eqz p2, :cond_1

    #@17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 306
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x7

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 299
    return-void

    #@26
    .line 305
    :cond_1
    const/4 v1, 0x0

    #@27
    goto :goto_0

    #@28
    .line 308
    :catchall_0
    move-exception v1

    #@29
    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 308
    throw v1
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 330
    if-eqz p2, :cond_0

    #@f
    .line 331
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 332
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 337
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x9

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 324
    return-void

    #@24
    .line 335
    :cond_0
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 339
    :catchall_0
    move-exception v1

    #@2a
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 339
    throw v1
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 247
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 248
    if-eqz p2, :cond_1

    #@16
    .line 249
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 250
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 255
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 242
    return-void

    #@2a
    .line 253
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
    .line 257
    :catchall_0
    move-exception v1

    #@30
    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 257
    throw v1
.end method

.method public unbindInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 236
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x3

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 231
    return-void

    #@16
    .line 238
    :catchall_0
    move-exception v1

    #@17
    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 238
    throw v1
.end method
