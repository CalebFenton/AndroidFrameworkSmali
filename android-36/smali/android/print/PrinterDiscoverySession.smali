.class public final Landroid/print/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterDiscoverySession$SessionHandler;,
        Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;,
        Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static final greylist-max-o MSG_PRINTERS_ADDED:I = 0x1

.field private static final greylist-max-o MSG_PRINTERS_REMOVED:I = 0x2


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIsPrinterDiscoveryStarted:Z

.field private greylist-max-o mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

.field private greylist-max-o mObserver:Landroid/print/IPrinterDiscoveryObserver;

.field private final greylist-max-o mPrintManager:Landroid/print/IPrintManager;

.field private final greylist-max-o mPrinters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePrintersAdded(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePrintersRemoved(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V
    .registers 7
    .param p1, "printManager"    # Landroid/print/IPrintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    .line 66
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    .line 67
    iput p3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    .line 68
    new-instance v0, Landroid/print/PrinterDiscoverySession$SessionHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/print/PrinterDiscoverySession$SessionHandler;-><init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;

    invoke-direct {v0, p0}, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;-><init>(Landroid/print/PrinterDiscoverySession;)V

    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 71
    :try_start_20
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/print/IPrintManager;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2a

    .line 74
    goto :goto_32

    .line 72
    :catch_2a
    move-exception v0

    .line 73
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error creating printer discovery session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method private greylist-max-o destroyNoCheck()V
    .registers 5

    .line 187
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 189
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_18
    .catchall {:try_start_4 .. :try_end_d} :catchall_16

    .line 193
    nop

    :goto_e
    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 194
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 195
    goto :goto_22

    .line 193
    :catchall_16
    move-exception v1

    goto :goto_23

    .line 190
    :catch_18
    move-exception v1

    .line 191
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_19
    const-string v2, "PrinterDiscoverySession"

    const-string v3, "Error destroying printer discovery session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 193
    nop

    .end local v1    # "re":Landroid/os/RemoteException;
    goto :goto_e

    .line 196
    :goto_22
    return-void

    .line 193
    :goto_23
    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 194
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 195
    throw v1
.end method

.method private greylist-max-o handlePrintersAdded(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    return-void

    .line 204
    :cond_7
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 206
    .local v0, "printerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_28

    .line 207
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    .line 208
    .local v2, "printer":Landroid/print/PrinterInfo;
    iget-object v3, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v2    # "printer":Landroid/print/PrinterInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 210
    .end local v1    # "i":I
    :cond_28
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    .line 211
    return-void

    .line 215
    .end local v0    # "printerCount":I
    :cond_2c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 217
    .local v0, "addedPrintersMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrinterId;Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 218
    .local v1, "printerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    if-ge v2, v1, :cond_48

    .line 219
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 220
    .local v3, "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v3    # "printer":Landroid/print/PrinterInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 224
    .end local v2    # "i":I
    :cond_48
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 225
    .local v3, "oldPrinterId":Landroid/print/PrinterId;
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 226
    .local v4, "updatedPrinter":Landroid/print/PrinterInfo;
    if-eqz v4, :cond_6b

    .line 227
    iget-object v5, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v3    # "oldPrinterId":Landroid/print/PrinterId;
    .end local v4    # "updatedPrinter":Landroid/print/PrinterInfo;
    :cond_6b
    goto :goto_52

    .line 232
    :cond_6c
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 235
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    .line 236
    return-void
.end method

.method private greylist-max-o handlePrintersRemoved(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    return-void

    .line 242
    :cond_7
    const/4 v0, 0x0

    .line 243
    .local v0, "printersChanged":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 244
    .local v1, "removedPrinterIdCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_21

    .line 245
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 246
    .local v3, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v4, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 247
    const/4 v0, 0x1

    .line 244
    .end local v3    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 250
    .end local v2    # "i":I
    :cond_21
    if-eqz v0, :cond_26

    .line 251
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    .line 253
    :cond_26
    return-void
.end method

.method private greylist-max-o isDestroyedNoCheck()Z
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o notifyOnPrintersChanged()V
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    invoke-interface {v0}, Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;->onPrintersChanged()V

    .line 259
    :cond_9
    return-void
.end method

.method private static greylist-max-o throwIfNotCalledOnMainThread()V
    .registers 2

    .line 262
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    return-void

    .line 263
    :cond_b
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final greylist-max-o destroy()V
    .registers 3

    .line 144
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 145
    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Ignoring destroy - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_d
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    .line 148
    return-void
.end method

.method protected final whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    if-nez v0, :cond_10

    .line 176
    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Destroying leaked printer discovery session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    .line 179
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    return-void
.end method

.method public final greylist-max-o getPrinters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 152
    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Ignoring get printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 155
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final greylist-max-o isDestroyed()Z
    .registers 2

    .line 159
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 160
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isPrinterDiscoveryStarted()Z
    .registers 2

    .line 164
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 165
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    return v0
.end method

.method public final greylist-max-o setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    .line 169
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 170
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    .line 171
    return-void
.end method

.method public final greylist-max-o startPrinterDiscovery(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    .line 79
    const-string v0, "Ignoring start printers discovery - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 82
    :cond_e
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-nez v0, :cond_25

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    .line 85
    :try_start_15
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, v2, p1, v3}, Landroid/print/IPrintManager;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 88
    goto :goto_25

    .line 86
    :catch_1f
    move-exception v0

    .line 87
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "Error starting printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    return-void
.end method

.method public final greylist-max-o startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 108
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    .line 109
    const-string v0, "Ignoring start printer state tracking - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, p1, v2}, Landroid/print/IPrintManager;->startPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 116
    goto :goto_1c

    .line 114
    :catch_16
    move-exception v0

    .line 115
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "Error starting printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public final greylist-max-o stopPrinterDiscovery()V
    .registers 5

    .line 93
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    .line 94
    const-string v0, "Ignoring stop printers discovery - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_e
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-eqz v0, :cond_25

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    .line 100
    :try_start_15
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, v2, v3}, Landroid/print/IPrintManager;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 103
    goto :goto_25

    .line 101
    :catch_1f
    move-exception v0

    .line 102
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "Error stopping printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    return-void
.end method

.method public final greylist-max-o stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 120
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    .line 121
    const-string v0, "Ignoring stop printer state tracking - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 125
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, p1, v2}, Landroid/print/IPrintManager;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 128
    goto :goto_1c

    .line 126
    :catch_16
    move-exception v0

    .line 127
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "Error stopping printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public final greylist-max-o validatePrinters(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    .line 133
    const-string v0, "Ignoring validate printers - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 137
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, p1, v2}, Landroid/print/IPrintManager;->validatePrinters(Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 140
    goto :goto_1c

    .line 138
    :catch_16
    move-exception v0

    .line 139
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "Error validating printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
