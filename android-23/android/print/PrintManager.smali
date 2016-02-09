.class public final Landroid/print/PrintManager;
.super Ljava/lang/Object;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintJobStateChangeListener;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate;,
        Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_PRINT_DIALOG:Ljava/lang/String; = "android.print.PRINT_DIALOG"

.field public static final APP_ID_ANY:I = -0x2

.field private static final DEBUG:Z = false

.field public static final EXTRA_PRINT_DIALOG_INTENT:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

.field public static final EXTRA_PRINT_DOCUMENT_ADAPTER:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

.field public static final EXTRA_PRINT_JOB:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_JOB"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintManager"

.field private static final MSG_NOTIFY_PRINT_JOB_STATE_CHANGED:I = 0x1


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
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 186
    iput-object p1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@5
    .line 187
    iput-object p2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@7
    .line 188
    iput p3, p0, Landroid/print/PrintManager;->mUserId:I

    #@9
    .line 189
    iput p4, p0, Landroid/print/PrintManager;->mAppId:I

    #@b
    .line 190
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
    .line 185
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@0
    .prologue
    .line 242
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 243
    const-string/jumbo v2, "PrintManager"

    #@7
    const-string/jumbo v3, "Feature android.software.print not available"

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 244
    return-void

    #@e
    .line 246
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@10
    if-nez v2, :cond_1

    #@12
    .line 247
    new-instance v2, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@17
    iput-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@19
    .line 251
    :cond_1
    new-instance v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    #@1b
    iget-object v2, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    #@1d
    invoke-direct {v1, p1, v2}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintJobStateChangeListener;Landroid/os/Handler;)V

    #@20
    .line 253
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
    .line 254
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@2b
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 241
    :goto_0
    return-void

    #@2f
    .line 255
    :catch_0
    move-exception v0

    #@30
    .line 256
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@33
    const-string/jumbo v3, "Error adding print job state change listener"

    #@36
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0
.end method

.method cancelPrintJob(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 342
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 343
    const-string/jumbo v1, "PrintManager"

    #@7
    const-string/jumbo v2, "Feature android.software.print not available"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 344
    return-void

    #@e
    .line 347
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
    .line 341
    :goto_0
    return-void

    #@18
    .line 348
    :catch_0
    move-exception v0

    #@19
    .line 349
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintManager"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Error canceling a print job: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    goto :goto_0
.end method

.method public createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 501
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 502
    const-string/jumbo v0, "PrintManager"

    #@8
    const-string/jumbo v1, "Feature android.software.print not available"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 503
    return-object v2

    #@f
    .line 505
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

.method public getEnabledPrintServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 460
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 461
    const-string/jumbo v2, "PrintManager"

    #@7
    const-string/jumbo v3, "Feature android.software.print not available"

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 465
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@14
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@16
    invoke-interface {v2, v3}, Landroid/print/IPrintManager;->getEnabledPrintServices(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v0

    #@1a
    .line 466
    .local v0, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-eqz v0, :cond_1

    #@1c
    .line 467
    return-object v0

    #@1d
    .line 469
    .end local v0    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catch_0
    move-exception v1

    #@1e
    .line 470
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@21
    const-string/jumbo v3, "Error getting the enabled print services"

    #@24
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 472
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method public getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 220
    const-string/jumbo v0, "PrintManager"

    #@8
    const-string/jumbo v1, "Feature android.software.print not available"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 221
    return-object v2

    #@f
    .line 223
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

.method public getInstalledPrintServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 482
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 483
    const-string/jumbo v2, "PrintManager"

    #@7
    const-string/jumbo v3, "Feature android.software.print not available"

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 484
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 487
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@14
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@16
    invoke-interface {v2, v3}, Landroid/print/IPrintManager;->getInstalledPrintServices(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v0

    #@1a
    .line 488
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-eqz v0, :cond_1

    #@1c
    .line 489
    return-object v0

    #@1d
    .line 491
    .end local v0    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catch_0
    move-exception v1

    #@1e
    .line 492
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@21
    const-string/jumbo v3, "Error getting the installed print services"

    #@24
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 494
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method public getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 298
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 299
    const-string/jumbo v2, "PrintManager"

    #@8
    const-string/jumbo v3, "Feature android.software.print not available"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 300
    return-object v5

    #@f
    .line 303
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
    .line 304
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_1

    #@1b
    .line 305
    new-instance v2, Landroid/print/PrintJob;

    #@1d
    invoke-direct {v2, v0, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    return-object v2

    #@21
    .line 307
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :catch_0
    move-exception v1

    #@22
    .line 308
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@25
    const-string/jumbo v3, "Error getting print job"

    #@28
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    .line 310
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    return-object v5
.end method

.method getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 228
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
    .line 229
    :catch_0
    move-exception v0

    #@c
    .line 230
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintManager"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Error getting a print job info:"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 232
    const/4 v1, 0x0

    #@27
    return-object v1
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
    .line 320
    iget-object v5, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 321
    const-string/jumbo v5, "PrintManager"

    #@7
    const-string/jumbo v6, "Feature android.software.print not available"

    #@a
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    return-object v5

    #@12
    .line 325
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
    .line 326
    .local v2, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v2, :cond_1

    #@1e
    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@21
    move-result-object v5

    #@22
    return-object v5

    #@23
    .line 329
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@26
    move-result v1

    #@27
    .line 330
    .local v1, "printJobCount":I
    new-instance v3, Ljava/util/ArrayList;

    #@29
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2c
    .line 331
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@2f
    .line 332
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
    .line 331
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 334
    :cond_2
    return-object v3

    #@41
    .line 335
    .end local v0    # "i":I
    .end local v1    # "printJobCount":I
    .end local v2    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    :catch_0
    move-exception v4

    #@42
    .line 336
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "PrintManager"

    #@45
    const-string/jumbo v6, "Error getting print jobs"

    #@48
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@4e
    move-result-object v5

    #@4f
    return-object v5
.end method

.method public print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
    .locals 13
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 417
    const-string/jumbo v0, "PrintManager"

    #@7
    const-string/jumbo v1, "Feature android.software.print not available"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 418
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 420
    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@11
    instance-of v0, v0, Landroid/app/Activity;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v1, "Can print only from an activity"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 423
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "printJobName cannot be empty"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 426
    :cond_2
    if-nez p2, :cond_3

    #@2f
    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v1, "documentAdapter cannot be null"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 429
    :cond_3
    new-instance v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@3a
    .line 430
    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    #@3c
    check-cast v0, Landroid/app/Activity;

    #@3e
    .line 429
    invoke-direct {v2, v0, p2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;-><init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V

    #@41
    .line 432
    .local v2, "delegate":Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@43
    .line 433
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
    .line 432
    invoke-interface/range {v0 .. v6}, Landroid/print/IPrintManager;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    #@53
    move-result-object v11

    #@54
    .line 434
    .local v11, "result":Landroid/os/Bundle;
    if-eqz v11, :cond_6

    #@56
    .line 435
    const-string/jumbo v0, "android.print.intent.extra.EXTRA_PRINT_JOB"

    #@59
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5c
    move-result-object v9

    #@5d
    check-cast v9, Landroid/print/PrintJobInfo;

    #@5f
    .line 436
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
    .line 437
    .local v4, "intent":Landroid/content/IntentSender;
    if-eqz v9, :cond_4

    #@6a
    if-nez v4, :cond_5

    #@6c
    .line 438
    :cond_4
    const/4 v0, 0x0

    #@6d
    return-object v0

    #@6e
    .line 441
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
    .line 442
    new-instance v0, Landroid/print/PrintJob;

    #@79
    invoke-direct {v0, v9, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@7c
    return-object v0

    #@7d
    .line 443
    :catch_0
    move-exception v12

    #@7e
    .line 444
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
    .line 450
    .end local v4    # "intent":Landroid/content/IntentSender;
    .end local v9    # "printJob":Landroid/print/PrintJobInfo;
    .end local v11    # "result":Landroid/os/Bundle;
    .end local v12    # "sie":Landroid/content/IntentSender$SendIntentException;
    :cond_6
    :goto_0
    const/4 v0, 0x0

    #@88
    return-object v0

    #@89
    .line 447
    :catch_1
    move-exception v10

    #@8a
    .line 448
    .local v10, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "PrintManager"

    #@8d
    const-string/jumbo v1, "Error creating a print job"

    #@90
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@93
    goto :goto_0
.end method

.method public removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 267
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 268
    const-string/jumbo v2, "PrintManager"

    #@8
    const-string/jumbo v3, "Feature android.software.print not available"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 269
    return-void

    #@f
    .line 271
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 272
    return-void

    #@14
    .line 275
    :cond_1
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@16
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    #@1c
    .line 276
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    if-nez v1, :cond_2

    #@1e
    .line 277
    return-void

    #@1f
    .line 279
    :cond_2
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@21
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    .line 280
    iput-object v3, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    #@29
    .line 282
    :cond_3
    invoke-virtual {v1}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->destroy()V

    #@2c
    .line 284
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2e
    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    #@30
    invoke-interface {v2, v1, v3}, Landroid/print/IPrintManager;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 266
    :goto_0
    return-void

    #@34
    .line 285
    :catch_0
    move-exception v0

    #@35
    .line 286
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@38
    const-string/jumbo v3, "Error removing print job state change listener"

    #@3b
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    goto :goto_0
.end method

.method restartPrintJob(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 354
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 355
    const-string/jumbo v1, "PrintManager"

    #@7
    const-string/jumbo v2, "Feature android.software.print not available"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 356
    return-void

    #@e
    .line 359
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
    .line 353
    :goto_0
    return-void

    #@18
    .line 360
    :catch_0
    move-exception v0

    #@19
    .line 361
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintManager"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Error restarting a print job: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    goto :goto_0
.end method
