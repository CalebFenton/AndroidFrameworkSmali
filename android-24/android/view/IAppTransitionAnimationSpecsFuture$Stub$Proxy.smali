.class Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppTransitionAnimationSpecsFuture.java"

# interfaces
.implements Landroid/view/IAppTransitionAnimationSpecsFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 64
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public get()[Landroid/view/AppTransitionAnimationSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 79
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 82
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IAppTransitionAnimationSpecsFuture"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 83
    iget-object v3, p0, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 85
    sget-object v3, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, [Landroid/view/AppTransitionAnimationSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 88
    .local v2, "_result":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 91
    return-object v2

    #@27
    .line 87
    .end local v2    # "_result":[Landroid/view/AppTransitionAnimationSpec;
    :catchall_0
    move-exception v3

    #@28
    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 87
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "android.view.IAppTransitionAnimationSpecsFuture"

    #@3
    return-object v0
.end method
