.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2;
.super Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic blacklist val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$OZf6J5GF2pIFbsbqU3_MbneDWUM(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onAdvertisingEnabled$3(ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OaokU_NEz2ZuT-rCYB1pmF5IX5o(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onPeriodicAdvertisingEnabled$9(ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ozlw88cyB2gdLZcuP5b5ul2iDec(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onOwnAddressRead$1(ILandroid/bluetooth/le/AdvertisingSetCallback;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Vk2u4iAbZTucjieNW8ArV2DW4wM(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onAdvertisingParametersUpdated$6(ILandroid/bluetooth/le/AdvertisingSetCallback;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X5h-5Ak6xbSx3Z4rbeshgJir84U(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onPeriodicAdvertisingParametersUpdated$7(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$c-8DMk4r9-0OeRmuoGWtoXvGaks(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onPeriodicAdvertisingDataSet$8(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gdKTo4n3GLFsk4vUFuDgYuSTvVo(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onAdvertisingDataSet$4(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p1m7xjHC86IiqcXXz6cV638mJX8(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onScanResponseDataSet$5(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tBxDxO5RZGoWdOMUcnEmrPKesO0(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/IBinder;II)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onAdvertisingSetStarted$0(ILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/IBinder;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vDeUxNjPjfTxeS_lqT10aDkPy60(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->lambda$onAdvertisingSetStopped$2(ILandroid/bluetooth/le/AdvertisingSetCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 765
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onAdvertisingDataSet$4(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "status"    # I

    .line 821
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 822
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V

    .line 823
    return-void
.end method

.method private synthetic blacklist lambda$onAdvertisingEnabled$3(ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V
    .registers 7
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "enabled"    # Z
    .param p4, "status"    # I

    .line 812
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 813
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3, p4}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V

    .line 814
    return-void
.end method

.method private synthetic blacklist lambda$onAdvertisingParametersUpdated$6(ILandroid/bluetooth/le/AdvertisingSetCallback;II)V
    .registers 7
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "txPower"    # I
    .param p4, "status"    # I

    .line 839
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 840
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3, p4}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 842
    return-void
.end method

.method private synthetic blacklist lambda$onAdvertisingSetStarted$0(ILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/IBinder;II)V
    .registers 10
    .param p1, "status"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "advertiseBinder"    # Landroid/os/IBinder;
    .param p4, "advertiserId"    # I
    .param p5, "txPower"    # I

    .line 771
    if-eqz p1, :cond_11

    .line 772
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 773
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    return-void

    .line 777
    :cond_11
    new-instance v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 779
    invoke-static {p3}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAdvertise;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmBluetoothAdapter(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v0, v1, p4, v2, v3}, Landroid/bluetooth/le/AdvertisingSet;-><init>(Landroid/bluetooth/IBluetoothAdvertise;ILandroid/bluetooth/BluetoothAdapter;Landroid/content/AttributionSource;)V

    .line 783
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-virtual {p2, v0, p5, p1}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 785
    return-void
.end method

.method private synthetic blacklist lambda$onAdvertisingSetStopped$2(ILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 801
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 802
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStopped(Landroid/bluetooth/le/AdvertisingSet;)V

    .line 803
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    return-void
.end method

.method private synthetic blacklist lambda$onOwnAddressRead$1(ILandroid/bluetooth/le/AdvertisingSetCallback;ILjava/lang/String;)V
    .registers 7
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "addressType"    # I
    .param p4, "address"    # Ljava/lang/String;

    .line 792
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 793
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3, p4}, Landroid/bluetooth/le/AdvertisingSetCallback;->onOwnAddressRead(Landroid/bluetooth/le/AdvertisingSet;ILjava/lang/String;)V

    .line 794
    return-void
.end method

.method private synthetic blacklist lambda$onPeriodicAdvertisingDataSet$8(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "status"    # I

    .line 858
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 859
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onPeriodicAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V

    .line 860
    return-void
.end method

.method private synthetic blacklist lambda$onPeriodicAdvertisingEnabled$9(ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V
    .registers 7
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "enable"    # Z
    .param p4, "status"    # I

    .line 867
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 868
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3, p4}, Landroid/bluetooth/le/AdvertisingSetCallback;->onPeriodicAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V

    .line 869
    return-void
.end method

.method private synthetic blacklist lambda$onPeriodicAdvertisingParametersUpdated$7(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "status"    # I

    .line 849
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 850
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onPeriodicAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;I)V

    .line 851
    return-void
.end method

.method private synthetic blacklist lambda$onScanResponseDataSet$5(ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "status"    # I

    .line 830
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 831
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    invoke-virtual {p2, v0, p3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onScanResponseDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V

    .line 832
    return-void
.end method


# virtual methods
.method public blacklist onAdvertisingDataSet(II)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 819
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    return-void
.end method

.method public blacklist onAdvertisingEnabled(IZI)V
    .registers 11
    .param p1, "advertiserId"    # I
    .param p2, "enabled"    # Z
    .param p3, "status"    # I

    .line 810
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "advertiserId":I
    .end local p2    # "enabled":Z
    .end local p3    # "status":I
    .local v3, "advertiserId":I
    .local v5, "enabled":Z
    .local v6, "status":I
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 815
    return-void
.end method

.method public blacklist onAdvertisingParametersUpdated(III)V
    .registers 11
    .param p1, "advertiserId"    # I
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 837
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "advertiserId":I
    .end local p2    # "txPower":I
    .end local p3    # "status":I
    .local v3, "advertiserId":I
    .local v5, "txPower":I
    .local v6, "status":I
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 843
    return-void
.end method

.method public blacklist onAdvertisingSetStarted(Landroid/os/IBinder;III)V
    .registers 13
    .param p1, "advertiseBinder"    # Landroid/os/IBinder;
    .param p2, "advertiserId"    # I
    .param p3, "txPower"    # I
    .param p4, "status"    # I

    .line 769
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v3, p4

    .end local p1    # "advertiseBinder":Landroid/os/IBinder;
    .end local p2    # "advertiserId":I
    .end local p3    # "txPower":I
    .end local p4    # "status":I
    .local v3, "status":I
    .local v5, "advertiseBinder":Landroid/os/IBinder;
    .local v6, "advertiserId":I
    .local v7, "txPower":I
    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/IBinder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    return-void
.end method

.method public blacklist onAdvertisingSetStopped(I)V
    .registers 5
    .param p1, "advertiserId"    # I

    .line 799
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method

.method public blacklist onOwnAddressRead(IILjava/lang/String;)V
    .registers 11
    .param p1, "advertiserId"    # I
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;

    .line 790
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    .end local p1    # "advertiserId":I
    .end local p2    # "addressType":I
    .end local p3    # "address":Ljava/lang/String;
    .local v3, "advertiserId":I
    .local v5, "addressType":I
    .local v6, "address":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.method public blacklist onPeriodicAdvertisingDataSet(II)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 856
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method

.method public blacklist onPeriodicAdvertisingEnabled(IZI)V
    .registers 11
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I

    .line 865
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "advertiserId":I
    .end local p2    # "enable":Z
    .end local p3    # "status":I
    .local v3, "advertiserId":I
    .local v5, "enable":Z
    .local v6, "status":I
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    return-void
.end method

.method public blacklist onPeriodicAdvertisingParametersUpdated(II)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 847
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 852
    return-void
.end method

.method public blacklist onScanResponseDataSet(II)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 828
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    new-instance v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, v1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method
