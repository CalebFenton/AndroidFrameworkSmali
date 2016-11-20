.class public final Landroid/print/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;,
        Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;,
        Landroid/print/PrinterDiscoverySession$SessionHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static final MSG_PRINTERS_ADDED:I = 0x1

.field private static final MSG_PRINTERS_REMOVED:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsPrinterDiscoveryStarted:Z

.field private mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

.field private mObserver:Landroid/print/IPrinterDiscoveryObserver;

.field private final mPrintManager:Landroid/print/IPrintManager;

.field private final mPrinters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .locals 0
    .param p1, "addedPrinters"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersAdded(Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .locals 0
    .param p1, "printerIds"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersRemoved(Ljava/util/List;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V
    .locals 4
    .param p1, "printManager"    # Landroid/print/IPrintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v1, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    .line 46
    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@a
    .line 66
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@c
    .line 67
    iput p3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@e
    .line 68
    new-instance v1, Landroid/print/PrinterDiscoverySession$SessionHandler;

    #@10
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, p0, v2}, Landroid/print/PrinterDiscoverySession$SessionHandler;-><init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V

    #@17
    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    #@19
    .line 69
    new-instance v1, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;

    #@1b
    invoke-direct {v1, p0}, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;-><init>(Landroid/print/PrinterDiscoverySession;)V

    #@1e
    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@20
    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@22
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@24
    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@26
    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 65
    :goto_0
    return-void

    #@2a
    .line 72
    :catch_0
    move-exception v0

    #@2b
    .line 73
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@2e
    const-string/jumbo v2, "Error creating printer discovery session"

    #@31
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_0
.end method

.method private destroyNoCheck()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 187
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    #@4
    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@6
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@8
    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@a
    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 193
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@f
    .line 194
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@11
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    #@14
    .line 186
    :goto_0
    return-void

    #@15
    .line 190
    :catch_0
    move-exception v0

    #@16
    .line 191
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@19
    const-string/jumbo v2, "Error destroying printer discovery session"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 193
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@21
    .line 194
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@23
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    #@26
    goto :goto_0

    #@27
    .line 192
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@28
    .line 193
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@2a
    .line 194
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@2c
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    #@2f
    .line 192
    throw v1
.end method

.method private handlePrintersAdded(Ljava/util/List;)V
    .locals 9
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
    .line 199
    .local p1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 200
    return-void

    #@7
    .line 204
    :cond_0
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@9
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_2

    #@f
    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@12
    move-result v5

    #@13
    .line 206
    .local v5, "printerCount":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    #@16
    .line 207
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/print/PrinterInfo;

    #@1c
    .line 208
    .local v4, "printer":Landroid/print/PrinterInfo;
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@1e
    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 206
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 210
    .end local v4    # "printer":Landroid/print/PrinterInfo;
    :cond_1
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    #@2b
    .line 211
    return-void

    #@2c
    .line 216
    .end local v1    # "i":I
    .end local v5    # "printerCount":I
    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    #@2e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@31
    .line 217
    .local v0, "addedPrintersMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrinterId;Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@34
    move-result v5

    #@35
    .line 218
    .restart local v5    # "printerCount":I
    const/4 v1, 0x0

    #@36
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    #@38
    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Landroid/print/PrinterInfo;

    #@3e
    .line 220
    .restart local v4    # "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v0, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 218
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 224
    .end local v4    # "printer":Landroid/print/PrinterInfo;
    :cond_3
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@4a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@4d
    move-result-object v7

    #@4e
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v3

    #@52
    .local v3, "oldPrinterId$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_5

    #@58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v2

    #@5c
    check-cast v2, Landroid/print/PrinterId;

    #@5e
    .line 225
    .local v2, "oldPrinterId":Landroid/print/PrinterId;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v6

    #@62
    check-cast v6, Landroid/print/PrinterInfo;

    #@64
    .line 226
    .local v6, "updatedPrinter":Landroid/print/PrinterInfo;
    if-eqz v6, :cond_4

    #@66
    .line 227
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@68
    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    goto :goto_2

    #@6c
    .line 232
    .end local v2    # "oldPrinterId":Landroid/print/PrinterId;
    .end local v6    # "updatedPrinter":Landroid/print/PrinterInfo;
    :cond_5
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@6e
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@71
    .line 235
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    #@74
    .line 198
    return-void
.end method

.method private handlePrintersRemoved(Ljava/util/List;)V
    .locals 5
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
    .line 239
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 240
    return-void

    #@7
    .line 242
    :cond_0
    const/4 v1, 0x0

    #@8
    .line 243
    .local v1, "printersChanged":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    .line 244
    .local v3, "removedPrinterIdCount":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@f
    .line 245
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/print/PrinterId;

    #@15
    .line 246
    .local v2, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v4, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@17
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 247
    const/4 v1, 0x1

    #@1e
    .line 244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 250
    .end local v2    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_2
    if-eqz v1, :cond_3

    #@23
    .line 251
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    #@26
    .line 238
    :cond_3
    return-void
.end method

.method private isDestroyedNoCheck()Z
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private notifyOnPrintersChanged()V
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 257
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    #@6
    invoke-interface {v0}, Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;->onPrintersChanged()V

    #@9
    .line 255
    :cond_0
    return-void
.end method

.method private static throwIfNotCalledOnMainThread()V
    .locals 2

    #@0
    .prologue
    .line 262
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
    .line 263
    new-instance v0, Ljava/lang/IllegalAccessError;

    #@c
    const-string/jumbo v1, "must be called from the main thread"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 145
    const-string/jumbo v0, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v1, "Ignoring destroy - session destroyed"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 147
    :cond_0
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    #@12
    .line 143
    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 176
    const-string/jumbo v0, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v1, "Destroying leaked printer discovery session"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 177
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    #@12
    .line 179
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@15
    .line 174
    return-void
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
    .line 151
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 152
    const-string/jumbo v0, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v1, "Ignoring get printers - session destroyed"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 155
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@16
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    #@18
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1f
    return-object v0
.end method

.method public final isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 159
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    #@3
    .line 160
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .locals 1

    #@0
    .prologue
    .line 164
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    #@3
    .line 165
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    #@5
    return v0
.end method

.method public final setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    #@0
    .prologue
    .line 169
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    #@3
    .line 170
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    #@5
    .line 168
    return-void
.end method

.method public final startPrinterDiscovery(Ljava/util/List;)V
    .locals 4
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
    .line 78
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 79
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v2, "Ignoring start printers discovery - session destroyed"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 80
    return-void

    #@10
    .line 82
    :cond_0
    iget-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    #@12
    if-nez v1, :cond_1

    #@14
    .line 83
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    #@17
    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@19
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@1b
    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@1d
    invoke-interface {v1, v2, p1, v3}, Landroid/print/IPrintManager;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 77
    :cond_1
    :goto_0
    return-void

    #@21
    .line 86
    :catch_0
    move-exception v0

    #@22
    .line 87
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@25
    const-string/jumbo v2, "Error starting printer discovery"

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0
.end method

.method public final startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 109
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v2, "Ignoring start printer state tracking - session destroyed"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 110
    return-void

    #@10
    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@12
    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@14
    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->startPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 107
    :goto_0
    return-void

    #@18
    .line 114
    :catch_0
    move-exception v0

    #@19
    .line 115
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@1c
    const-string/jumbo v2, "Error starting printer state tracking"

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method public final stopPrinterDiscovery()V
    .locals 4

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 94
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v2, "Ignoring stop printers discovery - session destroyed"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 95
    return-void

    #@10
    .line 97
    :cond_0
    iget-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 98
    const/4 v1, 0x0

    #@15
    iput-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    #@17
    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@19
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    #@1b
    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@1d
    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 92
    :cond_1
    :goto_0
    return-void

    #@21
    .line 101
    :catch_0
    move-exception v0

    #@22
    .line 102
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@25
    const-string/jumbo v2, "Error stopping printer discovery"

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0
.end method

.method public final stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 121
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v2, "Ignoring stop printer state tracking - session destroyed"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 122
    return-void

    #@10
    .line 125
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@12
    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@14
    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 119
    :goto_0
    return-void

    #@18
    .line 126
    :catch_0
    move-exception v0

    #@19
    .line 127
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@1c
    const-string/jumbo v2, "Error stopping printer state tracking"

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method public final validatePrinters(Ljava/util/List;)V
    .locals 3
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
    .line 132
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 133
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@9
    const-string/jumbo v2, "Ignoring validate printers - session destroyed"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 134
    return-void

    #@10
    .line 137
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    #@12
    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    #@14
    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->validatePrinters(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 131
    :goto_0
    return-void

    #@18
    .line 138
    :catch_0
    move-exception v0

    #@19
    .line 139
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    #@1c
    const-string/jumbo v2, "Error validating printers"

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method
