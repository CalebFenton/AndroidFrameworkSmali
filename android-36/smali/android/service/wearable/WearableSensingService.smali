.class public abstract Landroid/service/wearable/WearableSensingService;
.super Landroid/app/Service;
.source "WearableSensingService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist HOTWORD_AUDIO_STREAM_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.HotwordAudioStreamBundleKey"

.field private static final blacklist OPEN_FILE_TIMEOUT:Ljava/time/Duration;

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wearable.WearableSensingService"

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingStatusBundleKey"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDataRequestObserverIdToRequesterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/wearable/WearableSensingDataRequester;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService;->mDataRequestObserverIdToRequesterMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWearableSensingCallback(Landroid/service/wearable/WearableSensingService;Landroid/app/wearable/IWearableSensingCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/service/wearable/WearableSensingService;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/wearable/WearableSensingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateDataRequester(Landroid/os/RemoteCallback;)Landroid/service/wearable/WearableSensingDataRequester;
    .registers 1

    invoke-static {p0}, Landroid/service/wearable/WearableSensingService;->createDataRequester(Landroid/os/RemoteCallback;)Landroid/service/wearable/WearableSensingDataRequester;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;
    .registers 1

    invoke-static {p0}, Landroid/service/wearable/WearableSensingService;->createWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smintArrayToIntegerArray([I)[Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Landroid/service/wearable/WearableSensingService;->intArrayToIntegerArray([I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 91
    const-class v0, Landroid/service/wearable/WearableSensingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/wearable/WearableSensingService;->TAG:Ljava/lang/String;

    .line 119
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/service/wearable/WearableSensingService;->OPEN_FILE_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/service/wearable/WearableSensingService;->mDataRequestObserverIdToRequesterMap:Landroid/util/SparseArray;

    return-void
.end method

.method private static blacklist createDataRequester(Landroid/os/RemoteCallback;)Landroid/service/wearable/WearableSensingDataRequester;
    .registers 2
    .param p0, "dataRequestCallback"    # Landroid/os/RemoteCallback;

    .line 751
    new-instance v0, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;)V

    return-object v0
.end method

.method private static blacklist createWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;
    .registers 2
    .param p0, "statusCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v0, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    return-object v0
.end method

.method private static blacklist intArrayToIntegerArray([I)[Ljava/lang/Integer;
    .registers 7
    .param p0, "integerSet"    # [I

    .line 741
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 742
    .local v0, "intArray":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 743
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_16

    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 744
    .local v4, "type":Ljava/lang/Integer;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput-object v4, v0, v1

    .line 743
    .end local v4    # "type":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_6

    .line 746
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method static synthetic blacklist lambda$createDataRequester$0(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "requestStatusConsumer"    # Ljava/util/function/Consumer;
    .param p1, "requestStatusBundle"    # Landroid/os/Bundle;

    .line 757
    nop

    .line 758
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 757
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 760
    return-void
.end method

.method static synthetic blacklist lambda$createDataRequester$1(Landroid/os/RemoteCallback;Landroid/app/wearable/WearableSensingDataRequest;Ljava/util/function/Consumer;)V
    .registers 6
    .param p0, "dataRequestCallback"    # Landroid/os/RemoteCallback;
    .param p1, "request"    # Landroid/app/wearable/WearableSensingDataRequest;
    .param p2, "requestStatusConsumer"    # Ljava/util/function/Consumer;

    .line 752
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 753
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.wearable.WearableSensingDataRequestBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 754
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 761
    .local v1, "requestStatusCallback":Landroid/os/RemoteCallback;
    const-string v2, "android.app.wearable.WearableSensingDataRequestStatusCallbackBundleKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 764
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 765
    return-void
.end method

.method static synthetic blacklist lambda$createWearableStatusConsumer$2(Landroid/os/RemoteCallback;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p1, "response"    # Ljava/lang/Integer;

    .line 771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 772
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 774
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 129
    const-string v0, "android.service.wearable.WearableSensingService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 130
    new-instance v0, Landroid/service/wearable/WearableSensingService$1;

    invoke-direct {v0, p0}, Landroid/service/wearable/WearableSensingService$1;-><init>(Landroid/service/wearable/WearableSensingService;)V

    return-object v0

    .line 365
    :cond_12
    sget-object v0, Landroid/service/wearable/WearableSensingService;->TAG:Ljava/lang/String;

    const-string v1, "Incorrect service interface, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onDataProvided(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/SharedMemory;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onDataRequestObserverRegistered(ILjava/lang/String;Landroid/service/wearable/WearableSensingDataRequester;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "dataType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dataRequester"    # Landroid/service/wearable/WearableSensingDataRequester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/service/wearable/WearableSensingDataRequester;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 509
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public whitelist onDataRequestObserverUnregistered(ILjava/lang/String;Landroid/service/wearable/WearableSensingDataRequester;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "dataType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dataRequester"    # Landroid/service/wearable/WearableSensingDataRequester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/service/wearable/WearableSensingDataRequester;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 537
    return-void
.end method

.method public abstract whitelist onDataStreamProvided(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onQueryServiceStatus(Ljava/util/Set;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onReadOnlyParcelFileDescriptorProvided(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 441
    .local p3, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public whitelist onSecureConnectionProvided(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "secureWearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p3, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public whitelist onSecureConnectionProvided(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "secureWearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    .local p2, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public abstract whitelist onStartDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ambientcontext/AmbientContextEventRequest;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onStartHotwordRecognition(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 570
    .local p1, "hotwordAudioConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/HotwordAudioStream;>;"
    .local p2, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableUnsupportedOperationStatusCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 571
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 573
    :cond_e
    return-void
.end method

.method public abstract whitelist onStopDetection(Ljava/lang/String;)V
.end method

.method public whitelist onStopHotwordAudioStream()V
    .registers 1

    .line 631
    return-void
.end method

.method public whitelist onStopHotwordRecognition(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 589
    .local p1, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableUnsupportedOperationStatusCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 590
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 592
    :cond_e
    return-void
.end method

.method public whitelist onValidatedByHotwordDetectionService()V
    .registers 1

    .line 613
    return-void
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 708
    if-eqz p1, :cond_67

    .line 712
    :try_start_2
    iget-object v0, p0, Landroid/service/wearable/WearableSensingService;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    if-eqz v0, :cond_3a

    .line 717
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 718
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v1, p0, Landroid/service/wearable/WearableSensingService;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    invoke-interface {v1, p1, v0}, Landroid/app/wearable/IWearableSensingCallback;->openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 719
    sget-object v1, Landroid/service/wearable/WearableSensingService;->OPEN_FILE_TIMEOUT:Ljava/time/Duration;

    .line 720
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 721
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2a

    .line 727
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 722
    :cond_2a
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File %s not found or unable to be opened in read-only mode."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 723
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/wearable/WearableSensingService;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v2

    .line 713
    .end local v0    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/service/wearable/WearableSensingService;
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open file from WearableSensingService. WearableSensingCallback is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/wearable/WearableSensingService;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_42} :catch_58
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_42} :catch_58
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_42} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_42} :catch_42

    .line 732
    .restart local p0    # "this":Landroid/service/wearable/WearableSensingService;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 734
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Interrupted when opening a file."

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/FileNotFoundException;

    throw v1

    .line 728
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_58
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Cannot open file due to remote service failure"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/FileNotFoundException;

    throw v1

    .line 709
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
