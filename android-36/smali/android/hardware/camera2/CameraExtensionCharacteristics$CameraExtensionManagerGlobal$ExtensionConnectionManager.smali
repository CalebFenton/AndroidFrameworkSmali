.class Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionConnectionManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;
    }
.end annotation


# instance fields
.field private blacklist mConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionInitialized:Z


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    .line 621
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mSessionInitialized:Z

    .line 624
    new-instance v0, Landroid/util/IntArray;

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->-$$Nest$sfgetEXTENSION_LIST()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 625
    .local v0, "extensionList":Landroid/util/IntArray;
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->-$$Nest$sfgetEXTENSION_LIST()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll([I)V

    .line 627
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    array-length v2, v1

    :goto_23
    if-ge p1, v2, :cond_39

    aget v3, v1, p1

    .line 628
    .local v3, "extensionType":I
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;Landroid/hardware/camera2/CameraExtensionCharacteristics-IA;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .end local v3    # "extensionType":I
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 630
    :cond_39
    return-void
.end method


# virtual methods
.method public blacklist areAdvancedExtensionsSupported(I)Z
    .registers 4
    .param p1, "extension"    # I

    .line 645
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iget-boolean v0, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mSupportsAdvancedExtensions:Z

    return v0
.end method

.method public blacklist decrementConnectionCount(I)V
    .registers 4
    .param p1, "extension"    # I

    .line 665
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iget v1, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    .line 666
    return-void
.end method

.method public blacklist getConnection(I)Landroid/content/ServiceConnection;
    .registers 4
    .param p1, "extension"    # I

    .line 637
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iget-object v0, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public blacklist getConnectionCount(I)I
    .registers 4
    .param p1, "extension"    # I

    .line 641
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iget v0, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    return v0
.end method

.method public blacklist getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    .registers 4
    .param p1, "extension"    # I

    .line 633
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iget-object v0, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-object v0
.end method

.method public blacklist incrementConnectionCount(I)V
    .registers 4
    .param p1, "extension"    # I

    .line 661
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iget v1, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    .line 662
    return-void
.end method

.method public blacklist isSessionInitialized()Z
    .registers 2

    .line 649
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mSessionInitialized:Z

    return v0
.end method

.method public blacklist resetConnectionCount(I)V
    .registers 4
    .param p1, "extension"    # I

    .line 669
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    .line 670
    return-void
.end method

.method public blacklist setAdvancedExtensionsSupported(IZ)V
    .registers 5
    .param p1, "extension"    # I
    .param p2, "advancedExtSupported"    # Z

    .line 674
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iput-boolean p2, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mSupportsAdvancedExtensions:Z

    .line 675
    return-void
.end method

.method public blacklist setConnection(ILandroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "extension"    # I
    .param p2, "connection"    # Landroid/content/ServiceConnection;

    .line 657
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iput-object p2, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 658
    return-void
.end method

.method public blacklist setProxy(ILandroid/hardware/camera2/extension/ICameraExtensionsProxyService;)V
    .registers 5
    .param p1, "extension"    # I
    .param p2, "proxy"    # Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    .line 653
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;

    iput-object p2, v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    .line 654
    return-void
.end method

.method public blacklist setSessionInitialized(Z)V
    .registers 2
    .param p1, "initialized"    # Z

    .line 678
    iput-boolean p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->mSessionInitialized:Z

    .line 679
    return-void
.end method
