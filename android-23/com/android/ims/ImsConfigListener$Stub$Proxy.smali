.class Lcom/android/ims/ImsConfigListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ImsConfigListener.java"

# interfaces
.implements Lcom/android/ims/ImsConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfigListener$Stub;
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    iput-object p1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 101
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    const-string/jumbo v0, "com.android.ims.ImsConfigListener"

    #@3
    return-object v0
.end method

.method public onGetFeatureResponse(IIII)V
    .locals 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 127
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.ims.ImsConfigListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 130
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 131
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 132
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v2, 0x1

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 123
    return-void

    #@22
    .line 134
    :catchall_0
    move-exception v1

    #@23
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 134
    throw v1
.end method

.method public onGetVideoQuality(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.ims.ImsConfigListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 183
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x3

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 176
    return-void

    #@1c
    .line 185
    :catchall_0
    move-exception v1

    #@1d
    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 185
    throw v1
.end method

.method public onSetFeatureResponse(IIII)V
    .locals 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.ims.ImsConfigListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 160
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 161
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v2, 0x2

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 152
    return-void

    #@22
    .line 163
    :catchall_0
    move-exception v1

    #@23
    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 163
    throw v1
.end method

.method public onSetVideoQuality(I)V
    .locals 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.ims.ImsConfigListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 204
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 198
    return-void

    #@19
    .line 206
    :catchall_0
    move-exception v1

    #@1a
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 206
    throw v1
.end method
