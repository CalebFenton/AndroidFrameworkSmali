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
.field private static final DEBUG:Z = false

.field public static final EXTRA_PRINTER_INFO:Ljava/lang/String; = "android.intent.extra.print.EXTRA_PRINTER_INFO"

.field public static final EXTRA_PRINT_DOCUMENT_INFO:Ljava/lang/String; = "android.printservice.extra.PRINT_DOCUMENT_INFO"

.field public static final EXTRA_PRINT_JOB_INFO:Ljava/lang/String; = "android.intent.extra.print.PRINT_JOB_INFO"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.PrintService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.printservice"


# instance fields
.field private mClient:Landroid/printservice/IPrintServiceClient;

.field private mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

.field private mHandler:Landroid/os/Handler;

.field private mLastSessionId:I


# direct methods
.method static synthetic -get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/printservice/PrintService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/printservice/PrintService;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/printservice/PrintService;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 251
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    #@6
    .line 154
    return-void
.end method

.method static throwIfNotCalledOnMainThread()V
    .locals 2

    #@0
    .prologue
    .line 353
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 354
    new-instance v0, Ljava/lang/IllegalAccessError;

    #@c
    const-string/jumbo v1, "must be called from the main thread"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    #@0
    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 258
    new-instance v0, Landroid/printservice/PrintService$ServiceHandler;

    #@5
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, v1}, Landroid/printservice/PrintService$ServiceHandler;-><init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    #@e
    .line 256
    return-void
.end method

.method public final generatePrinterId(Ljava/lang/String;)Landroid/print/PrinterId;
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 347
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 348
    new-instance v0, Landroid/print/PrinterId;

    #@5
    new-instance v1, Landroid/content/ComponentName;

    #@7
    invoke-virtual {p0}, Landroid/printservice/PrintService;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 349
    invoke-virtual {p0}, Landroid/printservice/PrintService;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 348
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    invoke-direct {v0, v1, p1}, Landroid/print/PrinterId;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@19
    return-object v0
.end method

.method public final getActivePrintJobs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintJob;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 317
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 318
    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    #@5
    if-nez v6, :cond_0

    #@7
    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v6

    #@b
    return-object v6

    #@c
    .line 322
    :cond_0
    const/4 v3, 0x0

    #@d
    .line 323
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :try_start_0
    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    #@f
    invoke-interface {v6}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfos()Ljava/util/List;

    #@12
    move-result-object v2

    #@13
    .line 324
    .local v2, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v2, :cond_2

    #@15
    .line 325
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@18
    move-result v1

    #@19
    .line 326
    .local v1, "printJobInfoCount":I
    new-instance v4, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 327
    .local v4, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    const/4 v0, 0x0

    #@1f
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@21
    .line 328
    :try_start_1
    new-instance v7, Landroid/printservice/PrintJob;

    #@23
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Landroid/print/PrintJobInfo;

    #@29
    iget-object v8, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    #@2b
    invoke-direct {v7, v6, v8}, Landroid/printservice/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    #@2e
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@31
    .line 327
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    :cond_1
    move-object v3, v4

    #@35
    .line 331
    .end local v0    # "i":I
    .end local v1    # "printJobInfoCount":I
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :cond_2
    if-eqz v3, :cond_3

    #@37
    .line 332
    return-object v3

    #@38
    .line 334
    .end local v2    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :catch_0
    move-exception v5

    #@39
    .line 335
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .local v5, "re":Landroid/os/RemoteException;
    :goto_1
    const-string/jumbo v6, "PrintService"

    #@3c
    const-string/jumbo v7, "Error calling getPrintJobs()"

    #@3f
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 337
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@45
    move-result-object v6

    #@46
    return-object v6

    #@47
    .line 334
    .restart local v0    # "i":I
    .restart local v1    # "printJobInfoCount":I
    .restart local v2    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :catch_1
    move-exception v5

    #@48
    .restart local v5    # "re":Landroid/os/RemoteException;
    move-object v3, v4

    #@49
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    goto :goto_1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 360
    new-instance v0, Landroid/printservice/PrintService$1;

    #@2
    invoke-direct {v0, p0}, Landroid/printservice/PrintService$1;-><init>(Landroid/printservice/PrintService;)V

    #@5
    return-object v0
.end method

.method protected onConnected()V
    .locals 0

    #@0
    .prologue
    .line 264
    return-void
.end method

.method protected abstract onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;
.end method

.method protected onDisconnected()V
    .locals 0

    #@0
    .prologue
    .line 271
    return-void
.end method

.method protected abstract onPrintJobQueued(Landroid/printservice/PrintJob;)V
.end method

.method protected abstract onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V
.end method
