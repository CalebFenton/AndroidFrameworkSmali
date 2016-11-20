.class public final Landroid/print/PrintManager;
.super Ljava/lang/Object;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate;,
        Landroid/print/PrintManager$PrintJobStateChangeListener;,
        Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;,
        Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;,
        Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;,
        Landroid/print/PrintManager$PrintServicesChangeListener;,
        Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_PRINT_DIALOG:Ljava/lang/String; = "android.print.PRINT_DIALOG"

.field public static final ALL_SERVICES:I = 0x3

.field public static final APP_ID_ANY:I = -0x2

.field private static final DEBUG:Z = false

.field public static final DISABLED_SERVICES:I = 0x2

.field public static final ENABLED_SERVICES:I = 0x1

.field public static final EXTRA_PRINT_DIALOG_INTENT:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

.field public static final EXTRA_PRINT_DOCUMENT_ADAPTER:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

.field public static final EXTRA_PRINT_JOB:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_JOB"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintManager"

.field private static final MSG_NOTIFY_PRINT_JOB_STATE_CHANGED:I = 0x1

.field private static final MSG_NOTIFY_PRINT_SERVICES_CHANGED:I = 0x2

.field private static final MSG_NOTIFY_PRINT_SERVICE_RECOMMENDATIONS_CHANGED:I = 0x3

.field public static final PRINT_SPOOLER_PACKAGE_NAME:Ljava/lang/String; = "com.android.printspooler"


# instance fields
.field private final mAppId:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobStateChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/print/PrintManager$PrintJobStateChangeListener;",
            "Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServicesChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/print/PrintManager$PrintServicesChangeListener;",
            "Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/print/IPrintManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/print/IPrintManager;
    .param p3, "userId"    # I
    .param p4, "appId"    # I

    #@0
    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 252
    iput-object p1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@5
    .line 253
    iput-object p2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@7
    .line 254
    iput p3, p0, Landroid/print/PrintManager;->mUserId:I

    #@9
    .line 255
    iput p4, p0, Landroid/print/PrintManager;->mAppId:I

    #@b
    .line 256
    new-instance v0, Landroid/print/PrintManager$1;

    #@d
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x0

    #@12
    const/4 v3, 0x0

    #@13
    invoke-direct {v0, p0, v1, v2, v3}, Landroid/print/PrintManager$1;-><init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@16
    iput-object v0, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    #@18
    .line 251
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@0
    .prologue
    .line 323
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 324
    const-string/jumbo v2, "PrintManager"

    #@7
    const-string/jumbo v3, "Feature android.software.print not available"

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 325
    return-void

    #@e
    .line 327
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@10
    if-nez v2, :cond_1

    #@12
    .line 328
    new-instance v2, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@17
    iput-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@19
    .line 332
    :cond_1
    new-instance v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    #@1b
    iget-object v2, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    #@1d
    invoke-direct {v1, p1, v2}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintJobStateChangeListener;Landroid/os/Handler;)V

    #@20
    .line 334
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@22
    iget v3, p0, Landroid/print/PrintManager;->mAppId:I

    #@24
    iget v4, p0, Landroid/print/PrintManager;->mUserId:I

    #@26
    invoke-interface {v2, v1, v3, v4}, Landroid/print/IPrintManager;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    #@29
    .line 335
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@2b
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 322
    return-void

    #@2f
    .line 336
    :catch_0
    move-exception v0

    #@30
    .line 337
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@33
    move-result-object v2

    #@34
    throw v2
.end method

.method addPrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    #@0
    .prologue
    .line 654
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 656
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 657
    const-string/jumbo v2, "PrintManager"

    #@a
    const-string/jumbo v3, "Feature android.software.print not available"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 658
    return-void

    #@11
    .line 660
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    #@13
    if-nez v2, :cond_1

    #@15
    .line 661
    new-instance v2, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    iput-object v2, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    #@1c
    .line 664
    :cond_1
    new-instance v1, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;

    #@1e
    iget-object v2, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    #@20
    invoke-direct {v1, p1, v2}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V

    #@23
    .line 666
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@25
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@27
    invoke-interface {v2, v1, v3}, Landroid/print/IPrintManager;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    #@2a
    .line 667
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    #@2c
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 653
    return-void

    #@30
    .line 668
    :catch_0
    move-exception v0

    #@31
    .line 669
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@34
    move-result-object v2

    #@35
    throw v2
.end method

.method addPrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServicesChangeListener;

    #@0
    .prologue
    .line 565
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 567
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 568
    const-string/jumbo v2, "PrintManager"

    #@a
    const-string/jumbo v3, "Feature android.software.print not available"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 569
    return-void

    #@11
    .line 571
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    #@13
    if-nez v2, :cond_1

    #@15
    .line 572
    new-instance v2, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    iput-object v2, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    #@1c
    .line 575
    :cond_1
    new-instance v1, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;

    #@1e
    iget-object v2, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    #@20
    invoke-direct {v1, p1, v2}, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V

    #@23
    .line 577
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@25
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@27
    invoke-interface {v2, v1, v3}, Landroid/print/IPrintManager;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    #@2a
    .line 578
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    #@2c
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 564
    return-void

    #@30
    .line 579
    :catch_0
    move-exception v0

    #@31
    .line 580
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@34
    move-result-object v2

    #@35
    throw v2
.end method

.method cancelPrintJob(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 445
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 446
    const-string/jumbo v1, "PrintManager"

    #@7
    const-string/jumbo v2, "Feature android.software.print not available"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 447
    return-void

    #@e
    .line 450
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@10
    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    #@12
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@14
    invoke-interface {v1, p1, v2, v3}, Landroid/print/IPrintManager;->cancelPrintJob(Landroid/print/PrintJobId;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 444
    return-void

    #@18
    .line 451
    :catch_0
    move-exception v0

    #@19
    .line 452
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method public createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 735
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 736
    const-string/jumbo v0, "PrintManager"

    #@8
    const-string/jumbo v1, "Feature android.software.print not available"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 737
    return-object v2

    #@f
    .line 739
    :cond_0
    new-instance v0, Landroid/print/PrinterDiscoverySession;

    #@11
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@13
    iget-object v2, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@15
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@17
    invoke-direct {v0, v1, v2, v3}, Landroid/print/PrinterDiscoverySession;-><init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V

    #@1a
    return-object v0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 406
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 407
    const-string/jumbo v1, "PrintManager"

    #@8
    const-string/jumbo v2, "Feature android.software.print not available"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 408
    return-object v3

    #@f
    .line 411
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@11
    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    #@13
    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 412
    :catch_0
    move-exception v0

    #@19
    .line 413
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method public getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 301
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 302
    const-string/jumbo v0, "PrintManager"

    #@8
    const-string/jumbo v1, "Feature android.software.print not available"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 303
    return-object v2

    #@f
    .line 305
    :cond_0
    new-instance v0, Landroid/print/PrintManager;

    #@11
    iget-object v1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@13
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@15
    const/4 v3, -0x2

    #@16
    invoke-direct {v0, v1, v2, p1, v3}, Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V

    #@19
    return-object v0
.end method

.method public getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 380
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 381
    const-string/jumbo v2, "PrintManager"

    #@8
    const-string/jumbo v3, "Feature android.software.print not available"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 382
    return-object v5

    #@f
    .line 385
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@11
    iget v3, p0, Landroid/print/PrintManager;->mAppId:I

    #@13
    iget v4, p0, Landroid/print/PrintManager;->mUserId:I

    #@15
    invoke-interface {v2, p1, v3, v4}, Landroid/print/IPrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    #@18
    move-result-object v0

    #@19
    .line 386
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_1

    #@1b
    .line 387
    new-instance v2, Landroid/print/PrintJob;

    #@1d
    invoke-direct {v2, v0, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    return-object v2

    #@21
    .line 389
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :catch_0
    move-exception v1

    #@22
    .line 390
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@25
    move-result-object v2

    #@26
    throw v2

    #@27
    .line 392
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "printJob":Landroid/print/PrintJobInfo;
    :cond_1
    return-object v5
.end method

.method getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    #@4
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@6
    invoke-interface {v1, p1, v2, v3}, Landroid/print/IPrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 311
    :catch_0
    move-exception v0

    #@c
    .line 312
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getPrintJobs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJob;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 424
    iget-object v5, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 425
    const-string/jumbo v5, "PrintManager"

    #@7
    const-string/jumbo v6, "Feature android.software.print not available"

    #@a
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 426
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    return-object v5

    #@12
    .line 429
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@14
    iget v6, p0, Landroid/print/PrintManager;->mAppId:I

    #@16
    iget v7, p0, Landroid/print/PrintManager;->mUserId:I

    #@18
    invoke-interface {v5, v6, v7}, Landroid/print/IPrintManager;->getPrintJobInfos(II)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    .line 430
    .local v2, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v2, :cond_1

    #@1e
    .line 431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@21
    move-result-object v5

    #@22
    return-object v5

    #@23
    .line 433
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@26
    move-result v1

    #@27
    .line 434
    .local v1, "printJobCount":I
    new-instance v3, Ljava/util/ArrayList;

    #@29
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2c
    .line 435
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@2f
    .line 436
    new-instance v6, Landroid/print/PrintJob;

    #@31
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    check-cast v5, Landroid/print/PrintJobInfo;

    #@37
    invoke-direct {v6, v5, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V

    #@3a
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 435
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 438
    :cond_2
    return-object v3

    #@41
    .line 439
    .end local v0    # "i":I
    .end local v1    # "printJobCount":I
    .end local v2    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    :catch_0
    move-exception v4

    #@42
    .line 440
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@45
    move-result-object v5

    #@46
    throw v5
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 721
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@4
    invoke-interface {v2, v3}, Landroid/print/IPrintManager;->getPrintServiceRecommendations(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    .line 722
    .local v1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    if-eqz v1, :cond_0

    #@a
    .line 723
    return-object v1

    #@b
    .line 725
    .end local v1    # "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    :catch_0
    move-exception v0

    #@c
    .line 726
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v2

    #@10
    throw v2

    #@11
    .line 728
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@14
    move-result-object v2

    #@15
    return-object v2
.end method

.method public getPrintServices(I)Ljava/util/List;
    .locals 4
    .param p1, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 632
    const/4 v2, 0x3

    #@1
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    #@4
    .line 635
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@6
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@8
    invoke-interface {v2, p1, v3}, Landroid/print/IPrintManager;->getPrintServices(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 636
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-eqz v1, :cond_0

    #@e
    .line 637
    return-object v1

    #@f
    .line 639
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catch_0
    move-exception v0

    #@10
    .line 640
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v2

    #@14
    throw v2

    #@15
    .line 642
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@18
    move-result-object v2

    #@19
    return-object v2
.end method

.method public print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
    .locals 13
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 521
    const-string/jumbo v0, "PrintManager"

    #@7
    const-string/jumbo v1, "Feature android.software.print not available"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 522
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 524
    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@11
    instance-of v0, v0, Landroid/app/Activity;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v1, "Can print only from an activity"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 527
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "printJobName cannot be empty"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 530
    :cond_2
    if-nez p2, :cond_3

    #@2f
    .line 531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v1, "documentAdapter cannot be null"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 533
    :cond_3
    new-instance v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@3a
    .line 534
    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@3c
    check-cast v0, Landroid/app/Activity;

    #@3e
    .line 533
    invoke-direct {v2, v0, p2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;-><init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V

    #@41
    .line 536
    .local v2, "delegate":Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@43
    .line 537
    iget-object v1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@45
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    iget v5, p0, Landroid/print/PrintManager;->mAppId:I

    #@4b
    iget v6, p0, Landroid/print/PrintManager;->mUserId:I

    #@4d
    move-object v1, p1

    #@4e
    move-object/from16 v3, p3

    #@50
    .line 536
    invoke-interface/range {v0 .. v6}, Landroid/print/IPrintManager;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    #@53
    move-result-object v11

    #@54
    .line 538
    .local v11, "result":Landroid/os/Bundle;
    if-eqz v11, :cond_6

    #@56
    .line 539
    const-string/jumbo v0, "android.print.intent.extra.EXTRA_PRINT_JOB"

    #@59
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5c
    move-result-object v9

    #@5d
    check-cast v9, Landroid/print/PrintJobInfo;

    #@5f
    .line 540
    .local v9, "printJob":Landroid/print/PrintJobInfo;
    const-string/jumbo v0, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    #@62
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@65
    move-result-object v4

    #@66
    check-cast v4, Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@68
    .line 541
    .local v4, "intent":Landroid/content/IntentSender;
    if-eqz v9, :cond_4

    #@6a
    if-nez v4, :cond_5

    #@6c
    .line 542
    :cond_4
    const/4 v0, 0x0

    #@6d
    return-object v0

    #@6e
    .line 545
    :cond_5
    :try_start_1
    iget-object v3, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@70
    const/4 v5, 0x0

    #@71
    const/4 v6, 0x0

    #@72
    const/4 v7, 0x0

    #@73
    const/4 v8, 0x0

    #@74
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    #@77
    .line 546
    new-instance v0, Landroid/print/PrintJob;

    #@79
    invoke-direct {v0, v9, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@7c
    return-object v0

    #@7d
    .line 547
    :catch_0
    move-exception v12

    #@7e
    .line 548
    .local v12, "sie":Landroid/content/IntentSender$SendIntentException;
    :try_start_2
    const-string/jumbo v0, "PrintManager"

    #@81
    const-string/jumbo v1, "Couldn\'t start print job config activity."

    #@84
    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@87
    .line 554
    .end local v4    # "intent":Landroid/content/IntentSender;
    .end local v9    # "printJob":Landroid/print/PrintJobInfo;
    .end local v12    # "sie":Landroid/content/IntentSender$SendIntentException;
    :cond_6
    const/4 v0, 0x0

    #@88
    return-object v0

    #@89
    .line 551
    .end local v11    # "result":Landroid/os/Bundle;
    :catch_1
    move-exception v10

    #@8a
    .line 552
    .local v10, "re":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@8d
    move-result-object v0

    #@8e
    throw v0
.end method

.method public removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 348
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 349
    const-string/jumbo v2, "PrintManager"

    #@8
    const-string/jumbo v3, "Feature android.software.print not available"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 350
    return-void

    #@f
    .line 352
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 353
    return-void

    #@14
    .line 356
    :cond_1
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@16
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    #@1c
    .line 357
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    if-nez v1, :cond_2

    #@1e
    .line 358
    return-void

    #@1f
    .line 360
    :cond_2
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@21
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    .line 361
    iput-object v3, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@29
    .line 363
    :cond_3
    invoke-virtual {v1}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->destroy()V

    #@2c
    .line 365
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2e
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@30
    invoke-interface {v2, v1, v3}, Landroid/print/IPrintManager;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 347
    return-void

    #@34
    .line 366
    :catch_0
    move-exception v0

    #@35
    .line 367
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@38
    move-result-object v2

    #@39
    throw v2
.end method

.method removePrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 682
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 684
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 685
    const-string/jumbo v2, "PrintManager"

    #@b
    const-string/jumbo v3, "Feature android.software.print not available"

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 686
    return-void

    #@12
    .line 688
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    #@14
    if-nez v2, :cond_1

    #@16
    .line 689
    return-void

    #@17
    .line 692
    :cond_1
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    #@19
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;

    #@1f
    .line 693
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
    if-nez v1, :cond_2

    #@21
    .line 694
    return-void

    #@22
    .line 696
    :cond_2
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    #@24
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_3

    #@2a
    .line 697
    iput-object v3, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    #@2c
    .line 699
    :cond_3
    invoke-virtual {v1}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->destroy()V

    #@2f
    .line 701
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@31
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@33
    invoke-interface {v2, v1, v3}, Landroid/print/IPrintManager;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 681
    return-void

    #@37
    .line 702
    :catch_0
    move-exception v0

    #@38
    .line 703
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3b
    move-result-object v2

    #@3c
    throw v2
.end method

.method removePrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServicesChangeListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 592
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 594
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 595
    const-string/jumbo v2, "PrintManager"

    #@b
    const-string/jumbo v3, "Feature android.software.print not available"

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 596
    return-void

    #@12
    .line 598
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    #@14
    if-nez v2, :cond_1

    #@16
    .line 599
    return-void

    #@17
    .line 602
    :cond_1
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    #@19
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;

    #@1f
    .line 603
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
    if-nez v1, :cond_2

    #@21
    .line 604
    return-void

    #@22
    .line 606
    :cond_2
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    #@24
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_3

    #@2a
    .line 607
    iput-object v3, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    #@2c
    .line 609
    :cond_3
    invoke-virtual {v1}, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->destroy()V

    #@2f
    .line 611
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@31
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@33
    invoke-interface {v2, v1, v3}, Landroid/print/IPrintManager;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 591
    :goto_0
    return-void

    #@37
    .line 612
    :catch_0
    move-exception v0

    #@38
    .line 613
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@3b
    const-string/jumbo v3, "Error removing print services change listener"

    #@3e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0
.end method

.method restartPrintJob(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 457
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 458
    const-string/jumbo v1, "PrintManager"

    #@7
    const-string/jumbo v2, "Feature android.software.print not available"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 459
    return-void

    #@e
    .line 462
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@10
    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    #@12
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@14
    invoke-interface {v1, p1, v2, v3}, Landroid/print/IPrintManager;->restartPrintJob(Landroid/print/PrintJobId;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 456
    return-void

    #@18
    .line 463
    :catch_0
    move-exception v0

    #@19
    .line 464
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z

    #@0
    .prologue
    .line 751
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 752
    const-string/jumbo v1, "PrintManager"

    #@7
    const-string/jumbo v2, "Feature android.software.print not available"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 753
    return-void

    #@e
    .line 756
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@10
    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    #@12
    invoke-interface {v1, p1, p2, v2}, Landroid/print/IPrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 750
    :goto_0
    return-void

    #@16
    .line 757
    :catch_0
    move-exception v0

    #@17
    .line 758
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintManager"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Error enabling or disabling "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method
