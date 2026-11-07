.class public abstract Landroid/printservice/PrintService;
.super Landroid/app/Service;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/PrintService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist EXTRA_CAN_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.CAN_SELECT_PRINTER"

.field public static final whitelist EXTRA_PRINTER_INFO:Ljava/lang/String; = "android.intent.extra.print.EXTRA_PRINTER_INFO"

.field public static final whitelist EXTRA_PRINT_DOCUMENT_INFO:Ljava/lang/String; = "android.printservice.extra.PRINT_DOCUMENT_INFO"

.field public static final whitelist EXTRA_PRINT_JOB_INFO:Ljava/lang/String; = "android.intent.extra.print.PRINT_JOB_INFO"

.field public static final whitelist EXTRA_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.SELECT_PRINTER"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrintService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.PrintService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.printservice"


# instance fields
.field private greylist-max-o mClient:Landroid/printservice/IPrintServiceClient;

.field private greylist-max-o mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLastSessionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;
    .registers 1

    iget-object p0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;
    .registers 1

    iget-object p0, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastSessionId(Landroid/printservice/PrintService;)I
    .registers 1

    iget p0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClient(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)V
    .registers 2

    iput-object p1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiscoverySession(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)V
    .registers 2

    iput-object p1, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastSessionId(Landroid/printservice/PrintService;I)V
    .registers 2

    iput p1, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 161
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return-void
.end method

.method static greylist-max-o throwIfNotCalledOnMainThread()V
    .registers 2

    .line 381
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 384
    return-void

    .line 382
    :cond_b
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 283
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 284
    new-instance v0, Landroid/printservice/PrintService$ServiceHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/printservice/PrintService$ServiceHandler;-><init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    .line 285
    return-void
.end method

.method public final whitelist generatePrinterId(Ljava/lang/String;)Landroid/print/PrinterId;
    .registers 6
    .param p1, "localId"    # Ljava/lang/String;

    .line 374
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 375
    const-string/jumbo v0, "localId cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/print/PrinterId;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/printservice/PrintService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Landroid/print/PrinterId;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public final whitelist getActivePrintJobs()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/PrintJob;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 345
    iget-object v0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    if-nez v0, :cond_c

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 349
    :cond_c
    const/4 v0, 0x0

    .line 350
    .local v0, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :try_start_d
    iget-object v1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-interface {v1}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfos()Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v1, :cond_35

    .line 352
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 353
    .local v2, "printJobInfoCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 354
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_35

    .line 355
    new-instance v4, Landroid/printservice/PrintJob;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-direct {v4, p0, v5, v6}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_32} :catch_39

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 358
    .end local v2    # "printJobInfoCount":I
    .end local v3    # "i":I
    :cond_35
    if-eqz v0, :cond_38

    .line 359
    return-object v0

    .line 363
    .end local v0    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .end local v1    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_38
    goto :goto_41

    .line 361
    :catch_39
    move-exception v0

    .line 362
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrintService"

    const-string v2, "Error calling getPrintJobs()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 388
    new-instance v0, Landroid/printservice/PrintService$1;

    invoke-direct {v0, p0}, Landroid/printservice/PrintService$1;-><init>(Landroid/printservice/PrintService;)V

    return-object v0
.end method

.method protected whitelist onConnected()V
    .registers 1

    .line 292
    return-void
.end method

.method protected abstract whitelist onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;
.end method

.method protected whitelist onDisconnected()V
    .registers 1

    .line 299
    return-void
.end method

.method protected abstract whitelist onPrintJobQueued(Landroid/printservice/PrintJob;)V
.end method

.method protected abstract whitelist onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V
.end method
