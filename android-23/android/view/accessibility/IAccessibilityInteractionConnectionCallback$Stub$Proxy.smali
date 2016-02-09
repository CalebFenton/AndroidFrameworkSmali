.class Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
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
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 92
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@3
    return-object v0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 115
    if-eqz p1, :cond_0

    #@c
    .line 116
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 117
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 122
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 123
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x1

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 110
    return-void

    #@23
    .line 120
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
    .line 125
    :catchall_0
    move-exception v1

    #@29
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 125
    throw v1
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 5
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 139
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 141
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 142
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x2

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 135
    return-void

    #@1c
    .line 144
    :catchall_0
    move-exception v1

    #@1d
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 144
    throw v1
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .locals 5
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 159
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 161
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 154
    return-void

    #@1f
    .line 159
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 163
    :catchall_0
    move-exception v1

    #@22
    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 163
    throw v1
.end method
