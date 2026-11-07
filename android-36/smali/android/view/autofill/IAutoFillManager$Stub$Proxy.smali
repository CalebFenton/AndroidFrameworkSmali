.class Landroid/view/autofill/IAutoFillManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAutoFillManager.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 632
    return-void
.end method


# virtual methods
.method public blacklist addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V
    .registers 10
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "result"    # Lcom/android/internal/os/IResultReceiver;
    .param p5, "credmanRequested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 646
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 648
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 649
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 651
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 652
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_29

    .line 655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    nop

    .line 657
    return-void

    .line 655
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 635
    iget-object v0, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o cancelSession(II)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 785
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 792
    nop

    .line 793
    return-void

    .line 791
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 792
    throw v1
.end method

.method public greylist-max-o disableOwnedAutofillServices(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 827
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 833
    nop

    .line 834
    return-void

    .line 832
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 833
    throw v1
.end method

.method public blacklist finishSession(III)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "commitReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 771
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 779
    nop

    .line 780
    return-void

    .line 778
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 779
    throw v1
.end method

.method public blacklist getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 927
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 929
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 933
    nop

    .line 934
    return-void

    .line 932
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 933
    throw v1
.end method

.method public blacklist getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 939
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 941
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    nop

    .line 946
    return-void

    .line 944
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    throw v1
.end method

.method public blacklist getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 951
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 953
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 957
    nop

    .line 958
    return-void

    .line 956
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 957
    throw v1
.end method

.method public blacklist getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 697
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 699
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 639
    const-string v0, "android.view.autofill.IAutoFillManager"

    return-object v0
.end method

.method public blacklist getUserData(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 879
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 881
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    nop

    .line 886
    return-void

    .line 884
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    throw v1
.end method

.method public blacklist getUserDataId(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 891
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 893
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    nop

    .line 898
    return-void

    .line 896
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    throw v1
.end method

.method public blacklist isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 915
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 917
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 921
    nop

    .line 922
    return-void

    .line 920
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 921
    throw v1
.end method

.method public blacklist isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 856
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 860
    nop

    .line 861
    return-void

    .line 859
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 860
    throw v1
.end method

.method public blacklist isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 839
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 842
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    nop

    .line 847
    return-void

    .line 845
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    throw v1
.end method

.method public blacklist notifyImeAnimationEnd(IJI)V
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "endTimeMs"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1031
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1034
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1039
    nop

    .line 1040
    return-void

    .line 1038
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1039
    throw v1
.end method

.method public blacklist notifyImeAnimationStart(IJI)V
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1017
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1020
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1025
    nop

    .line 1026
    return-void

    .line 1024
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1025
    throw v1
.end method

.method public blacklist notifyNotExpiringResponseDuringAuth(II)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 977
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    nop

    .line 985
    return-void

    .line 983
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    throw v1
.end method

.method public blacklist notifyViewEnteredIgnoredDuringAuthCount(II)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 990
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    nop

    .line 998
    return-void

    .line 996
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    throw v1
.end method

.method public greylist-max-o onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 8
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 866
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 869
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    nop

    .line 874
    return-void

    .line 872
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    throw v1
.end method

.method public greylist-max-o removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 8
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 662
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 664
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 669
    nop

    .line 670
    return-void

    .line 668
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 669
    throw v1
.end method

.method public blacklist restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "appCallback"    # Landroid/os/IBinder;
    .param p4, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 709
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 712
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 713
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 714
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    nop

    .line 719
    return-void

    .line 717
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    throw v1
.end method

.method public blacklist setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V
    .registers 9
    .param p3, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/internal/os/IResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 963
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 965
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 966
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 967
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    nop

    .line 972
    return-void

    .line 970
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    throw v1
.end method

.method public greylist-max-o setAuthenticationResult(Landroid/os/Bundle;III)V
    .registers 10
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "sessionId"    # I
    .param p3, "authenticationId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 798
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 799
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 800
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    nop

    .line 808
    return-void

    .line 806
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    throw v1
.end method

.method public blacklist setAutofillFailure(ILjava/util/List;ZI)V
    .registers 10
    .param p1, "sessionId"    # I
    .param p3, "isRefill"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 742
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 745
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 746
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    throw v1
.end method

.method public blacklist setAutofillIdsAttemptedForRefill(ILjava/util/List;I)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1001
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1003
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1006
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1011
    nop

    .line 1012
    return-void

    .line 1010
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1011
    throw v1
.end method

.method public greylist-max-o setHasCallback(IIZ)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "hasIt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 813
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 817
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    nop

    .line 822
    return-void

    .line 820
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    throw v1
.end method

.method public greylist-max-o setUserData(Landroid/service/autofill/UserData;)V
    .registers 7
    .param p1, "userData"    # Landroid/service/autofill/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 903
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 904
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 905
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    nop

    .line 910
    return-void

    .line 908
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    throw v1
.end method

.method public blacklist setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 760
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 765
    nop

    .line 766
    return-void

    .line 764
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 765
    throw v1
.end method

.method public blacklist startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V
    .registers 28
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "appCallback"    # Landroid/os/IBinder;
    .param p3, "autoFillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "value"    # Landroid/view/autofill/AutofillValue;
    .param p6, "userId"    # I
    .param p7, "hasCallback"    # Z
    .param p8, "flags"    # I
    .param p9, "componentName"    # Landroid/content/ComponentName;
    .param p10, "compatMode"    # Z
    .param p11, "result"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 675
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 676
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_7e

    .line 677
    move-object/from16 v3, p2

    :try_start_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_7a

    .line 678
    const/4 v0, 0x0

    move-object/from16 v4, p3

    :try_start_1a
    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_76

    .line 679
    move-object/from16 v5, p4

    :try_start_1f
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_72

    .line 680
    move-object/from16 v6, p5

    :try_start_24
    invoke-virtual {v1, v6, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_6e

    .line 681
    move/from16 v7, p6

    :try_start_29
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_6a

    .line 682
    move/from16 v8, p7

    :try_start_2e
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_66

    .line 683
    move/from16 v9, p8

    :try_start_33
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_62

    .line 684
    move-object/from16 v10, p9

    :try_start_38
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_5e

    .line 685
    move/from16 v11, p10

    :try_start_3d
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_5a

    .line 686
    move-object/from16 v12, p11

    :try_start_42
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_56

    .line 687
    move-object/from16 v13, p0

    :try_start_47
    iget-object v0, v13, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1, v14, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_54

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    nop

    .line 692
    return-void

    .line 690
    :catchall_54
    move-exception v0

    goto :goto_95

    :catchall_56
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_95

    :catchall_5a
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_93

    :catchall_5e
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_91

    :catchall_62
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_8f

    :catchall_66
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_8d

    :catchall_6a
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_8b

    :catchall_6e
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_89

    :catchall_72
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_87

    :catchall_76
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_85

    :catchall_7a
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_83

    :catchall_7e
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v3, p2

    :goto_83
    move-object/from16 v4, p3

    :goto_85
    move-object/from16 v5, p4

    :goto_87
    move-object/from16 v6, p5

    :goto_89
    move/from16 v7, p6

    :goto_8b
    move/from16 v8, p7

    :goto_8d
    move/from16 v9, p8

    :goto_8f
    move-object/from16 v10, p9

    :goto_91
    move/from16 v11, p10

    :goto_93
    move-object/from16 v12, p11

    :goto_95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    throw v0
.end method

.method public greylist-max-o updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .registers 13
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "value"    # Landroid/view/autofill/AutofillValue;
    .param p5, "action"    # I
    .param p6, "flags"    # I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 724
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.autofill.IAutoFillManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 727
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 728
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 729
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-object v1, p0, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_30

    .line 735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 736
    nop

    .line 737
    return-void

    .line 735
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 736
    throw v1
.end method
