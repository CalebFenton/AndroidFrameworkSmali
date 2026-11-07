.class public final Landroid/se/omapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/SEService$SEListener;,
        Landroid/se/omapi/SEService$OnConnectedListener;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SECURE_ELEMENT_STATE_CHANGED:Ljava/lang/String; = "android.se.omapi.action.SECURE_ELEMENT_STATE_CHANGED"

.field public static final whitelist EXTRA_READER_NAME:Ljava/lang/String; = "android.se.omapi.extra.READER_NAME"

.field public static final whitelist EXTRA_READER_STATE:Ljava/lang/String; = "android.se.omapi.extra.READER_STATE"

.field public static final greylist-max-o IO_ERROR:I = 0x1

.field public static final greylist-max-o NO_SUCH_ELEMENT_ERROR:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OMAPI.SEService"

.field private static final blacklist UICC_TERMINAL:Ljava/lang/String; = "SIM"


# instance fields
.field private greylist-max-o mConnection:Landroid/content/ServiceConnection;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mReaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/se/omapi/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSEListener:Landroid/se/omapi/SEService$SEListener;

.field private volatile greylist-max-o mSecureElementService:Landroid/se/omapi/ISecureElementService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSEListener(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;
    .registers 1

    iget-object p0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecureElementService(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)V
    .registers 2

    iput-object p1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/se/omapi/SEService$OnConnectedListener;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/se/omapi/SEService$SEListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/se/omapi/SEService$SEListener;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/SEService-IA;)V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    .line 176
    if-eqz p1, :cond_55

    if-eqz p3, :cond_55

    if-eqz p2, :cond_55

    .line 180
    iput-object p1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    iput-object p3, v0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    .line 182
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    iput-object p2, v0, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 184
    new-instance v0, Landroid/se/omapi/SEService$1;

    invoke-direct {v0, p0}, Landroid/se/omapi/SEService$1;-><init>(Landroid/se/omapi/SEService;)V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/se/omapi/ISecureElementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.se"

    const-string v2, "com.android.se.SecureElementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 206
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 207
    .local v1, "bindingSuccessful":Z
    if-eqz v1, :cond_54

    .line 208
    const-string v2, "OMAPI.SEService"

    const-string v3, "bindService successful"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_54
    return-void

    .line 177
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bindingSuccessful":Z
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Arguments must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    invoke-interface {v0, p1}, Landroid/se/omapi/ISecureElementService;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 307
    :catch_7
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist loadReaders()V
    .registers 8

    .line 316
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_4b

    .line 321
    :try_start_4
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementService;->getReaders()[Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_45

    .line 324
    .local v0, "readerNames":[Ljava/lang/String;
    nop

    .line 326
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    .line 327
    .local v3, "readerName":Ljava/lang/String;
    iget-object v4, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_41

    .line 329
    :try_start_19
    iget-object v4, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    new-instance v5, Landroid/se/omapi/Reader;

    .line 330
    invoke-direct {p0, v3}, Landroid/se/omapi/SEService;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object v6

    invoke-direct {v5, p0, v3, v6}, Landroid/se/omapi/Reader;-><init>(Landroid/se/omapi/SEService;Ljava/lang/String;Landroid/se/omapi/ISecureElementReader;)V

    .line 329
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_28

    .line 333
    goto :goto_41

    .line 331
    :catch_28
    move-exception v4

    .line 332
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adding Reader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OMAPI.SEService"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v3    # "readerName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 336
    :cond_44
    return-void

    .line 322
    .end local v0    # "readerNames":[Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method greylist-max-o getListener()Landroid/se/omapi/ISecureElementListener;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    return-object v0
.end method

.method public whitelist getReaders()[Landroid/se/omapi/Reader;
    .registers 3

    .line 230
    invoke-direct {p0}, Landroid/se/omapi/SEService;->loadReaders()V

    .line 232
    iget-object v0, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/se/omapi/Reader;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/se/omapi/Reader;

    return-object v0
.end method

.method public whitelist getUiccReader(I)Landroid/se/omapi/Reader;
    .registers 7
    .param p1, "slotNumber"    # I

    .line 244
    const/4 v0, 0x1

    if-lt p1, v0, :cond_43

    .line 247
    invoke-direct {p0}, Landroid/se/omapi/SEService;->loadReaders()V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "readerName":Ljava/lang/String;
    iget-object v1, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/se/omapi/Reader;

    .line 252
    .local v1, "reader":Landroid/se/omapi/Reader;
    if-eqz v1, :cond_24

    .line 256
    return-object v1

    .line 253
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v0    # "readerName":Ljava/lang/String;
    .end local v1    # "reader":Landroid/se/omapi/Reader;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "slotNumber should be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 294
    const-string v0, "3.3"

    return-object v0
.end method

.method public whitelist isConnected()Z
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist shutdown()V
    .registers 5

    .line 269
    iget-object v0, p0, Landroid/se/omapi/SEService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    iget-object v1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v1, :cond_24

    .line 271
    iget-object v1, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/se/omapi/Reader;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_32

    .line 273
    .local v2, "reader":Landroid/se/omapi/Reader;
    :try_start_1d
    invoke-virtual {v2}, Landroid/se/omapi/Reader;->closeSessions()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_32

    .line 274
    :goto_20
    goto :goto_23

    :catch_21
    move-exception v3

    goto :goto_20

    .line 275
    .end local v2    # "reader":Landroid/se/omapi/Reader;
    :goto_23
    goto :goto_11

    .line 278
    :cond_24
    :try_start_24
    iget-object v1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2b} :catch_2c
    .catchall {:try_start_24 .. :try_end_2b} :catchall_32

    .line 282
    goto :goto_2d

    .line 279
    :catch_2c
    move-exception v1

    .line 283
    :goto_2d
    const/4 v1, 0x0

    :try_start_2e
    iput-object v1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    .line 284
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v1
.end method
