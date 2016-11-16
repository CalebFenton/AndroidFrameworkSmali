.class Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
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
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 153
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearAccessibilityCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 224
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 225
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x5

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 220
    return-void

    #@16
    .line 227
    :catchall_0
    move-exception v1

    #@17
    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 227
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 163
    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceClient"

    #@3
    return-object v0
.end method

.method public init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 169
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceClient"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 170
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 172
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 173
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x1

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 165
    return-void

    #@26
    .line 175
    :catchall_0
    move-exception v1

    #@27
    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 175
    throw v1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 183
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 184
    if-eqz p1, :cond_0

    #@c
    .line 185
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 186
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 191
    :goto_0
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 179
    return-void

    #@20
    .line 189
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
    .line 193
    :catchall_0
    move-exception v1

    #@26
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 193
    throw v1
.end method

.method public onGesture(I)V
    .locals 5
    .param p1, "gesture"    # I
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
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 214
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x4

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 208
    return-void

    #@19
    .line 216
    :catchall_0
    move-exception v1

    #@1a
    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 216
    throw v1
.end method

.method public onInterrupt()V
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
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 202
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I
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
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 236
    if-eqz p1, :cond_0

    #@c
    .line 237
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 238
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 243
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 244
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 231
    return-void

    #@23
    .line 241
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
    .line 246
    :catchall_0
    move-exception v1

    #@29
    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 246
    throw v1
.end method

.method public onMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 254
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 255
    if-eqz p1, :cond_0

    #@c
    .line 256
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 257
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 262
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@17
    .line 263
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    #@1a
    .line 264
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@1d
    .line 265
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x7

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 250
    return-void

    #@29
    .line 260
    :cond_0
    const/4 v1, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 267
    :catchall_0
    move-exception v1

    #@2f
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 267
    throw v1
.end method

.method public onPerformGestureResult(IZ)V
    .locals 5
    .param p1, "sequence"    # I
    .param p2, "completedSuccessfully"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceClient"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 289
    if-eqz p2, :cond_0

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 290
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x9

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 283
    return-void

    #@20
    .line 289
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0

    #@22
    .line 292
    :catchall_0
    move-exception v1

    #@23
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 292
    throw v1
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .locals 5
    .param p1, "showMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 277
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x8

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 271
    return-void

    #@1a
    .line 279
    :catchall_0
    move-exception v1

    #@1b
    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 279
    throw v1
.end method
