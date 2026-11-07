.class public abstract Landroid/hardware/camera2/extension/AdvancedExtender;
.super Ljava/lang/Object;
.source "AdvancedExtender.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AdvancedExtender"


# instance fields
.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private blacklist mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

.field private blacklist mMetadataVendorIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/AdvancedExtender;)Landroid/hardware/camera2/extension/CameraUsageTracker;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/extension/AdvancedExtender;->initializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/hardware/camera2/CameraManager;)V
    .registers 14
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 71
    :try_start_c
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdListNoLazy()[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "cameraIds":[Ljava/lang/String;
    if-eqz v0, :cond_4d

    .line 73
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_4d

    aget-object v4, v0, v3

    .line 74
    .local v4, "cameraId":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 75
    .local v5, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    const-class v6, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 76
    .local v6, "thisClass":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    .line 78
    .local v7, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    nop

    .line 79
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    .line 80
    .local v8, "vendorKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    if-eqz v8, :cond_4a

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4a

    .line 81
    iget-object v9, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_4a} :catch_4e

    .line 73
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v5    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "thisClass":Ljava/lang/Object;
    .end local v7    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    .end local v8    # "vendorKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 87
    .end local v0    # "cameraIds":[Ljava/lang/String;
    :cond_4d
    goto :goto_56

    .line 85
    :catch_4e
    move-exception v0

    .line 86
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "AdvancedExtender"

    const-string v2, "Failed to query camera characteristics!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_56
    return-void
.end method

.method private static blacklist initializeParcelable(Ljava/util/Map;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 402
    .local p0, "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez p0, :cond_4

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 407
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    new-instance v3, Landroid/hardware/camera2/extension/SizeList;

    invoke-direct {v3}, Landroid/hardware/camera2/extension/SizeList;-><init>()V

    .line 408
    .local v3, "sizeList":Landroid/hardware/camera2/extension/SizeList;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/SizeList;->format:I

    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    .line 410
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 411
    .local v5, "size":Landroid/util/Size;
    new-instance v6, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v6}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 413
    .local v6, "sz":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/hardware/camera2/extension/Size;->width:I

    .line 414
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/hardware/camera2/extension/Size;->height:I

    .line 415
    iget-object v7, v3, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v5    # "size":Landroid/util/Size;
    .end local v6    # "sz":Landroid/hardware/camera2/extension/Size;
    goto :goto_43

    .line 417
    :cond_66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v3    # "sizeList":Landroid/hardware/camera2/extension/SizeList;
    goto :goto_15

    .line 420
    :cond_6a
    return-object v0
.end method


# virtual methods
.method blacklist getAdvancedExtenderBinder()Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 3

    .line 397
    new-instance v0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;-><init>(Landroid/hardware/camera2/extension/AdvancedExtender;Landroid/hardware/camera2/extension/AdvancedExtender-IA;)V

    return-object v0
.end method

.method public abstract whitelist getAvailableCaptureRequestKeys(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAvailableCaptureResultKeys(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAvailableCharacteristicsKeyValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public whitelist getMetadataVendorId(Ljava/lang/String;)J
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 104
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1a

    :cond_15
    const-wide v0, 0x7fffffffffffffffL

    .line 105
    .local v0, "vendorId":J
    :goto_1a
    return-wide v0
.end method

.method public abstract whitelist getSessionProcessor()Landroid/hardware/camera2/extension/SessionProcessor;
.end method

.method public abstract whitelist getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract whitelist getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract whitelist initialize(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)V
.end method

.method public abstract whitelist isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)Z
.end method

.method blacklist setCameraUsageTracker(Landroid/hardware/camera2/extension/CameraUsageTracker;)V
    .registers 2
    .param p1, "tracker"    # Landroid/hardware/camera2/extension/CameraUsageTracker;

    .line 91
    iput-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    .line 92
    return-void
.end method
