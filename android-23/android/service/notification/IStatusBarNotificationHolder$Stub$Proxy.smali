.class Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBarNotificationHolder.java"

# interfaces
.implements Landroid/service/notification/IStatusBarNotificationHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IStatusBarNotificationHolder$Stub;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 66
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public get()Landroid/service/notification/StatusBarNotification;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 82
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 85
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.notification.IStatusBarNotificationHolder"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 86
    iget-object v3, p0, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 89
    sget-object v3, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 96
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 99
    return-object v2

    #@2d
    .line 92
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/service/notification/StatusBarNotification;
    goto :goto_0

    #@2f
    .line 95
    .end local v2    # "_result":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v3

    #@30
    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 95
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "android.service.notification.IStatusBarNotificationHolder"

    #@3
    return-object v0
.end method
