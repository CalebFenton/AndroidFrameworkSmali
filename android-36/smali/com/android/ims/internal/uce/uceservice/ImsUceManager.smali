.class public Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.super Ljava/lang/Object;
.source "ImsUceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_UCE_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

.field public static final blacklist ACTION_UCE_SERVICE_UP:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_UP"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ImsUceManager"

.field private static final blacklist UCE_SERVICE:Ljava/lang/String; = "uce"

.field public static final blacklist UCE_SERVICE_STATUS_CLOSED:I = 0x2

.field public static final blacklist UCE_SERVICE_STATUS_FAILURE:I = 0x0

.field public static final blacklist UCE_SERVICE_STATUS_ON:I = 0x1

.field public static final blacklist UCE_SERVICE_STATUS_READY:I = 0x3

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

.field private blacklist mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUceService(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 43
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager-IA;)V

    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    .line 83
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->createUceService(Z)V

    .line 85
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    sget-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    if-nez v1, :cond_10

    if-eqz p0, :cond_10

    .line 71
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    .line 73
    :cond_10
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private blacklist getUceServiceName()Ljava/lang/String;
    .registers 2

    .line 105
    const-string/jumbo v0, "uce"

    return-object v0
.end method


# virtual methods
.method public blacklist createUceService(Z)V
    .registers 5
    .param p1, "checkService"    # Z

    .line 117
    if-eqz p1, :cond_d

    .line 118
    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 120
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_d

    .line 122
    return-void

    .line 125
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_d
    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1f

    .line 129
    :try_start_17
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    .line 131
    goto :goto_1f

    .line 130
    :catch_1e
    move-exception v1

    .line 134
    :cond_1f
    :goto_1f
    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 135
    return-void
.end method

.method public blacklist getUceServiceInstance()Lcom/android/ims/internal/uce/uceservice/IUceService;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v0
.end method
