.class public final Landroid/hardware/camera2/CameraExtensionCharacteristics;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;,
        Landroid/hardware/camera2/CameraExtensionCharacteristics$Extension;
    }
.end annotation


# static fields
.field public static final whitelist EXTENSION_AUTOMATIC:I = 0x0

.field public static final whitelist EXTENSION_BEAUTY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTENSION_BOKEH:I = 0x2

.field public static final whitelist EXTENSION_FACE_RETOUCH:I = 0x1

.field public static final whitelist EXTENSION_HDR:I = 0x3

.field private static final blacklist EXTENSION_LIST:[I

.field public static final whitelist EXTENSION_NIGHT:I = 0x4

.field public static final blacklist NON_PROCESSING_INPUT_FORMAT:I = 0x22

.field public static final blacklist PROCESSING_INPUT_FORMAT:I = 0x23

.field private static final blacklist SUPPORTED_SYNTHETIC_CAMERA_CHARACTERISTICS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionCharacteristics"


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mCharacteristicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCharacteristicsMapNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEXTENSION_LIST()[I
    .registers 1

    sget-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 170
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    .line 181
    new-array v0, v4, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v1, v0, v3

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->SUPPORTED_SYNTHETIC_CAMERA_CHARACTERISTICS:Ljava/util/List;

    .line 181
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p3, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    .line 200
    nop

    .line 201
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getCharacteristicsMapNative(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    .line 202
    return-void
.end method

.method public static blacklist areAdvancedExtensionsSupported(I)Z
    .registers 2
    .param p0, "extension"    # I

    .line 725
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->areAdvancedExtensionsSupported(I)Z

    move-result v0

    return v0
.end method

.method private static blacklist generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .registers 6
    .param p1, "streamMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 242
    .local p0, "sizesList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 243
    .local v1, "extensionSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/util/HashSet;

    .line 244
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_23

    .line 244
    :cond_1e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_23
    nop

    .line 245
    .local v2, "supportedSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    new-instance v0, Ljava/util/HashSet;

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 247
    .local v0, "supportedJpegSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method private static blacklist generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .registers 6
    .param p1, "format"    # Ljava/lang/Integer;
    .param p2, "streamMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 224
    .local p0, "sizesList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-static {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1c

    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_33

    .line 231
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 232
    .local v1, "supportedSizes":[Landroid/util/Size;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    if-eqz v1, :cond_33

    .line 233
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    .end local v1    # "supportedSizes":[Landroid/util/Size;
    :cond_33
    return-object v0
.end method

.method private static blacklist getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "format"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 206
    .local p0, "sizesList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz p0, :cond_4e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/SizeList;

    .line 209
    .local v2, "entry":Landroid/hardware/camera2/extension/SizeList;
    iget v3, v2, Landroid/hardware/camera2/extension/SizeList;->format:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4d

    iget-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 210
    iget-object v1, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    .line 211
    .local v3, "sz":Landroid/hardware/camera2/extension/Size;
    new-instance v4, Landroid/util/Size;

    iget v5, v3, Landroid/hardware/camera2/extension/Size;->width:I

    iget v6, v3, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v3    # "sz":Landroid/hardware/camera2/extension/Size;
    goto :goto_33

    .line 213
    :cond_4c
    return-object v0

    .line 215
    .end local v2    # "entry":Landroid/hardware/camera2/extension/SizeList;
    :cond_4d
    goto :goto_11

    .line 218
    :cond_4e
    return-object v0
.end method

.method public static blacklist initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 5
    .param p0, "extensionType"    # I

    .line 769
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_25

    .line 773
    .local v0, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    nop

    .line 775
    if-eqz v0, :cond_c

    .line 779
    return-object v0

    .line 776
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    .end local v0    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :catch_25
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist initializeExtension(I)Landroid/util/Pair;
    .registers 6
    .param p0, "extensionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/extension/IPreviewExtenderImpl;",
            "Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;",
            ">;"
        }
    .end annotation

    .line 791
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v0

    .line 793
    .local v0, "previewExtender":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_34

    .line 796
    .local v1, "imageExtender":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    nop

    .line 797
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 801
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 798
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 794
    .end local v0    # "previewExtender":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .end local v1    # "imageExtender":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    :catch_34
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;I)V
    .registers 3
    .param p0, "cb"    # Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;I)V

    .line 712
    return-void
.end method

.method public static blacklist isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z
    .registers 9
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "extensionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    .line 733
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v0

    const-string v1, "Failed to query extension availability! Extension service does not respond!"

    const-string v2, "CameraExtensionCharacteristics"

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    .line 735
    :try_start_b
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0

    .line 736
    .local v0, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return v1

    .line 737
    .end local v0    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :catch_14
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v3

    .line 745
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    :try_start_19
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1d} :catch_47

    .line 748
    .local v0, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    nop

    .line 751
    :try_start_1e
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 752
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 751
    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 754
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 753
    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v1
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3c} :catch_42

    if-eqz v1, :cond_40

    const/4 v3, 0x1

    goto :goto_41

    :cond_40
    nop

    .line 751
    :goto_41
    return v3

    .line 755
    :catch_42
    move-exception v4

    .line 756
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return v3

    .line 746
    .end local v0    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_47
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v3
.end method

.method private static blacklist isOutputSupportedFor(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 805
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v0, "klass must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 807
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-eq p0, v0, :cond_11

    const-class v0, Landroid/view/SurfaceView;

    if-ne p0, v0, :cond_f

    goto :goto_11

    .line 812
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 809
    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "extension"    # I
    .param p3, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    .line 695
    .local p4, "characteristicsMapNative":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "extension":I
    .end local p3    # "cameraId":Ljava/lang/String;
    .end local p4    # "characteristicsMapNative":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    .local v1, "ctx":Landroid/content/Context;
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "extension":I
    .local v4, "cameraId":Ljava/lang/String;
    .local v5, "characteristicsMapNative":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static blacklist releaseSession(I)V
    .registers 2
    .param p0, "extension"    # I

    .line 718
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseSession(I)V

    .line 719
    return-void
.end method

.method public static blacklist unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "extension"    # I

    .line 703
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 704
    return-void
.end method


# virtual methods
.method public whitelist get(ILandroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 10
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 862
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#get:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 865
    .local v1, "success":Z
    if-eqz v1, :cond_8b

    .line 870
    const/4 v2, 0x0

    :try_start_27
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 874
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getKeys(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 875
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 876
    .local v3, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 877
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 878
    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_52} :catch_75
    .catchall {:try_start_27 .. :try_end_52} :catchall_73

    .line 879
    .local v4, "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    if-nez v4, :cond_5b

    .line 880
    nop

    .line 889
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 880
    return-object v2

    .line 882
    :cond_5b
    :try_start_5b
    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v4}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 883
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v5, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_64} :catch_75
    .catchall {:try_start_5b .. :try_end_64} :catchall_73

    .line 889
    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 883
    return-object v2

    .line 889
    .end local v3    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .end local v4    # "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_6a
    goto :goto_7e

    .line 871
    :cond_6b
    :try_start_6b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    throw v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_73} :catch_75
    .catchall {:try_start_6b .. :try_end_73} :catchall_73

    .line 889
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    :catchall_73
    move-exception v2

    goto :goto_85

    .line 885
    :catch_75
    move-exception v3

    .line 886
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_76
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension for the specified key! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_73

    .line 889
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_7e
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 890
    nop

    .line 891
    return-object v2

    .line 889
    :goto_85
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 890
    throw v2

    .line 866
    :cond_8b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAvailableCaptureRequestKeys(I)Ljava/util/Set;
    .registers 12
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 1443
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getAvailableCaptureRequestKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 1446
    .local v1, "success":Z
    if-eqz v1, :cond_ef

    .line 1450
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1453
    .local v2, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    :try_start_2b
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 1457
    const/4 v3, 0x0

    .line 1458
    .local v3, "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1459
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    .line 1460
    .local v4, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1461
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 1462
    .end local v3    # "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .local v5, "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_88

    .line 1463
    .end local v5    # "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v3    # "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_4e
    nop

    .line 1464
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 1465
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 1466
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 1465
    invoke-interface {v5, v0, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1467
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1468
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 1469
    .end local v3    # "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v5    # "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit(Landroid/os/IBinder;)V

    .line 1472
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :goto_88
    if-eqz v5, :cond_b1

    .line 1473
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1475
    .local v3, "requestKeys":[I
    if-eqz v3, :cond_a9

    .line 1480
    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1483
    .local v4, "requestChars":Landroid/hardware/camera2/CameraCharacteristics;
    const-class v6, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1484
    .local v6, "crKey":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    .line 1486
    .local v7, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    const-class v8, Landroid/hardware/camera2/CaptureRequest;

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v7, v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_b1

    .line 1476
    .end local v4    # "requestChars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "crKey":Ljava/lang/Object;
    .end local v7    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    :cond_a9
    new-instance v4, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableRequestKeys must be non-null in the characteristics"

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v4

    .line 1491
    .end local v3    # "requestKeys":[I
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :cond_b1
    :goto_b1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    .line 1492
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_be
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cb

    .line 1495
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_cb} :catch_e0
    .catchall {:try_start_2b .. :try_end_cb} :catchall_de

    .line 1500
    .end local v5    # "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_cb
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1501
    nop

    .line 1503
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 1454
    :cond_d6
    :try_start_d6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v3
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_de} :catch_e0
    .catchall {:try_start_d6 .. :try_end_de} :catchall_de

    .line 1500
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :catchall_de
    move-exception v3

    goto :goto_e9

    .line 1497
    :catch_e0
    move-exception v3

    .line 1498
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_e1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture request keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v4
    :try_end_e9
    .catchall {:try_start_e1 .. :try_end_e9} :catchall_de

    .line 1500
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :goto_e9
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1501
    throw v3

    .line 1447
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    :cond_ef
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAvailableCaptureResultKeys(I)Ljava/util/Set;
    .registers 12
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    .line 1531
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getAvailableCaptureResultKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 1534
    .local v1, "success":Z
    if-eqz v1, :cond_fc

    .line 1538
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1540
    .local v2, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    :try_start_2b
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 1544
    const/4 v3, 0x0

    .line 1545
    .local v3, "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1546
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    .line 1547
    .local v4, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1548
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 1549
    .end local v3    # "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .local v5, "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_88

    .line 1550
    .end local v5    # "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v3    # "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_4e
    nop

    .line 1551
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 1552
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 1553
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 1552
    invoke-interface {v5, v0, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1554
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1555
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 1556
    .end local v3    # "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v5    # "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit(Landroid/os/IBinder;)V

    .line 1559
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :goto_88
    if-eqz v5, :cond_d8

    .line 1560
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1562
    .local v3, "resultKeys":[I
    if-eqz v3, :cond_d0

    .line 1566
    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1567
    .local v4, "resultChars":Landroid/hardware/camera2/CameraCharacteristics;
    const-class v6, Landroid/hardware/camera2/CaptureResult$Key;

    .line 1568
    .local v6, "crKey":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    .line 1570
    .local v7, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    const-class v8, Landroid/hardware/camera2/CaptureResult;

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v7, v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1574
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    .line 1575
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_b5
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 1578
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_c2
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d8

    .line 1581
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 1563
    .end local v4    # "resultChars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "crKey":Ljava/lang/Object;
    .end local v7    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    :cond_d0
    new-instance v4, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableResultKeys must be non-null in the characteristics"

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v4
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_d8} :catch_ed
    .catchall {:try_start_2b .. :try_end_d8} :catchall_eb

    .line 1587
    .end local v3    # "resultKeys":[I
    .end local v5    # "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :cond_d8
    :goto_d8
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1588
    nop

    .line 1590
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 1541
    :cond_e3
    :try_start_e3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v3
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_eb} :catch_ed
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_eb

    .line 1587
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :catchall_eb
    move-exception v3

    goto :goto_f6

    .line 1584
    :catch_ed
    move-exception v3

    .line 1585
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_ee
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture result keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v4
    :try_end_f6
    .catchall {:try_start_ee .. :try_end_f6} :catchall_eb

    .line 1587
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :goto_f6
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1588
    throw v3

    .line 1535
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    :cond_fc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getEstimatedCaptureLatencyRangeMillis(ILandroid/util/Size;I)Landroid/util/Range;
    .registers 14
    .param p1, "extension"    # I
    .param p2, "captureOutputSize"    # Landroid/util/Size;
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1306
    sparse-switch p3, :sswitch_data_138

    .line 1315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    :sswitch_1c
    nop

    .line 1318
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getEstimatedCaptureLatencyRangeMillis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 1321
    .local v1, "success":Z
    if-eqz v1, :cond_130

    .line 1326
    const/4 v2, 0x0

    :try_start_44
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 1330
    new-instance v3, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v3}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 1332
    .local v3, "sz":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->width:I

    .line 1333
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->height:I

    .line 1334
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1335
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    .line 1336
    .local v4, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1337
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5, v3, p3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    .line 1339
    .local v5, "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    if-eqz v5, :cond_8f

    .line 1340
    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_89} :catch_11a
    .catchall {:try_start_44 .. :try_end_89} :catchall_118

    .line 1374
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1340
    return-object v6

    .line 1342
    .end local v4    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .end local v5    # "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    :cond_8f
    goto/16 :goto_108

    .line 1343
    :cond_91
    nop

    .line 1344
    :try_start_92
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 1345
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1346
    const/16 v5, 0x23

    if-ne p3, v5, :cond_be

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 1347
    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_b5} :catch_11a
    .catchall {:try_start_92 .. :try_end_b5} :catchall_118

    if-nez v5, :cond_be

    .line 1350
    nop

    .line 1374
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1350
    return-object v2

    .line 1352
    :cond_be
    const/16 v5, 0x100

    if-ne p3, v5, :cond_d3

    :try_start_c2
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 1353
    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_ca} :catch_11a
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_118

    if-eqz v5, :cond_d3

    .line 1357
    nop

    .line 1374
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1357
    return-object v2

    .line 1359
    :cond_d3
    const/16 v5, 0x1005

    if-eq p3, v5, :cond_109

    const/16 v5, 0x36

    if-eq p3, v5, :cond_109

    .line 1360
    :try_start_db
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->depthJpegExtensions()Z

    move-result v5

    if-eqz v5, :cond_e7

    const v5, 0x69656963

    if-ne p3, v5, :cond_e7

    goto :goto_109

    .line 1365
    :cond_e7
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    .line 1366
    .restart local v5    # "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    if-eqz v5, :cond_108

    .line 1367
    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_102} :catch_11a
    .catchall {:try_start_db .. :try_end_102} :catchall_118

    .line 1374
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1367
    return-object v6

    .line 1374
    .end local v3    # "sz":Landroid/hardware/camera2/extension/Size;
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v5    # "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    :cond_108
    :goto_108
    goto :goto_123

    .line 1362
    .restart local v3    # "sz":Landroid/hardware/camera2/extension/Size;
    .restart local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_109
    :goto_109
    nop

    .line 1374
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1362
    return-object v2

    .line 1327
    .end local v3    # "sz":Landroid/hardware/camera2/extension/Size;
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_110
    :try_start_110
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "captureOutputSize":Landroid/util/Size;
    .end local p3    # "format":I
    throw v3
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_118} :catch_11a
    .catchall {:try_start_110 .. :try_end_118} :catchall_118

    .line 1374
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "captureOutputSize":Landroid/util/Size;
    .restart local p3    # "format":I
    :catchall_118
    move-exception v2

    goto :goto_12a

    .line 1370
    :catch_11a
    move-exception v3

    .line 1371
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_11b
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension capture latency! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_11b .. :try_end_122} :catchall_118

    .line 1374
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_123
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1375
    nop

    .line 1377
    return-object v2

    .line 1374
    :goto_12a
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1375
    throw v2

    .line 1322
    :cond_130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_138
    .sparse-switch
        0x23 -> :sswitch_1c
        0x36 -> :sswitch_1c
        0x100 -> :sswitch_1c
        0x1005 -> :sswitch_1c
        0x69656963 -> :sswitch_1c
    .end sparse-switch
.end method

.method public whitelist getExtensionSupportedSizes(II)Ljava/util/List;
    .registers 11
    .param p1, "extension"    # I
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1214
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getExtensionSupportedSizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_161

    .line 1217
    .local v1, "success":Z
    if-eqz v1, :cond_159

    .line 1222
    :try_start_26
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 1226
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1228
    .local v2, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_151

    const-string v4, "Unsupported format: "

    if-eqz v3, :cond_85

    .line 1229
    sparse-switch p2, :sswitch_data_170

    .line 1237
    :try_start_4d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_70

    .line 1235
    :sswitch_50
    nop

    .line 1239
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 1240
    .local v3, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1241
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1241
    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_151

    .line 1277
    :try_start_6a
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6f} :catch_161

    .line 1241
    return-object v4

    .line 1237
    .end local v3    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :goto_70
    :try_start_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v3

    .line 1244
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :cond_85
    const/16 v3, 0x23

    if-ne p2, v3, :cond_cc

    .line 1245
    nop

    .line 1246
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    .line 1247
    .local v3, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1248
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-nez v4, :cond_b6

    .line 1251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_b0
    .catchall {:try_start_70 .. :try_end_b0} :catchall_151

    .line 1277
    :try_start_b0
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b5} :catch_161

    .line 1251
    return-object v4

    .line 1253
    :cond_b6
    :try_start_b6
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    .line 1254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1253
    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_c6
    .catchall {:try_start_b6 .. :try_end_c6} :catchall_151

    .line 1277
    :try_start_c6
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cb} :catch_161

    .line 1253
    return-object v4

    .line 1255
    .end local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_cc
    const/16 v3, 0x100

    if-ne p2, v3, :cond_113

    .line 1256
    nop

    .line 1257
    :try_start_d1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    .line 1258
    .restart local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1259
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-eqz v4, :cond_104

    .line 1262
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 1263
    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    .line 1262
    invoke-static {v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_fe
    .catchall {:try_start_d1 .. :try_end_fe} :catchall_151

    .line 1277
    :try_start_fe
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_103} :catch_161

    .line 1262
    return-object v4

    .line 1265
    :cond_104
    :try_start_104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_10d
    .catchall {:try_start_104 .. :try_end_10d} :catchall_151

    .line 1277
    :try_start_10d
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_112} :catch_161

    .line 1265
    return-object v4

    .line 1267
    .end local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_113
    const/16 v3, 0x1005

    if-eq p2, v3, :cond_13e

    const/16 v3, 0x36

    if-eq p2, v3, :cond_13e

    .line 1268
    :try_start_11b
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->depthJpegExtensions()Z

    move-result v3

    if-eqz v3, :cond_127

    const v3, 0x69656963

    if-ne p2, v3, :cond_127

    goto :goto_13e

    .line 1273
    :cond_127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v3

    .line 1271
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :cond_13e
    :goto_13e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_143
    .catchall {:try_start_11b .. :try_end_143} :catchall_151

    .line 1277
    :try_start_143
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_148} :catch_161

    .line 1271
    return-object v3

    .line 1223
    .end local v2    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_149
    :try_start_149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v2
    :try_end_151
    .catchall {:try_start_149 .. :try_end_151} :catchall_151

    .line 1277
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :catchall_151
    move-exception v2

    :try_start_152
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1278
    nop

    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v2

    .line 1218
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :cond_159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v2
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_161} :catch_161

    .line 1279
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :catch_161
    move-exception v0

    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraExtensionCharacteristics"

    const-string v2, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    nop

    :sswitch_data_170
    .sparse-switch
        0x23 -> :sswitch_50
        0x36 -> :sswitch_50
        0x100 -> :sswitch_50
        0x1005 -> :sswitch_50
        0x69656963 -> :sswitch_50
    .end sparse-switch
.end method

.method public whitelist getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;
    .registers 12
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1145
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1151
    :cond_c
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getExtensionSupportedSizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 1154
    .local v1, "success":Z
    if-eqz v1, :cond_c6

    .line 1159
    :try_start_32
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 1163
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1165
    .local v2, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3

    const/16 v4, 0x22

    if-eqz v3, :cond_75

    .line 1166
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 1167
    .local v3, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1168
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 1169
    invoke-interface {v3, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1170
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1168
    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_6f} :catch_ad
    .catchall {:try_start_32 .. :try_end_6f} :catchall_ab

    .line 1184
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1168
    return-object v4

    .line 1172
    .end local v3    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :cond_75
    nop

    .line 1173
    :try_start_76
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    .line 1174
    .local v3, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 1175
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 1174
    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1176
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v5

    .line 1177
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1176
    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_9d} :catch_ad
    .catchall {:try_start_76 .. :try_end_9d} :catchall_ab

    .line 1184
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1176
    return-object v4

    .line 1160
    .end local v2    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_a3
    :try_start_a3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v2
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_ab} :catch_ad
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_ab

    .line 1184
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_ab
    move-exception v2

    goto :goto_c0

    .line 1179
    :catch_ad
    move-exception v2

    .line 1180
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_ae
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_ba
    .catchall {:try_start_ae .. :try_end_ba} :catchall_ab

    .line 1184
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1182
    return-object v3

    .line 1184
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_c0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1185
    throw v2

    .line 1155
    :cond_c6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getKeys(I)Ljava/util/Set;
    .registers 14
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            ">;"
        }
    .end annotation

    .line 908
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 910
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 912
    .local v1, "success":Z
    if-eqz v1, :cond_bf

    .line 916
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 919
    .local v2, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CameraCharacteristics$Key;>;"
    :try_start_2b
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 923
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 924
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 925
    .local v3, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 926
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 927
    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    .line 928
    .local v4, "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    if-nez v4, :cond_58

    .line 929
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_52} :catch_a5
    .catchall {:try_start_2b .. :try_end_52} :catchall_a3

    .line 961
    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 929
    return-object v5

    .line 932
    :cond_58
    :try_start_58
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 934
    .local v5, "keys":[I
    if-eqz v5, :cond_92

    .line 939
    new-instance v6, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v6, v4}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 941
    .local v6, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    const-class v7, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 942
    .local v7, "key":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Class;

    .line 945
    .local v8, "keyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    const-class v9, Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v5, v10}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 951
    sget-object v9, Landroid/hardware/camera2/CameraExtensionCharacteristics;->SUPPORTED_SYNTHETIC_CAMERA_CHARACTERISTICS:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 952
    .local v10, "charKey":Landroid/hardware/camera2/CameraCharacteristics$Key;
    invoke-virtual {v6, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_91

    .line 953
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v10    # "charKey":Landroid/hardware/camera2/CameraCharacteristics$Key;
    :cond_91
    goto :goto_7c

    .line 935
    .end local v6    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v7    # "key":Ljava/lang/Object;
    .end local v8    # "keyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    :cond_92
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "android.request.availableCharacteristicsKeys must be non-null in the characteristics"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CameraCharacteristics$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v6

    .line 961
    .end local v3    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .end local v4    # "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "keys":[I
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CameraCharacteristics$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :cond_9a
    goto :goto_ae

    .line 920
    :cond_9b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CameraCharacteristics$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v3
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_a3} :catch_a5
    .catchall {:try_start_58 .. :try_end_a3} :catchall_a3

    .line 961
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CameraCharacteristics$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :catchall_a3
    move-exception v3

    goto :goto_b9

    .line 957
    :catch_a5
    move-exception v3

    .line 958
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_a6
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension for all available keys! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_a3

    .line 961
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_ae
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 962
    nop

    .line 963
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 961
    :goto_b9
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 962
    throw v3

    .line 913
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CameraCharacteristics$Key;>;"
    :cond_bf
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getPostviewSupportedSizes(ILandroid/util/Size;I)Ljava/util/List;
    .registers 14
    .param p1, "extension"    # I
    .param p2, "captureSize"    # Landroid/util/Size;
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1044
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getPostviewSupportedSizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 1047
    .local v1, "success":Z
    if-eqz v1, :cond_150

    .line 1052
    :try_start_26
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 1056
    new-instance v2, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 1058
    .local v2, "sz":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->width:I

    .line 1059
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->height:I

    .line 1061
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1064
    .local v3, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_57} :catch_138
    .catchall {:try_start_26 .. :try_end_57} :catchall_136

    const-string v5, "Unsupported format: "

    if-eqz v4, :cond_94

    .line 1065
    sparse-switch p3, :sswitch_data_158

    .line 1073
    :try_start_5e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    goto :goto_7f

    .line 1071
    :sswitch_61
    nop

    .line 1075
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    .line 1076
    .local v4, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1077
    invoke-interface {v4, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v5

    .line 1078
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1077
    invoke-static {v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_79} :catch_138
    .catchall {:try_start_5e .. :try_end_79} :catchall_136

    .line 1114
    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1077
    return-object v5

    .line 1073
    .end local v4    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :goto_7f
    :try_start_7f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "captureSize":Landroid/util/Size;
    .end local p3    # "format":I
    throw v4

    .line 1080
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "captureSize":Landroid/util/Size;
    .restart local p3    # "format":I
    :cond_94
    nop

    .line 1081
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 1082
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v9, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v6, v7, v8}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1083
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v6

    if-eqz v6, :cond_126

    .line 1084
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isPostviewAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_126

    .line 1092
    const/16 v6, 0x23

    if-ne p3, v6, :cond_d6

    .line 1093
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 1094
    invoke-interface {v5, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1093
    invoke-static {v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_d0} :catch_138
    .catchall {:try_start_7f .. :try_end_d0} :catchall_136

    .line 1114
    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1093
    return-object v5

    .line 1095
    :cond_d6
    const/16 v6, 0x100

    if-ne p3, v6, :cond_f0

    .line 1098
    :try_start_da
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 1099
    invoke-interface {v5, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1098
    invoke-static {v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_ea} :catch_138
    .catchall {:try_start_da .. :try_end_ea} :catchall_136

    .line 1114
    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1098
    return-object v5

    .line 1100
    :cond_f0
    const/16 v6, 0x1005

    if-eq p3, v6, :cond_11b

    const/16 v6, 0x36

    if-eq p3, v6, :cond_11b

    .line 1101
    :try_start_f8
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->depthJpegExtensions()Z

    move-result v6

    if-eqz v6, :cond_104

    const v6, 0x69656963

    if-ne p3, v6, :cond_104

    goto :goto_11b

    .line 1106
    :cond_104
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "captureSize":Landroid/util/Size;
    .end local p3    # "format":I
    throw v6

    .line 1104
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "captureSize":Landroid/util/Size;
    .restart local p3    # "format":I
    :cond_11b
    :goto_11b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_120} :catch_138
    .catchall {:try_start_f8 .. :try_end_120} :catchall_136

    .line 1114
    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1104
    return-object v5

    .line 1088
    :cond_126
    :try_start_126
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Extension does not support postview feature"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "captureSize":Landroid/util/Size;
    .end local p3    # "format":I
    throw v5

    .line 1053
    .end local v2    # "sz":Landroid/hardware/camera2/extension/Size;
    .end local v3    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "captureSize":Landroid/util/Size;
    .restart local p3    # "format":I
    :cond_12e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "captureSize":Landroid/util/Size;
    .end local p3    # "format":I
    throw v2
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_136} :catch_138
    .catchall {:try_start_126 .. :try_end_136} :catchall_136

    .line 1114
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "captureSize":Landroid/util/Size;
    .restart local p3    # "format":I
    :catchall_136
    move-exception v2

    goto :goto_14a

    .line 1109
    :catch_138
    move-exception v2

    .line 1110
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_139
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension postview supported sizes! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_144
    .catchall {:try_start_139 .. :try_end_144} :catchall_136

    .line 1114
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1112
    return-object v3

    .line 1114
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_14a
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1115
    throw v2

    .line 1048
    :cond_150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_158
    .sparse-switch
        0x23 -> :sswitch_61
        0x36 -> :sswitch_61
        0x100 -> :sswitch_61
        0x1005 -> :sswitch_61
        0x69656963 -> :sswitch_61
    .end sparse-switch
.end method

.method public whitelist getSupportedExtensions()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraExtensionCharacteristics#getSupportedExtensions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 824
    .local v1, "token":Landroid/os/IBinder;
    new-instance v2, Landroid/util/IntArray;

    sget-object v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/util/IntArray;-><init>(I)V

    .line 825
    .local v2, "extensionList":Landroid/util/IntArray;
    sget-object v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->addAll([I)V

    .line 827
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v4, :cond_63

    aget v6, v3, v5

    .line 829
    .local v6, "extensionType":I
    :try_start_36
    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v7, v1, v6, v8, v9}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v7

    .line 831
    .local v7, "success":Z
    if-eqz v7, :cond_53

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v8, v6, v9}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 833
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_5c

    .line 836
    .end local v7    # "success":Z
    :cond_53
    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v7, v1, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 837
    nop

    .line 827
    .end local v6    # "extensionType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 836
    .restart local v6    # "extensionType":I
    :catchall_5c
    move-exception v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 837
    throw v3

    .line 840
    .end local v6    # "extensionType":I
    :cond_63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public whitelist isCaptureProcessProgressAvailable(I)Z
    .registers 9
    .param p1, "extension"    # I

    .line 1390
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#isCaptureProcessProgressAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 1393
    .local v1, "success":Z
    if-eqz v1, :cond_92

    .line 1398
    :try_start_26
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1402
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1403
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v2

    .line 1404
    .local v2, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1405
    invoke-interface {v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isCaptureProcessProgressAvailable()Z

    move-result v3
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_45} :catch_7b
    .catchall {:try_start_26 .. :try_end_45} :catchall_79

    .line 1416
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1405
    return v3

    .line 1407
    .end local v2    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :cond_4b
    nop

    .line 1408
    :try_start_4c
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v2

    .line 1409
    .local v2, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1410
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isCaptureProcessProgressAvailable()Z

    move-result v3
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_6b} :catch_7b
    .catchall {:try_start_4c .. :try_end_6b} :catchall_79

    .line 1416
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1410
    return v3

    .line 1399
    .end local v2    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_71
    :try_start_71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v2
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_79} :catch_7b
    .catchall {:try_start_71 .. :try_end_79} :catchall_79

    .line 1416
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :catchall_79
    move-exception v2

    goto :goto_8c

    .line 1412
    :catch_7b
    move-exception v2

    .line 1413
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7c
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension progress callbacks! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_79

    .line 1416
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1417
    nop

    .line 1419
    const/4 v2, 0x0

    return v2

    .line 1416
    :goto_8c
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1417
    throw v2

    .line 1394
    :cond_92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist isPostviewAvailable(I)Z
    .registers 9
    .param p1, "extension"    # I

    .line 986
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#isPostviewAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 989
    .local v1, "success":Z
    if-eqz v1, :cond_92

    .line 994
    :try_start_26
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 998
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 999
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v2

    .line 1000
    .local v2, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 1001
    invoke-interface {v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isPostviewAvailable()Z

    move-result v3
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_45} :catch_7b
    .catchall {:try_start_26 .. :try_end_45} :catchall_79

    .line 1012
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1001
    return v3

    .line 1003
    .end local v2    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :cond_4b
    nop

    .line 1004
    :try_start_4c
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v2

    .line 1005
    .local v2, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1006
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isPostviewAvailable()Z

    move-result v3
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_6b} :catch_7b
    .catchall {:try_start_4c .. :try_end_6b} :catchall_79

    .line 1012
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1006
    return v3

    .line 995
    .end local v2    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_71
    :try_start_71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v2
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_79} :catch_7b
    .catchall {:try_start_71 .. :try_end_79} :catchall_79

    .line 1012
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :catchall_79
    move-exception v2

    goto :goto_8c

    .line 1008
    :catch_7b
    move-exception v2

    .line 1009
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7c
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension for postview availability! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_79

    .line 1012
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1013
    nop

    .line 1015
    const/4 v2, 0x0

    return v2

    .line 1012
    :goto_8c
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 1013
    throw v2

    .line 990
    :cond_92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
