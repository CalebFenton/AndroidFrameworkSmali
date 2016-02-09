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
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 188
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
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 183
    return-void

    #@16
    .line 190
    :catchall_0
    move-exception v1

    #@17
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 190
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
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
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceClient"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 133
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 135
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 136
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
    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 128
    return-void

    #@26
    .line 138
    :catchall_0
    move-exception v1

    #@27
    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 138
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
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 147
    if-eqz p1, :cond_0

    #@c
    .line 148
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 149
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 154
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
    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 142
    return-void

    #@20
    .line 152
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
    .line 156
    :catchall_0
    move-exception v1

    #@26
    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 156
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
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 177
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
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 171
    return-void

    #@19
    .line 179
    :catchall_0
    move-exception v1

    #@1a
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 179
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
    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 165
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
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 160
    return-void

    #@16
    .line 167
    :catchall_0
    move-exception v1

    #@17
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 167
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
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 199
    if-eqz p1, :cond_0

    #@c
    .line 200
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 201
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 206
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 207
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
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 194
    return-void

    #@23
    .line 204
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
    .line 209
    :catchall_0
    move-exception v1

    #@29
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 209
    throw v1
.end method
