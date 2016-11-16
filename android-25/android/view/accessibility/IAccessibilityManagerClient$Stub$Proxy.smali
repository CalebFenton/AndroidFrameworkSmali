.class Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityManagerClient.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 65
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 75
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityManagerClient"

    #@3
    return-object v0
.end method

.method public setState(I)V
    .locals 5
    .param p1, "stateFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityManagerClient"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 82
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 83
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 77
    return-void

    #@19
    .line 85
    :catchall_0
    move-exception v1

    #@1a
    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 85
    throw v1
.end method
