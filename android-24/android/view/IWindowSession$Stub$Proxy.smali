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
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 764
    iput-object p1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 762
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
    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 777
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 780
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 781
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 782
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 783
    if-eqz p3, :cond_4

    #@1d
    .line 784
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 785
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 790
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 791
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v4, 0x1

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v2

    #@36
    .line 794
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 795
    invoke-virtual {p5, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@3f
    .line 797
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 798
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@48
    .line 800
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_3

    #@4e
    .line 801
    invoke-virtual {p7, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .line 805
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 808
    return v2

    #@58
    .line 788
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
    .line 804
    :catchall_0
    move-exception v3

    #@5e
    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 804
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
    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 817
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 818
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 819
    if-eqz p3, :cond_5

    #@1d
    .line 820
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 821
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 826
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 827
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 828
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v4, 0x2

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@35
    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v2

    #@39
    .line 831
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 832
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@42
    .line 834
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 835
    invoke-virtual {p7, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@4b
    .line 837
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_3

    #@51
    .line 838
    invoke-virtual {p8, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@54
    .line 840
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 841
    invoke-virtual {p9, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 845
    :cond_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@60
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@63
    .line 848
    return v2

    #@64
    .line 824
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
    .line 844
    :catchall_0
    move-exception v3

    #@6a
    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@6d
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@70
    .line 844
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
    .line 885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 886
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 890
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 891
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 892
    if-eqz p3, :cond_3

    #@1d
    .line 893
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 894
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 899
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 900
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 901
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v4, 0x4

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@35
    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v2

    #@39
    .line 904
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 905
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@42
    .line 907
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 908
    invoke-virtual {p7, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 912
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 915
    return v2

    #@52
    .line 897
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
    .line 911
    :catchall_0
    move-exception v3

    #@58
    .line 912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 911
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
    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 857
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 858
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 859
    if-eqz p3, :cond_3

    #@1d
    .line 860
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 861
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 866
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 867
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v4, 0x3

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v2

    #@36
    .line 870
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 871
    invoke-virtual {p5, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@3f
    .line 873
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 874
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 878
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 881
    return v2

    #@4f
    .line 864
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
    .line 877
    :catchall_0
    move-exception v3

    #@55
    .line 878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 877
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1355
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x15

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1348
    return-void

    #@23
    .line 1358
    :catchall_0
    move-exception v2

    #@24
    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1358
    throw v2
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
    .line 1368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1372
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1373
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x16

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1366
    return-void

    #@2a
    .line 1376
    :catchall_0
    move-exception v2

    #@2b
    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1376
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
    .line 1386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1389
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1390
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1391
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x17

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1384
    return-void

    #@2a
    .line 1394
    :catchall_0
    move-exception v2

    #@2b
    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1394
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
    .line 1196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1200
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1201
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xe

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1194
    return-void

    #@2a
    .line 1204
    :catchall_0
    move-exception v2

    #@2b
    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1204
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
    .line 1178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1182
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1183
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xd

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 1186
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1190
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1176
    return-void

    #@33
    .line 1189
    :catchall_0
    move-exception v2

    #@34
    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1189
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
    .line 1226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1231
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x10

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1233
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
    .line 1236
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1239
    return v2

    #@27
    .line 1233
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1235
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1235
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 772
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
    .line 1543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1549
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1e

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1551
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
    .line 1554
    .local v2, "_result":Landroid/view/IWindowId;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1557
    return-object v2

    #@2b
    .line 1553
    .end local v2    # "_result":Landroid/view/IWindowId;
    :catchall_0
    move-exception v3

    #@2c
    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1553
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
    .line 1521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1526
    if-eqz p2, :cond_0

    #@13
    .line 1527
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1528
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1533
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1d

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1519
    return-void

    #@2d
    .line 1531
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
    .line 1536
    :catchall_0
    move-exception v2

    #@33
    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1536
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
    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1087
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1088
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xa

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1090
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
    .line 1093
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1096
    return v2

    #@31
    .line 1090
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@32
    .restart local v2    # "_result":Z
    goto :goto_0

    #@33
    .line 1092
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@34
    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1092
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
    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1068
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1069
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1070
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1062
    return-void

    #@2a
    .line 1072
    :catchall_0
    move-exception v2

    #@2b
    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1072
    throw v2
.end method

.method public performDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "dragToken"    # Landroid/os/IBinder;
    .param p3, "touchSource"    # I
    .param p4, "touchX"    # F
    .param p5, "touchY"    # F
    .param p6, "thumbCenterX"    # F
    .param p7, "thumbCenterY"    # F
    .param p8, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1300
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1301
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 1302
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1303
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@21
    .line 1304
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    #@24
    .line 1305
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    #@27
    .line 1306
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    #@2a
    .line 1307
    if-eqz p8, :cond_1

    #@2c
    .line 1308
    const/4 v3, 0x1

    #@2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 1309
    const/4 v3, 0x0

    #@31
    invoke-virtual {p8, v0, v3}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@34
    .line 1314
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@36
    const/16 v4, 0x13

    #@38
    const/4 v5, 0x0

    #@39
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3c
    .line 1315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3f
    .line 1316
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_2

    #@45
    const/4 v2, 0x1

    #@46
    .line 1319
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 1322
    return v2

    #@4d
    .line 1312
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    #@4e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 1318
    :catchall_0
    move-exception v3

    #@53
    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 1318
    throw v3

    #@5a
    .line 1316
    :cond_2
    const/4 v2, 0x0

    #@5b
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
    .line 1243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowSession"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1248
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 1249
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1250
    if-eqz p3, :cond_1

    #@1e
    const/4 v3, 0x1

    #@1f
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1251
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v4, 0x11

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 1253
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
    .line 1256
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1259
    return v2

    #@3b
    .line 1253
    .end local v2    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    #@3c
    .restart local v2    # "_result":Z
    goto :goto_0

    #@3d
    .line 1255
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3e
    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1255
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
    .line 1574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1575
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1579
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x1f

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1572
    return-void

    #@23
    .line 1582
    :catchall_0
    move-exception v2

    #@24
    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1582
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
    .line 1268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1273
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1275
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1276
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1277
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x12

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v2

    #@30
    .line 1280
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 1281
    invoke-virtual {p5, v1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 1285
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1288
    return-object v2

    #@40
    .line 1284
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    #@41
    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1284
    throw v3
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "childrenOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 1049
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1050
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x8

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1042
    return-void

    #@2a
    .line 1053
    :catchall_0
    move-exception v2

    #@2b
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1053
    throw v2
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
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
    .param p14, "outBackdropFrame"    # Landroid/graphics/Rect;
    .param p15, "outConfig"    # Landroid/content/res/Configuration;
    .param p16, "outSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 935
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 938
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 939
    if-eqz p1, :cond_9

    #@10
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 940
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 941
    if-eqz p3, :cond_a

    #@1c
    .line 942
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 943
    const/4 v4, 0x0

    #@21
    invoke-virtual {p3, v1, v4}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 948
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 949
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 950
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 951
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 952
    iget-object v4, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@32
    const/4 v5, 0x6

    #@33
    const/4 v6, 0x0

    #@34
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@37
    .line 953
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@3a
    .line 954
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v3

    #@3e
    .line 955
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    .line 956
    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@47
    .line 958
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_1

    #@4d
    .line 959
    move-object/from16 v0, p9

    #@4f
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@52
    .line 961
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_2

    #@58
    .line 962
    move-object/from16 v0, p10

    #@5a
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@5d
    .line 964
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_3

    #@63
    .line 965
    move-object/from16 v0, p11

    #@65
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@68
    .line 967
    :cond_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_4

    #@6e
    .line 968
    move-object/from16 v0, p12

    #@70
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@73
    .line 970
    :cond_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_5

    #@79
    .line 971
    move-object/from16 v0, p13

    #@7b
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@7e
    .line 973
    :cond_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v4

    #@82
    if-eqz v4, :cond_6

    #@84
    .line 974
    move-object/from16 v0, p14

    #@86
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@89
    .line 976
    :cond_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_7

    #@8f
    .line 977
    move-object/from16 v0, p15

    #@91
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    #@94
    .line 979
    :cond_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v4

    #@98
    if-eqz v4, :cond_8

    #@9a
    .line 980
    move-object/from16 v0, p16

    #@9c
    invoke-virtual {v0, v2}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9f
    .line 984
    :cond_8
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@a2
    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@a5
    .line 987
    return v3

    #@a6
    .line 939
    .end local v3    # "_result":I
    :cond_9
    const/4 v4, 0x0

    #@a7
    goto/16 :goto_0

    #@a9
    .line 946
    :cond_a
    const/4 v4, 0x0

    #@aa
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ad
    goto/16 :goto_1

    #@af
    .line 983
    :catchall_0
    move-exception v4

    #@b0
    .line 984
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@b3
    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@b6
    .line 983
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
    .line 919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 920
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 923
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 924
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 917
    return-void

    #@29
    .line 927
    :catchall_0
    move-exception v2

    #@2a
    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 927
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
    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1335
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 1336
    if-eqz p2, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1337
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x14

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1329
    return-void

    #@31
    .line 1340
    :catchall_0
    move-exception v2

    #@32
    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 1340
    throw v2
.end method

.method public repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    .locals 6
    .param p1, "childWindow"    # Landroid/view/IWindow;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "deferTransactionUntilFrame"    # J
    .param p8, "outFrame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1017
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1018
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1019
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1020
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1021
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1022
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 1023
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v3, 0x7

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 1024
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_1

    #@37
    .line 1026
    invoke-virtual {p8, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 1030
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1011
    return-void

    #@41
    .line 1029
    :catchall_0
    move-exception v2

    #@42
    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 1031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 1029
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
    .line 1461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowSession"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 1467
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1468
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1469
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1470
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1471
    if-eqz p6, :cond_0

    #@21
    .line 1472
    const/4 v5, 0x1

    #@22
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1473
    const/4 v5, 0x0

    #@26
    invoke-virtual {p6, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    .line 1478
    :goto_0
    if-eqz p7, :cond_1

    #@2b
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1479
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/16 v4, 0x1b

    #@32
    const/4 v5, 0x0

    #@33
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@39
    .line 1481
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .line 1482
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
    .line 1489
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 1492
    return-object v2

    #@4e
    .line 1476
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
    .line 1488
    :catchall_0
    move-exception v3

    #@54
    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5a
    .line 1488
    throw v3

    #@5b
    :cond_1
    move v3, v4

    #@5c
    .line 1478
    goto :goto_1

    #@5d
    .line 1485
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
    .line 1211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1215
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1216
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xf

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1209
    return-void

    #@27
    .line 1219
    :catchall_0
    move-exception v2

    #@28
    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1219
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
    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1141
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1142
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1143
    if-eqz p3, :cond_1

    #@1d
    .line 1144
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1145
    const/4 v2, 0x0

    #@22
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 1150
    :goto_0
    if-eqz p4, :cond_2

    #@27
    .line 1151
    const/4 v2, 0x1

    #@28
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 1152
    const/4 v2, 0x0

    #@2c
    invoke-virtual {p4, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 1157
    :goto_1
    if-eqz p5, :cond_3

    #@31
    .line 1158
    const/4 v2, 0x1

    #@32
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 1159
    const/4 v2, 0x0

    #@36
    invoke-virtual {p5, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 1164
    :goto_2
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3b
    const/16 v3, 0xc

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@41
    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1135
    return-void

    #@4b
    .line 1148
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
    .line 1167
    :catchall_0
    move-exception v2

    #@51
    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 1167
    throw v2

    #@58
    .line 1155
    :cond_2
    const/4 v2, 0x0

    #@59
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    goto :goto_1

    #@5d
    .line 1162
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
    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1109
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1110
    if-eqz p2, :cond_1

    #@1a
    .line 1111
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1112
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1117
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xb

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1103
    return-void

    #@34
    .line 1115
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
    .line 1120
    :catchall_0
    move-exception v2

    #@3a
    .line 1121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1120
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
    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1449
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1450
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1451
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x1a

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1442
    return-void

    #@29
    .line 1454
    :catchall_0
    move-exception v2

    #@2a
    .line 1455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1454
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
    .line 1407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 1413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    #@17
    .line 1414
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@1a
    .line 1415
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    #@1d
    .line 1416
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/16 v3, 0x18

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1405
    return-void

    #@2f
    .line 1419
    :catchall_0
    move-exception v2

    #@30
    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1419
    throw v2
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1600
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@1b
    .line 1602
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    #@1e
    .line 1603
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x20

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 1605
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
    .line 1608
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1611
    return v2

    #@37
    .line 1605
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@38
    .restart local v2    # "_result":Z
    goto :goto_0

    #@39
    .line 1607
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3a
    .line 1608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1607
    throw v3
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
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
    .line 1615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1619
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1620
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x21

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1613
    return-void

    #@2a
    .line 1623
    :catchall_0
    move-exception v2

    #@2b
    .line 1624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1623
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
    .line 1496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1501
    if-eqz p2, :cond_0

    #@13
    .line 1502
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1503
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1508
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1c

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1494
    return-void

    #@2d
    .line 1506
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
    .line 1511
    :catchall_0
    move-exception v2

    #@33
    .line 1512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1511
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
    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1431
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x19

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1424
    return-void

    #@23
    .line 1434
    :catchall_0
    move-exception v2

    #@24
    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1434
    throw v2
.end method
