.class public final Landroid/companion/CompanionDeviceManager;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;,
        Landroid/companion/CompanionDeviceManager$Callback;,
        Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;,
        Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;,
        Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;,
        Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;,
        Landroid/companion/CompanionDeviceManager$Transport;,
        Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;,
        Landroid/companion/CompanionDeviceManager$TransportFlags;,
        Landroid/companion/CompanionDeviceManager$DataSyncTypes;,
        Landroid/companion/CompanionDeviceManager$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_ASSOCIATION:Ljava/lang/String; = "android.companion.extra.ASSOCIATION"

.field public static final whitelist EXTRA_DEVICE:Ljava/lang/String; = "android.companion.extra.DEVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_CALL_METADATA:I = 0x1

.field private static final blacklist ICON_TARGET_SIZE:I = 0x18

.field public static final blacklist MESSAGE_ONEWAY_FROM_WEARABLE:I = 0x43708287

.field public static final blacklist MESSAGE_ONEWAY_PING:I = 0x43807378

.field public static final blacklist MESSAGE_ONEWAY_TO_WEARABLE:I = 0x43847987

.field public static final blacklist MESSAGE_REQUEST_CONTEXT_SYNC:I = 0x63678883

.field public static final blacklist MESSAGE_REQUEST_PERMISSION_RESTORE:I = 0x63826983

.field public static final blacklist MESSAGE_REQUEST_PING:I = 0x63807378

.field public static final blacklist MESSAGE_REQUEST_REMOTE_AUTHENTICATION:I = 0x63827765

.field public static final blacklist REASON_CANCELED:Ljava/lang/String; = "canceled"

.field public static final blacklist REASON_DISCOVERY_TIMEOUT:Ljava/lang/String; = "discovery_timeout"

.field public static final blacklist REASON_INTERNAL_ERROR:Ljava/lang/String; = "internal_error"

.field public static final blacklist REASON_USER_REJECTED:Ljava/lang/String; = "user_rejected"

.field public static final whitelist RESULT_CANCELED:I = 0x0

.field public static final whitelist RESULT_DISCOVERY_TIMEOUT:I = 0x2

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x3

.field public static final whitelist RESULT_OK:I = -0x1

.field public static final whitelist RESULT_SECURITY_ERROR:I = 0x4

.field public static final whitelist RESULT_USER_REJECTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CDM_CompanionDeviceManager"

.field public static final blacklist TRANSPORT_FLAG_EXTEND_PATCH_DIFF:I = 0x1


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/companion/ICompanionDeviceManager;

.field private final blacklist mTransports:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/companion/CompanionDeviceManager$Transport;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransportsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;
    .registers 1

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/companion/ICompanionDeviceManager;Landroid/content/Context;)V
    .registers 4
    .param p1, "service"    # Landroid/companion/ICompanionDeviceManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    .line 430
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    .line 436
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 437
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 438
    return-void
.end method

.method static synthetic blacklist lambda$getAssociations$0(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "a"    # Landroid/companion/AssociationInfo;

    .line 717
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method private blacklist scaleIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .registers 9
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "context"    # Landroid/content/Context;

    .line 2092
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2093
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4f

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4f

    .line 2098
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2099
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-eqz v1, :cond_29

    .line 2100
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2101
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2100
    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4a

    .line 2104
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_29
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2106
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2107
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2108
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2111
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :goto_4a
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    .line 2094
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The URI based Icon is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 978
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;I)V

    .line 979
    return-void
.end method

.method public blacklist addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;I)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .param p3, "userId"    # I

    .line 991
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 992
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 996
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 997
    :try_start_f
    new-instance v1, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;Landroid/companion/CompanionDeviceManager-IA;)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_29

    .line 1000
    .local v1, "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    :try_start_15
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v2, v1, p3}, Landroid/companion/ICompanionDeviceManager;->addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_23
    .catchall {:try_start_15 .. :try_end_1a} :catchall_29

    .line 1003
    nop

    .line 1004
    :try_start_1b
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    nop

    .end local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    monitor-exit v0

    .line 1006
    return-void

    .line 1001
    .restart local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    :catch_23
    move-exception v2

    .line 1002
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .end local p3    # "userId":I
    throw v3

    .line 1005
    .end local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .restart local p3    # "userId":I
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist addOnMessageReceivedListener(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "messageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 1139
    .local p3, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;[B>;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1140
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void

    .line 1144
    :cond_c
    new-instance v0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/companion/CompanionDeviceManager-IA;)V

    .line 1147
    .local v0, "proxy":Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;
    :try_start_12
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v1, p2, v0}, Landroid/companion/ICompanionDeviceManager;->addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    .line 1150
    nop

    .line 1151
    return-void

    .line 1148
    :catch_19
    move-exception v1

    .line 1149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist addOnTransportsChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1055
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/companion/AssociationInfo;>;>;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1056
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1060
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1061
    :try_start_f
    new-instance v1, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/companion/CompanionDeviceManager-IA;)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_29

    .line 1064
    .local v1, "proxy":Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;
    :try_start_15
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v2, v1}, Landroid/companion/ICompanionDeviceManager;->addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_23
    .catchall {:try_start_15 .. :try_end_1a} :catchall_29

    .line 1067
    nop

    .line 1068
    :try_start_1b
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    nop

    .end local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;
    monitor-exit v0

    .line 1070
    return-void

    .line 1065
    .restart local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;
    :catch_23
    move-exception v2

    .line 1066
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/companion/AssociationInfo;>;>;"
    throw v3

    .line 1069
    .end local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/companion/AssociationInfo;>;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist associate(Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .registers 8
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 483
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 484
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 488
    :cond_c
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 489
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    invoke-static {p3}, Landroid/os/Handler;->mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p3

    .line 492
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 493
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 494
    .local v0, "deviceIcon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_2f

    .line 495
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager;->scaleIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/companion/AssociationRequest;->setDeviceIcon(Landroid/graphics/drawable/Icon;)V

    .line 500
    .end local v0    # "deviceIcon":Landroid/graphics/drawable/Icon;
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p2, v2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 501
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 500
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_46} :catch_48

    .line 504
    nop

    .line 505
    return-void

    .line 502
    :catch_48
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist associate(Landroid/companion/AssociationRequest;Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 8
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;

    .line 554
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 555
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void

    .line 559
    :cond_c
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 560
    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 561
    const-string v0, "Callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 563
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 564
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 565
    .local v0, "deviceIcon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_30

    .line 566
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager;->scaleIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/companion/AssociationRequest;->setDeviceIcon(Landroid/graphics/drawable/Icon;)V

    .line 571
    .end local v0    # "deviceIcon":Landroid/graphics/drawable/Icon;
    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 572
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 571
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_47} :catch_49

    .line 575
    nop

    .line 576
    return-void

    .line 573
    :catch_49
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist associate(Ljava/lang/String;Landroid/net/MacAddress;[B)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Landroid/net/MacAddress;
    .param p3, "certificate"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1568
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1569
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    return-void

    .line 1573
    :cond_c
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1574
    const-string/jumbo v0, "mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1576
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1578
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_1c
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 1579
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1578
    invoke-interface {v1, p1, v2, v3, p3}, Landroid/companion/ICompanionDeviceManager;->createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2b

    .line 1582
    nop

    .line 1583
    return-void

    .line 1580
    :catch_2b
    move-exception v1

    .line 1581
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 12
    .param p1, "associationId"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1462
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return-void

    .line 1466
    :cond_c
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1467
    :try_start_f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_47

    if-eqz v0, :cond_21

    .line 1468
    :try_start_17
    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 1478
    :catchall_1b
    move-exception v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    goto :goto_4c

    .line 1472
    :cond_21
    :goto_21
    :try_start_21
    new-instance v2, Landroid/companion/CompanionDeviceManager$Transport;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_23} :catch_39
    .catchall {:try_start_21 .. :try_end_23} :catchall_47

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "associationId":I
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "out":Ljava/io/OutputStream;
    .local v4, "associationId":I
    .local v5, "in":Ljava/io/InputStream;
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_28
    invoke-direct/range {v2 .. v7}, Landroid/companion/CompanionDeviceManager$Transport;-><init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 1473
    .local v2, "transport":Landroid/companion/CompanionDeviceManager$Transport;
    iget-object p1, v3, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1474
    invoke-virtual {v2}, Landroid/companion/CompanionDeviceManager$Transport;->start()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_36
    .catchall {:try_start_28 .. :try_end_33} :catchall_4e

    .line 1477
    .end local v2    # "transport":Landroid/companion/CompanionDeviceManager$Transport;
    nop

    .line 1478
    :try_start_34
    monitor-exit v1

    .line 1479
    return-void

    .line 1475
    :catch_36
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .end local v4    # "associationId":I
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local p1    # "associationId":I
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "out":Ljava/io/OutputStream;
    :catch_39
    move-exception v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .line 1476
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "associationId":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .local p1, "e":Ljava/io/IOException;
    :goto_3f
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to attach transport"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "associationId":I
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    throw p2

    .line 1478
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .local p1, "associationId":I
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "out":Ljava/io/OutputStream;
    :catchall_47
    move-exception v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "associationId":I
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "associationId":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_4e

    throw v0

    :catchall_4e
    move-exception v0

    goto :goto_4c
.end method

.method public blacklist attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 13
    .param p1, "associationId"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/OutputStream;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1507
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void

    .line 1511
    :cond_c
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1512
    :try_start_f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_49

    if-eqz v0, :cond_22

    .line 1513
    :try_start_17
    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_22

    .line 1523
    :catchall_1b
    move-exception v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    goto :goto_4f

    .line 1517
    :cond_22
    :goto_22
    :try_start_22
    new-instance v2, Landroid/companion/CompanionDeviceManager$Transport;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_24} :catch_3a
    .catchall {:try_start_22 .. :try_end_24} :catchall_49

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "associationId":I
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "out":Ljava/io/OutputStream;
    .end local p4    # "flags":I
    .local v4, "associationId":I
    .local v5, "in":Ljava/io/InputStream;
    .local v6, "out":Ljava/io/OutputStream;
    .local v7, "flags":I
    :try_start_29
    invoke-direct/range {v2 .. v7}, Landroid/companion/CompanionDeviceManager$Transport;-><init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 1518
    .local v2, "transport":Landroid/companion/CompanionDeviceManager$Transport;
    iget-object p1, v3, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1519
    invoke-virtual {v2}, Landroid/companion/CompanionDeviceManager$Transport;->start()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_34} :catch_37
    .catchall {:try_start_29 .. :try_end_34} :catchall_51

    .line 1522
    .end local v2    # "transport":Landroid/companion/CompanionDeviceManager$Transport;
    nop

    .line 1523
    :try_start_35
    monitor-exit v1

    .line 1524
    return-void

    .line 1520
    :catch_37
    move-exception v0

    move-object p1, v0

    goto :goto_41

    .end local v4    # "associationId":I
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "flags":I
    .restart local p1    # "associationId":I
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "out":Ljava/io/OutputStream;
    .restart local p4    # "flags":I
    :catch_3a
    move-exception v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 1521
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "out":Ljava/io/OutputStream;
    .end local p4    # "flags":I
    .restart local v4    # "associationId":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "flags":I
    .local p1, "e":Ljava/io/IOException;
    :goto_41
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to attach transport"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "associationId":I
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "flags":I
    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    throw p2

    .line 1523
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .local p1, "associationId":I
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "out":Ljava/io/OutputStream;
    .restart local p4    # "flags":I
    :catchall_49
    move-exception v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "associationId":I
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "out":Ljava/io/OutputStream;
    .end local p4    # "flags":I
    .restart local v4    # "associationId":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "flags":I
    :goto_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_51

    throw v0

    :catchall_51
    move-exception v0

    goto :goto_4f
.end method

.method public whitelist buildAssociationCancellationIntent()Landroid/content/IntentSender;
    .registers 4

    .line 594
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 595
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    return-object v0

    .line 600
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 601
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 600
    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 602
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_23} :catch_24

    return-object v1

    .line 603
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_24
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist buildPermissionTransferUserConsentIntent(I)Landroid/content/IntentSender;
    .registers 6
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1668
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1669
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v2, "CompanionDeviceManager service is not available."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return-object v1

    .line 1674
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1675
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1676
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1674
    invoke-interface {v0, v2, v3, p1}, Landroid/companion/ICompanionDeviceManager;->buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1678
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_22

    .line 1679
    return-object v1

    .line 1681
    :cond_22
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_26} :catch_27

    return-object v1

    .line 1682
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_27
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1684
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1191
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 1192
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v0, 0x0

    return v0

    .line 1196
    :cond_d
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1197
    const-string v0, "device mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1198
    const-string/jumbo v0, "user handle cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1200
    :try_start_1e
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 1201
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1200
    invoke-interface {v0, p1, p2, v1}, Landroid/companion/ICompanionDeviceManager;->canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return v0

    .line 1202
    :catch_29
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist detachSystemDataTransport(I)V
    .registers 5
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1539
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1540
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return-void

    .line 1544
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1545
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/CompanionDeviceManager$Transport;

    .line 1546
    .local v1, "transport":Landroid/companion/CompanionDeviceManager$Transport;
    if-eqz v1, :cond_21

    .line 1547
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1548
    invoke-virtual {v1}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    .line 1550
    .end local v1    # "transport":Landroid/companion/CompanionDeviceManager$Transport;
    :cond_21
    monitor-exit v0

    .line 1551
    return-void

    .line 1550
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist disablePermissionsSync(I)V
    .registers 4
    .param p1, "associationId"    # I

    .line 674
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 675
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void

    .line 680
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->disablePermissionsSync(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 683
    nop

    .line 684
    return-void

    .line 681
    :catch_13
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disableSystemDataSyncForTypes(II)V
    .registers 5
    .param p1, "associationId"    # I
    .param p2, "flags"    # I

    .line 642
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 643
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 648
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->disableSystemDataSync(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 651
    nop

    .line 652
    return-void

    .line 649
    :catch_13
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disassociate(I)V
    .registers 4
    .param p1, "associationId"    # I

    .line 789
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 790
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void

    .line 795
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->disassociate(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 798
    nop

    .line 799
    return-void

    .line 796
    :catch_13
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disassociate(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceMacAddress"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 762
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void

    .line 767
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 768
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 767
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f

    .line 771
    nop

    .line 772
    return-void

    .line 769
    :catch_1f
    move-exception v0

    .line 770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist dispatchMessage(II[B)V
    .registers 6
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1439
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "dispatchMessage replaced by attachSystemDataTransport"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return-void
.end method

.method public blacklist enablePermissionsSync(I)V
    .registers 4
    .param p1, "associationId"    # I

    .line 658
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 659
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void

    .line 664
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->enablePermissionsSync(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 667
    nop

    .line 668
    return-void

    .line 665
    :catch_13
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableSecureTransport(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1822
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1823
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-void

    .line 1828
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->enableSecureTransport(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1831
    nop

    .line 1832
    return-void

    .line 1829
    :catch_13
    move-exception v0

    .line 1830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableSystemDataSyncForTypes(II)V
    .registers 5
    .param p1, "associationId"    # I
    .param p2, "flags"    # I

    .line 619
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 620
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void

    .line 625
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->enableSystemDataSync(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 628
    nop

    .line 629
    return-void

    .line 626
    :catch_13
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllAssociations()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceManager;->getAllAssociations(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllAssociations(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_10

    .line 940
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 945
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    .line 946
    :catch_17
    move-exception v0

    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAssociations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 716
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager;->getMyAssociations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/companion/CompanionDeviceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/companion/CompanionDeviceManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMyAssociations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_10

    .line 730
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 735
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_23

    return-object v0

    .line 736
    :catch_23
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .registers 4
    .param p1, "associationId"    # I

    .line 690
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 691
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v0, 0x0

    return-object v0

    .line 696
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    .line 697
    :catch_14
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 860
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v0, 0x0

    return v0

    .line 865
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    .line 866
    :catch_14
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isCompanionApplicationBound()Z
    .registers 4

    .line 1799
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 1800
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const/4 v0, 0x0

    return v0

    .line 1805
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1806
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1805
    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->isCompanionApplicationBound(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    return v0

    .line 1807
    :catch_20
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceAssociatedForWifiConnection(Ljava/lang/String;Landroid/net/MacAddress;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Landroid/net/MacAddress;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 899
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 900
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v0, 0x0

    return v0

    .line 904
    :cond_d
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 905
    const-string/jumbo v0, "mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 906
    const-string/jumbo v0, "user cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 908
    :try_start_1f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 909
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 908
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2d} :catch_2e

    return v0

    .line 910
    :catch_2e
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPermissionTransferUserConsented(I)Z
    .registers 5
    .param p1, "associationId"    # I

    .line 1709
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 1710
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v0, 0x0

    return v0

    .line 1715
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1716
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1715
    invoke-interface {v0, v1, v2, p1}, Landroid/companion/ICompanionDeviceManager;->isPermissionTransferUserConsented(Ljava/lang/String;II)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    return v0

    .line 1717
    :catch_20
    move-exception v0

    .line 1718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1719
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyDeviceAppeared(I)V
    .registers 4
    .param p1, "associationId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1601
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1602
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-void

    .line 1607
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->notifySelfManagedDeviceAppeared(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1610
    nop

    .line 1611
    return-void

    .line 1608
    :catch_13
    move-exception v0

    .line 1609
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyDeviceDisappeared(I)V
    .registers 4
    .param p1, "associationId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1628
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1629
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void

    .line 1634
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->notifySelfManagedDeviceDisappeared(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1637
    nop

    .line 1638
    return-void

    .line 1635
    :catch_13
    move-exception v0

    .line 1636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeBond(I)Z
    .registers 5
    .param p1, "associationId"    # I

    .line 1226
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 1227
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v0, 0x0

    return v0

    .line 1232
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1233
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1232
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->removeBond(ILjava/lang/String;I)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    return v0

    .line 1234
    :catch_20
    move-exception v0

    .line 1235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnAssociationsChangedListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1019
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1020
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void

    .line 1024
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1025
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1026
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1027
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    .line 1028
    .local v2, "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    invoke-static {v2}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->-$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;)Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_40

    if-ne v3, p1, :cond_3d

    .line 1030
    :try_start_27
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v4, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/companion/ICompanionDeviceManager;->removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_37
    .catchall {:try_start_27 .. :try_end_32} :catchall_40

    .line 1033
    nop

    .line 1034
    :try_start_33
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3d

    .line 1031
    :catch_37
    move-exception v3

    .line 1032
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .end local p1    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    throw v4

    .line 1036
    .end local v2    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .restart local p1    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    :cond_3d
    :goto_3d
    goto :goto_15

    .line 1037
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;>;"
    :cond_3e
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public blacklist removeOnMessageReceivedListener(ILjava/util/function/BiConsumer;)V
    .registers 6
    .param p1, "messageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 1161
    .local p2, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;[B>;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1162
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void

    .line 1166
    :cond_c
    new-instance v0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/companion/CompanionDeviceManager-IA;)V

    .line 1169
    .local v0, "proxy":Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;
    :try_start_12
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v1, p1, v0}, Landroid/companion/ICompanionDeviceManager;->removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    .line 1172
    nop

    .line 1173
    return-void

    .line 1170
    :catch_19
    move-exception v1

    .line 1171
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist removeOnTransportsChangedListener(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1082
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/companion/AssociationInfo;>;>;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1083
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void

    .line 1087
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1088
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    .line 1089
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1090
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1091
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;

    .line 1092
    .local v2, "proxy":Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;
    invoke-static {v2}, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->-$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;)Ljava/util/function/Consumer;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_3a

    if-ne v3, p1, :cond_37

    .line 1094
    :try_start_27
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v3, v2}, Landroid/companion/ICompanionDeviceManager;->removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_31
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3a

    .line 1097
    nop

    .line 1098
    :try_start_2d
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 1095
    :catch_31
    move-exception v3

    .line 1096
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .end local p1    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/companion/AssociationInfo;>;>;"
    throw v4

    .line 1100
    .end local v2    # "proxy":Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .restart local p1    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/companion/AssociationInfo;>;>;"
    :cond_37
    :goto_37
    goto :goto_15

    .line 1101
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;>;"
    :cond_38
    monitor-exit v0

    .line 1102
    return-void

    .line 1101
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public whitelist requestNotificationAccess(Landroid/content/ComponentName;)V
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 818
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 819
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void

    .line 824
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 825
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 824
    invoke-interface {v0, p1, v1}, Landroid/companion/ICompanionDeviceManager;->requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 827
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_1b

    .line 828
    return-void

    .line 830
    :cond_1b
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    move-object v3, v1

    .line 832
    .local v3, "intentSender":Landroid/content/IntentSender;
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 833
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 834
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 832
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_3f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_36} :catch_38

    .line 839
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 840
    return-void

    .line 837
    :catch_38
    move-exception v0

    .line 838
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 835
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_3f
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendMessage(I[B[I)V
    .registers 6
    .param p1, "messageType"    # I
    .param p2, "data"    # [B
    .param p3, "associationIds"    # [I

    .line 1114
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1115
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1120
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->sendMessage(I[B[I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1123
    nop

    .line 1124
    return-void

    .line 1121
    :catch_13
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDeviceId(ILandroid/companion/DeviceId;)V
    .registers 5
    .param p1, "associationId"    # I
    .param p2, "deviceId"    # Landroid/companion/DeviceId;

    .line 1847
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1848
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return-void

    .line 1853
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->setDeviceId(ILandroid/companion/DeviceId;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1856
    nop

    .line 1857
    return-void

    .line 1854
    :catch_13
    move-exception v0

    .line 1855
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/companion/ObservingDevicePresenceRequest;

    .line 1378
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1379
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return-void

    .line 1383
    :cond_c
    const-string/jumbo v0, "request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1386
    :try_start_12
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1387
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1386
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_25

    .line 1390
    nop

    .line 1391
    return-void

    .line 1388
    :catch_25
    move-exception v0

    .line 1389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startObservingDevicePresence(Ljava/lang/String;)V
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1279
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1280
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-void

    .line 1284
    :cond_c
    const-string v0, "address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1286
    :try_start_11
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1287
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1286
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_3c

    .line 1291
    nop

    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1293
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1294
    .local v1, "callingPid":I
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 1295
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 1296
    .local v2, "managerInternal":Landroid/app/ActivityManagerInternal;
    if-eqz v2, :cond_3b

    .line 1297
    nop

    .line 1298
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    .line 1301
    :cond_3b
    return-void

    .line 1288
    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "managerInternal":Landroid/app/ActivityManagerInternal;
    :catch_3c
    move-exception v0

    .line 1289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1290
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startSystemDataTransfer(I)V
    .registers 6
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1740
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1741
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return-void

    .line 1746
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/companion/ICompanionDeviceManager;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_20

    .line 1751
    nop

    .line 1752
    return-void

    .line 1748
    :catch_20
    move-exception v0

    .line 1749
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1750
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startSystemDataTransfer(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "associationId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/companion/CompanionException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1777
    .local p3, "result":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/companion/CompanionException;>;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1778
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-void

    .line 1783
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    new-instance v3, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/companion/CompanionDeviceManager-IA;)V

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/companion/ICompanionDeviceManager;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_25

    .line 1788
    nop

    .line 1789
    return-void

    .line 1785
    :catch_25
    move-exception v0

    .line 1786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1787
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/companion/ObservingDevicePresenceRequest;

    .line 1404
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1405
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-void

    .line 1409
    :cond_c
    const-string/jumbo v0, "request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1412
    :try_start_12
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1413
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1412
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_25

    .line 1416
    nop

    .line 1417
    return-void

    .line 1414
    :catch_25
    move-exception v0

    .line 1415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopObservingDevicePresence(Ljava/lang/String;)V
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1329
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-void

    .line 1333
    :cond_c
    const-string v0, "address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1335
    :try_start_11
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1336
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1335
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_23

    .line 1339
    goto :goto_2d

    .line 1337
    :catch_23
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1341
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1342
    .local v1, "callingPid":I
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 1343
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 1344
    .local v2, "managerInternal":Landroid/app/ActivityManagerInternal;
    if-eqz v2, :cond_45

    .line 1345
    nop

    .line 1346
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 1349
    :cond_45
    return-void
.end method
