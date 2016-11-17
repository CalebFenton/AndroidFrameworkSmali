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
.field public static final ACTION_UCE_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

.field public static final ACTION_UCE_SERVICE_UP:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_UP"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUceManager"

.field private static final UCE_SERVICE:Ljava/lang/String; = "uce"

.field public static final UCE_SERVICE_STATUS_CLOSED:I = 0x2

.field public static final UCE_SERVICE_STATUS_FAILURE:I = 0x0

.field public static final UCE_SERVICE_STATUS_ON:I = 0x1

.field public static final UCE_SERVICE_STATUS_READY:I = 0x3

.field private static sUceManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/uce/uceservice/ImsUceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

.field private mPhoneId:I

.field private mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 58
    sput-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    #@7
    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@6
    .line 50
    new-instance v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;)V

    #@b
    iput-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    #@d
    .line 110
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    #@f
    .line 111
    iput p2, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    #@11
    .line 112
    const/4 v0, 0x1

    #@12
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->createUceService(Z)V

    #@15
    .line 108
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 93
    sget-object v2, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 94
    :try_start_0
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 95
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    return-object v1

    #@1d
    .line 97
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@1f
    invoke-direct {v0, p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;-><init>(Landroid/content/Context;I)V

    #@22
    .line 98
    .local v0, "uceMgr":Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    #@24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v2

    #@2c
    .line 99
    return-object v0

    #@2d
    .line 93
    .end local v0    # "uceMgr":Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method private getUceServiceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 133
    const-string/jumbo v0, "uce"

    #@3
    return-object v0
.end method


# virtual methods
.method public createUceService(Z)V
    .locals 5
    .param p1, "checkService"    # Z

    #@0
    .prologue
    .line 145
    if-eqz p1, :cond_0

    #@2
    .line 146
    iget v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    #@4
    invoke-direct {p0, v3}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v1

    #@c
    .line 148
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@e
    .line 150
    return-void

    #@f
    .line 153
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    iget v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    #@11
    invoke-direct {p0, v3}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    .line 155
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@1b
    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 162
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@27
    .line 143
    return-void

    #@28
    .line 158
    :catch_0
    move-exception v2

    #@29
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getUceServiceInstance()Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@2
    return-object v0
.end method
