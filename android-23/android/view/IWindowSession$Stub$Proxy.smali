.class Landroid/view/IWindowSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession$Stub;
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
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 682
    iput-object p1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 680
    return-void
.end method


# virtual methods
.method public add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 699
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 701
    if-eqz p3, :cond_4

    #@1d
    .line 702
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 703
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 708
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 709
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v4, 0x1

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v2

    #@36
    .line 712
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 713
    invoke-virtual {p5, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@3f
    .line 715
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 716
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@48
    .line 718
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_3

    #@4e
    .line 719
    invoke-virtual {p7, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .line 723
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 726
    return v2

    #@58
    .line 706
    .end local v2    # "_result":I
    :cond_4
    const/4 v3, 0x0

    #@59
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    goto :goto_0

    #@5d
    .line 722
    :catchall_0
    move-exception v3

    #@5e
    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 722
    throw v3
.end method

.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "layerStackId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;
    .param p8, "outOutsets"    # Landroid/graphics/Rect;
    .param p9, "outInputChannel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 735
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 736
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 737
    if-eqz p3, :cond_5

    #@1d
    .line 738
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 739
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 744
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 745
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 746
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v4, 0x2

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@35
    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v2

    #@39
    .line 749
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 750
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@42
    .line 752
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 753
    invoke-virtual {p7, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@4b
    .line 755
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_3

    #@51
    .line 756
    invoke-virtual {p8, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@54
    .line 758
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 759
    invoke-virtual {p9, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 763
    :cond_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@60
    .line 764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@63
    .line 766
    return v2

    #@64
    .line 742
    .end local v2    # "_result":I
    :cond_5
    const/4 v3, 0x0

    #@65
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    goto :goto_0

    #@69
    .line 762
    :catchall_0
    move-exception v3

    #@6a
    .line 763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@6d
    .line 764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@70
    .line 762
    throw v3
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "layerStackId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 808
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 810
    if-eqz p3, :cond_3

    #@1d
    .line 811
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 812
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 817
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 818
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 819
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v4, 0x4

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@35
    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v2

    #@39
    .line 822
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 823
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@42
    .line 825
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 826
    invoke-virtual {p7, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 830
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 833
    return v2

    #@52
    .line 815
    .end local v2    # "_result":I
    :cond_3
    const/4 v3, 0x0

    #@53
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_0

    #@57
    .line 829
    :catchall_0
    move-exception v3

    #@58
    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 829
    throw v3
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 775
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 777
    if-eqz p3, :cond_3

    #@1d
    .line 778
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 779
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 784
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 785
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v4, 0x3

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 786
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v2

    #@36
    .line 788
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 789
    invoke-virtual {p5, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@3f
    .line 791
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 792
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 796
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 799
    return v2

    #@4f
    .line 782
    .end local v2    # "_result":I
    :cond_3
    const/4 v3, 0x0

    #@50
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 795
    :catchall_0
    move-exception v3

    #@55
    .line 796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 795
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1240
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1241
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x13

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1234
    return-void

    #@2a
    .line 1244
    :catchall_0
    move-exception v2

    #@2b
    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1244
    throw v2
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1257
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1258
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1259
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x14

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1252
    return-void

    #@2a
    .line 1262
    :catchall_0
    move-exception v2

    #@2b
    .line 1263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1262
    throw v2
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1087
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1088
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xc

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1081
    return-void

    #@2a
    .line 1091
    :catchall_0
    move-exception v2

    #@2b
    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1091
    throw v2
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "outDisplayFrame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1069
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1070
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xb

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 1073
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1077
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1063
    return-void

    #@33
    .line 1076
    :catchall_0
    move-exception v2

    #@34
    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1076
    throw v2
.end method

.method public getInTouchMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1117
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1118
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xe

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1123
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1126
    return v2

    #@27
    .line 1120
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1122
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1122
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 690
    const-string/jumbo v0, "android.view.IWindowSession"

    #@3
    return-object v0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 6
    .param p1, "window"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1417
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1b

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1418
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1419
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3}, Landroid/view/IWindowId$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 1422
    .local v2, "_result":Landroid/view/IWindowId;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1425
    return-object v2

    #@2b
    .line 1421
    .end local v2    # "_result":Landroid/view/IWindowId;
    :catchall_0
    move-exception v3

    #@2c
    .line 1422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1421
    throw v3
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1392
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1394
    if-eqz p2, :cond_0

    #@13
    .line 1395
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1396
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1401
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1a

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1387
    return-void

    #@2d
    .line 1399
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 1404
    :catchall_0
    move-exception v2

    #@33
    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1404
    throw v2
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 974
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 975
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x8

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 977
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
    .line 980
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 983
    return v2

    #@31
    .line 977
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@32
    .restart local v2    # "_result":Z
    goto :goto_0

    #@33
    .line 979
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@34
    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 979
    throw v3
.end method

.method public performDeferredDestroy(Landroid/view/IWindow;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 955
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 956
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 949
    return-void

    #@29
    .line 959
    :catchall_0
    move-exception v2

    #@2a
    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 959
    throw v2
.end method

.method public performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "dragToken"    # Landroid/os/IBinder;
    .param p3, "touchX"    # F
    .param p4, "touchY"    # F
    .param p5, "thumbCenterX"    # F
    .param p6, "thumbCenterY"    # F
    .param p7, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1187
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 1189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    #@1e
    .line 1190
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@21
    .line 1191
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    #@24
    .line 1192
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    #@27
    .line 1193
    if-eqz p7, :cond_1

    #@29
    .line 1194
    const/4 v3, 0x1

    #@2a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1195
    const/4 v3, 0x0

    #@2e
    invoke-virtual {p7, v0, v3}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 1200
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/16 v4, 0x11

    #@35
    const/4 v5, 0x0

    #@36
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@39
    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3c
    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_2

    #@42
    const/4 v2, 0x1

    #@43
    .line 1205
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1208
    return v2

    #@4a
    .line 1198
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    #@4b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 1204
    :catchall_0
    move-exception v3

    #@50
    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 1204
    throw v3

    #@57
    .line 1202
    :cond_2
    const/4 v2, 0x0

    #@58
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowSession"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1135
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 1136
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1137
    if-eqz p3, :cond_1

    #@1e
    const/4 v3, 0x1

    #@1f
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1138
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v4, 0xf

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    const/4 v2, 0x1

    #@34
    .line 1143
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1146
    return v2

    #@3b
    .line 1140
    .end local v2    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    #@3c
    .restart local v2    # "_result":Z
    goto :goto_0

    #@3d
    .line 1142
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3e
    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1142
    throw v3
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "window"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1447
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x1c

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1440
    return-void

    #@23
    .line 1450
    :catchall_0
    move-exception v2

    #@24
    .line 1451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1450
    throw v2
.end method

.method public prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "thumbnailWidth"    # I
    .param p4, "thumbnailHeight"    # I
    .param p5, "outSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1160
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1162
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1163
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1164
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x10

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v2

    #@30
    .line 1167
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 1168
    invoke-virtual {p5, v1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 1172
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1175
    return-object v2

    #@40
    .line 1171
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    #@41
    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1171
    throw v3
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "requestedWidth"    # I
    .param p5, "requestedHeight"    # I
    .param p6, "viewVisibility"    # I
    .param p7, "flags"    # I
    .param p8, "outFrame"    # Landroid/graphics/Rect;
    .param p9, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p10, "outContentInsets"    # Landroid/graphics/Rect;
    .param p11, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p12, "outStableInsets"    # Landroid/graphics/Rect;
    .param p13, "outOutsets"    # Landroid/graphics/Rect;
    .param p14, "outConfig"    # Landroid/content/res/Configuration;
    .param p15, "outSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 894
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 897
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 898
    if-eqz p1, :cond_8

    #@10
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 899
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 900
    if-eqz p3, :cond_9

    #@1c
    .line 901
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 902
    const/4 v4, 0x0

    #@21
    invoke-virtual {p3, v1, v4}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 907
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 908
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 909
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 910
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 911
    iget-object v4, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@32
    const/4 v5, 0x6

    #@33
    const/4 v6, 0x0

    #@34
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@37
    .line 912
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@3a
    .line 913
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v3

    #@3e
    .line 914
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    .line 915
    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@47
    .line 917
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_1

    #@4d
    .line 918
    move-object/from16 v0, p9

    #@4f
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@52
    .line 920
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_2

    #@58
    .line 921
    move-object/from16 v0, p10

    #@5a
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@5d
    .line 923
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_3

    #@63
    .line 924
    move-object/from16 v0, p11

    #@65
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@68
    .line 926
    :cond_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_4

    #@6e
    .line 927
    move-object/from16 v0, p12

    #@70
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@73
    .line 929
    :cond_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_5

    #@79
    .line 930
    move-object/from16 v0, p13

    #@7b
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@7e
    .line 932
    :cond_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v4

    #@82
    if-eqz v4, :cond_6

    #@84
    .line 933
    move-object/from16 v0, p14

    #@86
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    #@89
    .line 935
    :cond_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_7

    #@8f
    .line 936
    move-object/from16 v0, p15

    #@91
    invoke-virtual {v0, v2}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@94
    .line 940
    :cond_7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@97
    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@9a
    .line 943
    return v3

    #@9b
    .line 898
    .end local v3    # "_result":I
    :cond_8
    const/4 v4, 0x0

    #@9c
    goto/16 :goto_0

    #@9e
    .line 905
    :cond_9
    const/4 v4, 0x0

    #@9f
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a2
    goto :goto_1

    #@a3
    .line 939
    :catchall_0
    move-exception v4

    #@a4
    .line 940
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@a7
    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@aa
    .line 939
    throw v4
.end method

.method public remove(Landroid/view/IWindow;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 841
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 842
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 835
    return-void

    #@29
    .line 845
    :catchall_0
    move-exception v2

    #@2a
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 845
    throw v2
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1221
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 1222
    if-eqz p2, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1223
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x12

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1215
    return-void

    #@31
    .line 1226
    :catchall_0
    move-exception v2

    #@32
    .line 1227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 1226
    throw v2
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 6
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowSession"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 1335
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1336
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1337
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1338
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1339
    if-eqz p6, :cond_0

    #@21
    .line 1340
    const/4 v5, 0x1

    #@22
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1341
    const/4 v5, 0x0

    #@26
    invoke-virtual {p6, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    .line 1346
    :goto_0
    if-eqz p7, :cond_1

    #@2b
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1347
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/16 v4, 0x18

    #@32
    const/4 v5, 0x0

    #@33
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 1348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@39
    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .line 1350
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 1357
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 1360
    return-object v2

    #@4e
    .line 1344
    :cond_0
    const/4 v5, 0x0

    #@4f
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 1356
    :catchall_0
    move-exception v3

    #@54
    .line 1357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5a
    .line 1356
    throw v3

    #@5b
    :cond_1
    move v3, v4

    #@5c
    .line 1346
    goto :goto_1

    #@5d
    .line 1353
    :cond_2
    const/4 v2, 0x0

    #@5e
    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_2
.end method

.method public setInTouchMode(Z)V
    .locals 5
    .param p1, "showFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1102
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1103
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xd

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1096
    return-void

    #@27
    .line 1106
    :catchall_0
    move-exception v2

    #@28
    .line 1107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1106
    throw v2
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1028
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1029
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1030
    if-eqz p3, :cond_1

    #@1d
    .line 1031
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1032
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1037
    :goto_0
    if-eqz p4, :cond_2

    #@27
    .line 1038
    const/4 v2, 0x1

    #@28
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 1039
    const/4 v2, 0x0

    #@2c
    invoke-virtual {p4, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 1044
    :goto_1
    if-eqz p5, :cond_3

    #@31
    .line 1045
    const/4 v2, 0x1

    #@32
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 1046
    const/4 v2, 0x0

    #@36
    invoke-virtual {p5, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 1051
    :goto_2
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3b
    const/16 v3, 0xa

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@41
    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1022
    return-void

    #@4b
    .line 1035
    :cond_1
    const/4 v2, 0x0

    #@4c
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 1054
    :catchall_0
    move-exception v2

    #@51
    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 1054
    throw v2

    #@58
    .line 1042
    :cond_2
    const/4 v2, 0x0

    #@59
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    goto :goto_1

    #@5d
    .line 1049
    :cond_3
    const/4 v2, 0x0

    #@5e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    goto :goto_2
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 996
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 997
    if-eqz p2, :cond_1

    #@1a
    .line 998
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 999
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1004
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x9

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 990
    return-void

    #@34
    .line 1002
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1007
    :catchall_0
    move-exception v2

    #@3a
    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1007
    throw v2
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1318
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1319
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x17

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1310
    return-void

    #@29
    .line 1322
    :catchall_0
    move-exception v2

    #@2a
    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1322
    throw v2
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xstep"    # F
    .param p5, "ystep"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1280
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 1281
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    #@17
    .line 1282
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@1a
    .line 1283
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    #@1d
    .line 1284
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/16 v3, 0x15

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 1288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1273
    return-void

    #@2f
    .line 1287
    :catchall_0
    move-exception v2

    #@30
    .line 1288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1287
    throw v2
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1365
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1367
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1368
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1369
    if-eqz p2, :cond_0

    #@13
    .line 1370
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1371
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1376
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x19

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1362
    return-void

    #@2d
    .line 1374
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 1379
    :catchall_0
    move-exception v2

    #@33
    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1379
    throw v2
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "window"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1297
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1299
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x16

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1292
    return-void

    #@23
    .line 1302
    :catchall_0
    move-exception v2

    #@24
    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1302
    throw v2
.end method
