.class Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager$Stub;
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
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 467
    iput-object p1, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 465
    return-void
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 583
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 584
    if-eqz p2, :cond_0

    #@1a
    invoke-interface {p2}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 585
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 586
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 587
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v3, 0x6

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 577
    return-void

    #@38
    :cond_1
    move-object v3, v2

    #@39
    .line 583
    goto :goto_0

    #@3a
    .line 590
    :catchall_0
    move-exception v2

    #@3b
    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 590
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 645
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 648
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 649
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 642
    return-void

    #@2a
    .line 652
    :catchall_0
    move-exception v2

    #@2b
    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 652
    throw v2
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 931
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 932
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x17

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 935
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 942
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 945
    return-object v2

    #@2e
    .line 938
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    #@30
    .line 941
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :catchall_0
    move-exception v3

    #@31
    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 941
    throw v3
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 505
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 507
    sget-object v3, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 510
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 513
    return-object v2

    #@25
    .line 509
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 509
    throw v3
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 523
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 524
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x3

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 525
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 526
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v2

    #@28
    .line 529
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 532
    return-object v2

    #@2f
    .line 528
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_0
    move-exception v3

    #@30
    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 528
    throw v3
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 486
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 488
    sget-object v3, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 491
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 494
    return-object v2

    #@25
    .line 490
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 490
    throw v3
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1068
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1e

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1070
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1073
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1076
    return v2

    #@24
    .line 1072
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1072
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 475
    const-string/jumbo v0, "com.android.internal.view.IInputMethodManager"

    #@3
    return-object v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 541
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 544
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 551
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 554
    return-object v2

    #@2d
    .line 547
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    #@2f
    .line 550
    .end local v2    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :catchall_0
    move-exception v3

    #@30
    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 550
    throw v3
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 566
    iget-object v4, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v5, 0x5

    #@11
    const/4 v6, 0x0

    #@12
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 568
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v3

    #@20
    .line 569
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 572
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 575
    return-object v2

    #@2b
    .line 571
    .end local v2    # "_result":Ljava/util/List;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v4

    #@2c
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 571
    throw v4
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 823
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 824
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 825
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 826
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x11

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 818
    return-void

    #@26
    .line 829
    :catchall_0
    move-exception v2

    #@27
    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 829
    throw v2
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 690
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 691
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 692
    if-eqz p3, :cond_1

    #@1d
    .line 693
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 694
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 699
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0xb

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 701
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    const/4 v2, 0x1

    #@37
    .line 704
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 707
    return v2

    #@3e
    .line 697
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 703
    :catchall_0
    move-exception v3

    #@44
    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 703
    throw v3

    #@4b
    .line 701
    :cond_2
    const/4 v2, 0x0

    #@4c
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 905
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 906
    if-eqz p1, :cond_0

    #@10
    .line 907
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 908
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/text/style/SuggestionSpan;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 913
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 914
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 915
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x16

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    const/4 v2, 0x1

    #@30
    .line 920
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 923
    return v2

    #@37
    .line 911
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 919
    :catchall_0
    move-exception v3

    #@3d
    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 919
    throw v3

    #@44
    .line 917
    :cond_1
    const/4 v2, 0x0

    #@45
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public notifyUserAction(I)V
    .locals 5
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1082
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethodManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1083
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1084
    iget-object v1, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x1f

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1078
    return-void

    #@1a
    .line 1086
    :catchall_0
    move-exception v1

    #@1b
    .line 1087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 1086
    throw v1
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 5
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 890
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 891
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v3, 0x15

    #@16
    const/4 v4, 0x0

    #@17
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 884
    return-void

    #@24
    .line 894
    :catchall_0
    move-exception v2

    #@25
    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 894
    throw v2
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 601
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 602
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 595
    return-void

    #@29
    .line 605
    :catchall_0
    move-exception v2

    #@2a
    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 605
    throw v2
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1051
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1052
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@15
    .line 1053
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x1d

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1045
    return-void

    #@27
    .line 1056
    :catchall_0
    move-exception v2

    #@28
    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1056
    throw v2
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 954
    if-eqz p1, :cond_0

    #@10
    .line 955
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 956
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 961
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x18

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 966
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 969
    return v2

    #@31
    .line 959
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 965
    :catchall_0
    move-exception v3

    #@37
    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 965
    throw v3

    #@3e
    .line 963
    :cond_1
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 875
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 876
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x14

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 867
    return-void

    #@29
    .line 879
    :catchall_0
    move-exception v2

    #@2a
    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 879
    throw v2
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 786
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 787
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xf

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 779
    return-void

    #@26
    .line 790
    :catchall_0
    move-exception v2

    #@27
    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 790
    throw v2
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 802
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 803
    if-eqz p3, :cond_0

    #@16
    .line 804
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 805
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p3, v0, v2}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 810
    :goto_0
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x10

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 795
    return-void

    #@30
    .line 808
    :cond_0
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 813
    :catchall_0
    move-exception v2

    #@36
    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 813
    throw v2
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1033
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1034
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1035
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x1c

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1037
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 1040
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1043
    return v2

    #@31
    .line 1037
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@32
    .restart local v2    # "_result":Z
    goto :goto_0

    #@33
    .line 1039
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@34
    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1039
    throw v3
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1014
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1016
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1b

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1021
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1024
    return v2

    #@2a
    .line 1018
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1020
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1020
    throw v3
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "topId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 768
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 769
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 770
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 771
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xe

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 763
    return-void

    #@2d
    .line 774
    :catchall_0
    move-exception v2

    #@2e
    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 774
    throw v2
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 753
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 755
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xd

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 747
    return-void

    #@2d
    .line 758
    :catchall_0
    move-exception v2

    #@2e
    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 758
    throw v2
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 842
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x12

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 834
    return-void

    #@26
    .line 845
    :catchall_0
    move-exception v2

    #@27
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 845
    throw v2
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 660
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 664
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 666
    if-eqz p3, :cond_1

    #@1d
    .line 667
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 668
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 673
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0xa

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 674
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    const/4 v2, 0x1

    #@37
    .line 678
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 681
    return v2

    #@3e
    .line 671
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 677
    :catchall_0
    move-exception v3

    #@44
    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 677
    throw v3

    #@4b
    .line 675
    :cond_2
    const/4 v2, 0x0

    #@4c
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 617
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 618
    if-eqz p2, :cond_0

    #@1a
    invoke-interface {p2}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 619
    if-eqz p3, :cond_2

    #@23
    .line 620
    const/4 v3, 0x1

    #@24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 621
    const/4 v3, 0x0

    #@28
    invoke-virtual {p3, v0, v3}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 626
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 627
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/16 v4, 0x8

    #@32
    const/4 v5, 0x0

    #@33
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@39
    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_3

    #@3f
    .line 630
    sget-object v3, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 637
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 640
    return-object v2

    #@4e
    :cond_1
    move-object v4, v3

    #@4f
    .line 617
    goto :goto_0

    #@50
    .line 624
    :cond_2
    const/4 v3, 0x0

    #@51
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    goto :goto_1

    #@55
    .line 636
    :catchall_0
    move-exception v3

    #@56
    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5c
    .line 636
    throw v3

    #@5d
    .line 633
    :cond_3
    const/4 v2, 0x0

    #@5e
    .local v2, "_result":Lcom/android/internal/view/InputBindResult;
    goto :goto_2
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 974
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 979
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x19

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 984
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 987
    return v2

    #@2a
    .line 981
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 983
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 983
    throw v3
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 992
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 997
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 998
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x1a

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 1003
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1006
    return v2

    #@31
    .line 1000
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@32
    .restart local v2    # "_result":Z
    goto :goto_0

    #@33
    .line 1002
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@34
    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1002
    throw v3
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 855
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethodManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 858
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 859
    iget-object v2, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x13

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 850
    return-void

    #@29
    .line 862
    :catchall_0
    move-exception v2

    #@2a
    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 862
    throw v2
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "controlFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 719
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 720
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 721
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 722
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 723
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 724
    if-eqz p6, :cond_2

    #@26
    .line 725
    const/4 v4, 0x1

    #@27
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 726
    const/4 v4, 0x0

    #@2b
    invoke-virtual {p6, v0, v4}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 731
    :goto_1
    if-eqz p7, :cond_0

    #@30
    invoke-interface {p7}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    #@33
    move-result-object v3

    #@34
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@37
    .line 732
    iget-object v3, p0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@39
    const/16 v4, 0xc

    #@3b
    const/4 v5, 0x0

    #@3c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3f
    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@42
    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_3

    #@48
    .line 735
    sget-object v3, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 742
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 745
    return-object v2

    #@57
    :cond_1
    move-object v4, v3

    #@58
    .line 719
    goto :goto_0

    #@59
    .line 729
    :cond_2
    const/4 v4, 0x0

    #@5a
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    goto :goto_1

    #@5e
    .line 741
    :catchall_0
    move-exception v3

    #@5f
    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@62
    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@65
    .line 741
    throw v3

    #@66
    .line 738
    :cond_3
    const/4 v2, 0x0

    #@67
    .local v2, "_result":Lcom/android/internal/view/InputBindResult;
    goto :goto_2
.end method
