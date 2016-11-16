.class Landroid/print/ILayoutResultCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILayoutResultCallback.java"

# interfaces
.implements Landroid/print/ILayoutResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/ILayoutResultCallback$Stub;
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
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    iput-object p1, p0, Landroid/print/ILayoutResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 106
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/print/ILayoutResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "android.print.ILayoutResultCallback"

    #@3
    return-object v0
.end method

.method public onLayoutCanceled(I)V
    .locals 5
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.ILayoutResultCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 176
    iget-object v1, p0, Landroid/print/ILayoutResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 170
    return-void

    #@19
    .line 178
    :catchall_0
    move-exception v1

    #@1a
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 178
    throw v1
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.print.ILayoutResultCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 156
    if-eqz p1, :cond_0

    #@c
    .line 157
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 158
    const/4 v1, 0x0

    #@11
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 163
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 164
    iget-object v1, p0, Landroid/print/ILayoutResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x3

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 151
    return-void

    #@23
    .line 161
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
    .line 166
    :catchall_0
    move-exception v1

    #@29
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 166
    throw v1
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V
    .locals 5
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;
    .param p2, "changed"    # Z
    .param p3, "sequence"    # I
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
    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.print.ILayoutResultCallback"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 136
    if-eqz p1, :cond_0

    #@e
    .line 137
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 138
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/print/PrintDocumentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 143
    :goto_0
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 144
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 145
    iget-object v1, p0, Landroid/print/ILayoutResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x2

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 131
    return-void

    #@2a
    .line 141
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 147
    :catchall_0
    move-exception v1

    #@30
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 147
    throw v1

    #@34
    :cond_1
    move v1, v2

    #@35
    .line 143
    goto :goto_1
.end method

.method public onLayoutStarted(Landroid/os/ICancellationSignal;I)V
    .locals 5
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.print.ILayoutResultCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 123
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 125
    iget-object v1, p0, Landroid/print/ILayoutResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 118
    return-void

    #@23
    .line 127
    :catchall_0
    move-exception v1

    #@24
    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 127
    throw v1
.end method
