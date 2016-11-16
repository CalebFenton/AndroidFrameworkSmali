.class public abstract Landroid/printservice/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static sIdCounter:I


# instance fields
.field private final mId:I

.field private mIsDestroyed:Z

.field private mIsDiscoveryStarted:Z

.field private mLastSentPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/printservice/IPrintServiceClient;

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    sput v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    #@3
    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 90
    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@a
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 93
    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    #@11
    .line 108
    sget v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    #@13
    add-int/lit8 v1, v0, 0x1

    #@15
    sput v1, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    #@17
    iput v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    #@19
    .line 107
    return-void
.end method

.method private sendOutOfDiscoveryPeriodPrinterChanges()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 276
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@3
    if-eqz v7, :cond_0

    #@5
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_1

    #@d
    .line 277
    :cond_0
    iput-object v9, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@f
    .line 278
    return-void

    #@10
    .line 282
    :cond_1
    const/4 v0, 0x0

    #@11
    .line 283
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@16
    move-result-object v7

    #@17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .local v2, "printer$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_5

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/print/PrinterInfo;

    #@27
    .line 284
    .local v1, "printer":Landroid/print/PrinterInfo;
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@29
    invoke-virtual {v1}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Landroid/print/PrinterInfo;

    #@33
    .line 285
    .local v5, "sentPrinter":Landroid/print/PrinterInfo;
    if-eqz v5, :cond_3

    #@35
    invoke-virtual {v5, v1}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    if-nez v7, :cond_2

    #@3b
    .line 286
    :cond_3
    if-nez v0, :cond_4

    #@3d
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    #@3f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@42
    .line 289
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_0

    #@46
    .line 294
    .end local v1    # "printer":Landroid/print/PrinterInfo;
    .end local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    :cond_5
    if-eqz v0, :cond_6

    #@48
    .line 296
    :try_start_0
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@4a
    new-instance v8, Landroid/content/pm/ParceledListSlice;

    #@4c
    invoke-direct {v8, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@4f
    invoke-interface {v7, v8}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 303
    :cond_6
    :goto_1
    const/4 v4, 0x0

    #@53
    .line 304
    .local v4, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@55
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@58
    move-result-object v7

    #@59
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v6

    #@5d
    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .local v6, "sentPrinter$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_9

    #@63
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v5

    #@67
    check-cast v5, Landroid/print/PrinterInfo;

    #@69
    .line 305
    .restart local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@6b
    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@72
    move-result v7

    #@73
    if-nez v7, :cond_7

    #@75
    .line 306
    if-nez v4, :cond_8

    #@77
    .line 307
    new-instance v4, Ljava/util/ArrayList;

    #@79
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@7c
    .line 309
    :cond_8
    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@7f
    move-result-object v7

    #@80
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@83
    goto :goto_2

    #@84
    .line 297
    .end local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    .end local v6    # "sentPrinter$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    #@85
    .line 298
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "PrinterDiscoverySession"

    #@88
    const-string/jumbo v8, "Error sending added printers"

    #@8b
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8e
    goto :goto_1

    #@8f
    .line 314
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v6    # "sentPrinter$iterator":Ljava/util/Iterator;
    :cond_9
    if-eqz v4, :cond_a

    #@91
    .line 316
    :try_start_1
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@93
    new-instance v8, Landroid/content/pm/ParceledListSlice;

    #@95
    invoke-direct {v8, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@98
    invoke-interface {v7, v8}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@9b
    .line 322
    :cond_a
    :goto_3
    iput-object v9, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@9d
    .line 274
    return-void

    #@9e
    .line 317
    :catch_1
    move-exception v3

    #@9f
    .line 318
    .restart local v3    # "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "PrinterDiscoverySession"

    #@a2
    const-string/jumbo v8, "Error sending removed printers"

    #@a5
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a8
    goto :goto_3
.end method


# virtual methods
.method public final addPrinters(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 170
    iget-boolean v6, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 171
    const-string/jumbo v6, "PrinterDiscoverySession"

    #@a
    const-string/jumbo v7, "Not adding printers - session destroyed."

    #@d
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 172
    return-void

    #@11
    .line 175
    :cond_0
    iget-boolean v6, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    #@13
    if-eqz v6, :cond_5

    #@15
    .line 177
    const/4 v2, 0x0

    #@16
    .line 178
    .local v2, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    .line 179
    .local v1, "addedPrinterCount":I
    const/4 v3, 0x0

    #@1b
    .end local v2    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@1d
    .line 180
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/print/PrinterInfo;

    #@23
    .line 181
    .local v0, "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Landroid/print/PrinterInfo;

    #@2f
    .line 182
    .local v4, "oldPrinter":Landroid/print/PrinterInfo;
    if-eqz v4, :cond_1

    #@31
    invoke-virtual {v4, v0}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_1

    #@37
    .line 179
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 183
    :cond_1
    if-nez v2, :cond_2

    #@3c
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 186
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    goto :goto_1

    #@45
    .line 191
    .end local v0    # "addedPrinter":Landroid/print/PrinterInfo;
    .end local v4    # "oldPrinter":Landroid/print/PrinterInfo;
    :cond_3
    if-eqz v2, :cond_4

    #@47
    .line 193
    :try_start_0
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@49
    new-instance v7, Landroid/content/pm/ParceledListSlice;

    #@4b
    invoke-direct {v7, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@4e
    invoke-interface {v6, v7}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 166
    :cond_4
    :goto_2
    return-void

    #@52
    .line 194
    :catch_0
    move-exception v5

    #@53
    .line 195
    .local v5, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "PrinterDiscoverySession"

    #@56
    const-string/jumbo v7, "Error sending added printers"

    #@59
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    goto :goto_2

    #@5d
    .line 200
    .end local v1    # "addedPrinterCount":I
    .end local v3    # "i":I
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_5
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@5f
    if-nez v6, :cond_6

    #@61
    .line 201
    new-instance v6, Landroid/util/ArrayMap;

    #@63
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@65
    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@68
    iput-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@6a
    .line 205
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6d
    move-result v1

    #@6e
    .line 206
    .restart local v1    # "addedPrinterCount":I
    const/4 v3, 0x0

    #@6f
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    #@71
    .line 207
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Landroid/print/PrinterInfo;

    #@77
    .line 208
    .restart local v0    # "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@79
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v6

    #@81
    if-nez v6, :cond_7

    #@83
    .line 209
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@85
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 206
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@8e
    goto :goto_3
.end method

.method destroy()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 551
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 552
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@8
    .line 553
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    #@b
    .line 554
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@10
    .line 555
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@12
    .line 556
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@14
    .line 557
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onDestroy()V

    #@17
    .line 550
    :cond_0
    return-void
.end method

.method getId()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    #@2
    return v0
.end method

.method public final getPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 145
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@e
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@17
    return-object v0
.end method

.method public final getTrackedPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 456
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 457
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 460
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@e
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    #@10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@13
    return-object v0
.end method

.method public final isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 480
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 481
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@5
    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .locals 1

    #@0
    .prologue
    .line 493
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 494
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    #@5
    return v0
.end method

.method public abstract onDestroy()V
.end method

.method public onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/printservice/CustomPrinterIconCallback;

    #@0
    .prologue
    .line 423
    return-void
.end method

.method public abstract onStartPrinterDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onStopPrinterDiscovery()V
.end method

.method public abstract onStopPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onValidatePrinters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public final removePrinters(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 231
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 234
    iget-boolean v5, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 235
    const-string/jumbo v5, "PrinterDiscoverySession"

    #@a
    const-string/jumbo v6, "Not removing printers - session destroyed."

    #@d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 236
    return-void

    #@11
    .line 239
    :cond_0
    iget-boolean v5, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    #@13
    if-eqz v5, :cond_4

    #@15
    .line 241
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 242
    .local v4, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1d
    move-result v3

    #@1e
    .line 243
    .local v3, "removedPrinterIdCount":I
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@21
    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/print/PrinterId;

    #@27
    .line 245
    .local v2, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@29
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    .line 246
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    .line 243
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 251
    .end local v2    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@38
    move-result v5

    #@39
    if-nez v5, :cond_3

    #@3b
    .line 253
    :try_start_0
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@3d
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    #@3f
    invoke-direct {v6, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@42
    invoke-interface {v5, v6}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 230
    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_3
    :goto_1
    return-void

    #@46
    .line 255
    .restart local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :catch_0
    move-exception v1

    #@47
    .line 256
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "PrinterDiscoverySession"

    #@4a
    const-string/jumbo v6, "Error sending removed printers"

    #@4d
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    goto :goto_1

    #@51
    .line 261
    .end local v0    # "i":I
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v3    # "removedPrinterIdCount":I
    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_4
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@53
    if-nez v5, :cond_5

    #@55
    .line 262
    new-instance v5, Landroid/util/ArrayMap;

    #@57
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@59
    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@5c
    iput-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    #@5e
    .line 266
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@61
    move-result v3

    #@62
    .line 267
    .restart local v3    # "removedPrinterIdCount":I
    const/4 v0, 0x0

    #@63
    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v3, :cond_3

    #@65
    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v2

    #@69
    check-cast v2, Landroid/print/PrinterId;

    #@6b
    .line 269
    .restart local v2    # "removedPrinterId":Landroid/print/PrinterId;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@6d
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 267
    add-int/lit8 v0, v0, 0x1

    #@72
    goto :goto_2
.end method

.method requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 536
    iget-boolean v1, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@2
    if-nez v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 537
    new-instance v0, Landroid/printservice/CustomPrinterIconCallback;

    #@a
    .line 538
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@c
    .line 537
    invoke-direct {v0, p1, v1}, Landroid/printservice/CustomPrinterIconCallback;-><init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V

    #@f
    .line 539
    .local v0, "callback":Landroid/printservice/CustomPrinterIconCallback;
    new-instance v1, Landroid/os/CancellationSignal;

    #@11
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    #@14
    invoke-virtual {p0, p1, v1, v0}, Landroid/printservice/PrinterDiscoverySession;->onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V

    #@17
    .line 535
    .end local v0    # "callback":Landroid/printservice/CustomPrinterIconCallback;
    :cond_0
    return-void
.end method

.method setObserver(Landroid/printservice/IPrintServiceClient;)V
    .locals 4
    .param p1, "observer"    # Landroid/printservice/IPrintServiceClient;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@2
    .line 115
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@c
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    #@e
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    #@11
    move-result-object v3

    #@12
    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@15
    invoke-interface {v1, v2}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 111
    :cond_0
    :goto_0
    return-void

    #@19
    .line 118
    :catch_0
    move-exception v0

    #@1a
    .line 119
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@1d
    const-string/jumbo v2, "Error sending added printers"

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_0
.end method

.method startPrinterDiscovery(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 498
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 499
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    #@7
    .line 500
    invoke-direct {p0}, Landroid/printservice/PrinterDiscoverySession;->sendOutOfDiscoveryPeriodPrinterChanges()V

    #@a
    .line 501
    if-nez p1, :cond_0

    #@c
    .line 502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@f
    move-result-object p1

    #@10
    .line 504
    :cond_0
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterDiscovery(Ljava/util/List;)V

    #@13
    .line 497
    :cond_1
    return-void
.end method

.method startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 522
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 523
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 521
    :cond_0
    :goto_0
    return-void

    #@11
    .line 524
    :cond_1
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    #@13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 525
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterStateTracking(Landroid/print/PrinterId;)V

    #@19
    goto :goto_0
.end method

.method stopPrinterDiscovery()V
    .locals 1

    #@0
    .prologue
    .line 509
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 510
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    #@7
    .line 511
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterDiscovery()V

    #@a
    .line 508
    :cond_0
    return-void
.end method

.method stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 545
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 544
    if-eqz v0, :cond_0

    #@10
    .line 546
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterStateTracking(Landroid/print/PrinterId;)V

    #@13
    .line 543
    :cond_0
    return-void
.end method

.method validatePrinters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 516
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 517
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onValidatePrinters(Ljava/util/List;)V

    #@b
    .line 515
    :cond_0
    return-void
.end method
