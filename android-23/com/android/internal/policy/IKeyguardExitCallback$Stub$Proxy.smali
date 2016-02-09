.class Lcom/android/internal/policy/IKeyguardExitCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyguardExitCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardExitCallback$Stub;
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/IKeyguardExitCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 59
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardExitCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardExitCallback"

    #@3
    return-object v0
.end method

.method public onKeyguardExitResult(Z)V
    .locals 5
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 75
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardExitCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 76
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardExitCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 80
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 71
    return-void

    #@1c
    .line 76
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 79
    :catchall_0
    move-exception v1

    #@1f
    .line 80
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 79
    throw v1
.end method
