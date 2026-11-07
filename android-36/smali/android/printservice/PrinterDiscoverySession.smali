.class public abstract Landroid/printservice/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static greylist-max-o sIdCounter:I


# instance fields
.field private final greylist-max-o mId:I

.field private greylist-max-o mIsDestroyed:Z

.field private greylist-max-o mIsDiscoveryStarted:Z

.field private greylist-max-o mLastSentPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mObserver:Landroid/printservice/IPrintServiceClient;

.field private final greylist-max-o mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const/4 v0, 0x0

    sput v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    .line 108
    sget v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    iput v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    .line 109
    return-void
.end method

.method private greylist-max-o sendOutOfDiscoveryPeriodPrinterChanges()V
    .registers 9

    .line 276
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_a4

    .line 282
    :cond_f
    const/4 v0, 0x0

    .line 283
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v2, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 284
    .local v3, "printer":Landroid/print/PrinterInfo;
    iget-object v4, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 285
    .local v4, "sentPrinter":Landroid/print/PrinterInfo;
    if-eqz v4, :cond_3a

    invoke-virtual {v4, v3}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 286
    :cond_3a
    if-nez v0, :cond_42

    .line 287
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 289
    :cond_42
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v3    # "printer":Landroid/print/PrinterInfo;
    .end local v4    # "sentPrinter":Landroid/print/PrinterInfo;
    :cond_45
    goto :goto_1a

    .line 294
    :cond_46
    const-string v2, "PrinterDiscoverySession"

    if-eqz v0, :cond_5b

    .line 296
    :try_start_4a
    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_55

    .line 299
    goto :goto_5b

    .line 297
    :catch_55
    move-exception v3

    .line 298
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "Error sending added printers"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    const/4 v3, 0x0

    .line 304
    .local v3, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v4, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 305
    .local v5, "sentPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 306
    if-nez v3, :cond_86

    .line 307
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 309
    :cond_86
    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    :cond_8d
    goto :goto_66

    .line 314
    :cond_8e
    if-eqz v3, :cond_a1

    .line 316
    :try_start_90
    iget-object v4, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9a} :catch_9b

    .line 319
    goto :goto_a1

    .line 317
    :catch_9b
    move-exception v4

    .line 318
    .local v4, "re":Landroid/os/RemoteException;
    const-string v5, "Error sending removed printers"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_a1
    :goto_a1
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 323
    return-void

    .line 277
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v3    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_a4
    :goto_a4
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 278
    return-void
.end method


# virtual methods
.method public final whitelist addPrinters(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 170
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_f

    .line 171
    const-string v0, "Not adding printers - session destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 175
    :cond_f
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    if-eqz v0, :cond_57

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 179
    .local v2, "addedPrinterCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_43

    .line 180
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 181
    .local v4, "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 182
    .local v5, "oldPrinter":Landroid/print/PrinterInfo;
    if-eqz v5, :cond_35

    invoke-virtual {v5, v4}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 183
    :cond_35
    if-nez v0, :cond_3d

    .line 184
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 186
    :cond_3d
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v4    # "addedPrinter":Landroid/print/PrinterInfo;
    .end local v5    # "oldPrinter":Landroid/print/PrinterInfo;
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 191
    .end local v3    # "i":I
    :cond_43
    if-eqz v0, :cond_56

    .line 193
    :try_start_45
    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4f} :catch_50

    .line 196
    goto :goto_56

    .line 194
    :catch_50
    move-exception v3

    .line 195
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "Error sending added printers"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "addedPrinterCount":I
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_56
    :goto_56
    goto :goto_89

    .line 200
    :cond_57
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v0, :cond_64

    .line 201
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 205
    :cond_64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 206
    .local v0, "addedPrinterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_69
    if-ge v1, v0, :cond_89

    .line 207
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    .line 208
    .local v2, "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_86

    .line 209
    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v2    # "addedPrinter":Landroid/print/PrinterInfo;
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 213
    .end local v0    # "addedPrinterCount":I
    .end local v1    # "i":I
    :cond_89
    :goto_89
    return-void
.end method

.method greylist-max-o destroy()V
    .registers 2

    .line 551
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_17

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 554
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 556
    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 557
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onDestroy()V

    .line 559
    :cond_17
    return-void
.end method

.method greylist-max-o getId()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    return v0
.end method

.method public final whitelist getPrinters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 145
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 148
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final whitelist getTrackedPrinters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 457
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 460
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final whitelist isDestroyed()Z
    .registers 2

    .line 480
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 481
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    return v0
.end method

.method public final whitelist isPrinterDiscoveryStarted()Z
    .registers 2

    .line 493
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 494
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    return v0
.end method

.method public abstract whitelist onDestroy()V
.end method

.method public whitelist onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/printservice/CustomPrinterIconCallback;

    .line 424
    return-void
.end method

.method public abstract whitelist onStartPrinterDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onStartPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract whitelist onStopPrinterDiscovery()V
.end method

.method public abstract whitelist onStopPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract whitelist onValidatePrinters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public final whitelist removePrinters(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 234
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_f

    .line 235
    const-string v0, "Not removing printers - session destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 239
    :cond_f
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    if-eqz v0, :cond_4b

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 243
    .local v2, "removedPrinterIdCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v2, :cond_33

    .line 244
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    .line 245
    .local v4, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 246
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v4    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 251
    .end local v3    # "i":I
    :cond_33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 253
    :try_start_39
    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_43} :catch_44

    .line 257
    goto :goto_4a

    .line 255
    :catch_44
    move-exception v3

    .line 256
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "Error sending removed printers"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v2    # "removedPrinterIdCount":I
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    goto :goto_6d

    .line 261
    :cond_4b
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v0, :cond_58

    .line 262
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 266
    :cond_58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 267
    .local v0, "removedPrinterIdCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5d
    if-ge v1, v0, :cond_6d

    .line 268
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 269
    .local v2, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v2    # "removedPrinterId":Landroid/print/PrinterId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 272
    .end local v0    # "removedPrinterIdCount":I
    .end local v1    # "i":I
    :cond_6d
    :goto_6d
    return-void
.end method

.method greylist-max-o requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 536
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_17

    .line 537
    new-instance v0, Landroid/printservice/CustomPrinterIconCallback;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    invoke-direct {v0, p1, v1}, Landroid/printservice/CustomPrinterIconCallback;-><init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V

    .line 539
    .local v0, "callback":Landroid/printservice/CustomPrinterIconCallback;
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Landroid/printservice/PrinterDiscoverySession;->onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V

    .line 541
    .end local v0    # "callback":Landroid/printservice/CustomPrinterIconCallback;
    :cond_17
    return-void
.end method

.method greylist-max-o setObserver(Landroid/printservice/IPrintServiceClient;)V
    .registers 5
    .param p1, "observer"    # Landroid/printservice/IPrintServiceClient;

    .line 112
    iput-object p1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 115
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 117
    :try_start_a
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_19

    .line 120
    goto :goto_21

    .line 118
    :catch_19
    move-exception v0

    .line 119
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    return-void
.end method

.method greylist-max-o startPrinterDiscovery(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_13

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 500
    invoke-direct {p0}, Landroid/printservice/PrinterDiscoverySession;->sendOutOfDiscoveryPeriodPrinterChanges()V

    .line 501
    if-nez p1, :cond_10

    .line 502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 504
    :cond_10
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterDiscovery(Ljava/util/List;)V

    .line 506
    :cond_13
    return-void
.end method

.method greylist-max-o startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 522
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    .line 523
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 524
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 527
    :cond_18
    return-void
.end method

.method greylist-max-o stopPrinterDiscovery()V
    .registers 2

    .line 509
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_a

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 511
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterDiscovery()V

    .line 513
    :cond_a
    return-void
.end method

.method greylist-max-o stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 544
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    .line 545
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 546
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 548
    :cond_13
    return-void
.end method

.method greylist-max-o validatePrinters(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_b

    .line 517
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onValidatePrinters(Ljava/util/List;)V

    .line 519
    :cond_b
    return-void
.end method
