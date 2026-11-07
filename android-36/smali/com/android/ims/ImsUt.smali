.class public Lcom/android/ims/ImsUt;
.super Ljava/lang/Object;
.source "ImsUt.java"

# interfaces
.implements Lcom/android/ims/ImsUtInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsUt$IImsUtListenerProxy;
    }
.end annotation


# static fields
.field public static final blacklist CATEGORY_CB:Ljava/lang/String; = "CB"

.field public static final blacklist CATEGORY_CDIV:Ljava/lang/String; = "CDIV"

.field public static final blacklist CATEGORY_CONF:Ljava/lang/String; = "CONF"

.field public static final blacklist CATEGORY_CW:Ljava/lang/String; = "CW"

.field public static final blacklist CATEGORY_OIP:Ljava/lang/String; = "OIP"

.field public static final blacklist CATEGORY_OIR:Ljava/lang/String; = "OIR"

.field public static final blacklist CATEGORY_TIP:Ljava/lang/String; = "TIP"

.field public static final blacklist CATEGORY_TIR:Ljava/lang/String; = "TIR"

.field private static final blacklist DBG:Z = true

.field public static final blacklist KEY_ACTION:Ljava/lang/String; = "action"

.field public static final blacklist KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final blacklist SERVICE_CLASS_NONE:I = 0x0

.field private static final blacklist SERVICE_CLASS_VOICE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImsUt"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mLockObj:Ljava/lang/Object;

.field private blacklist mPendingCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSsIndicationRegistrant:Lcom/android/ims/Registrant;

.field private final blacklist miUt:Lcom/android/ims/internal/IImsUt;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Lcom/android/ims/Registrant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsUt;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "iUt"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 90
    new-instance v0, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 93
    iput-object p1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    .line 94
    if-eqz p2, :cond_1e

    .line 95
    iput-object p2, p0, Lcom/android/ims/ImsUt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    :cond_1e
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    if-eqz v0, :cond_2e

    .line 100
    :try_start_22
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    new-instance v1, Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    invoke-direct {v1, p0}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsUt;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_2d

    .line 102
    goto :goto_2e

    .line 101
    :catch_2d
    move-exception v0

    .line 104
    :cond_2e
    :goto_2e
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 652
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 656
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 660
    const-string v0, "ImsUt"

    invoke-static {v0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    return-void
.end method

.method private blacklist sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 615
    if-eqz p1, :cond_2b

    if-nez p2, :cond_5

    goto :goto_2b

    .line 622
    :cond_5
    iget-object v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 623
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040684

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "errorString":Ljava/lang/String;
    goto :goto_1c

    .line 627
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_15
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 629
    .restart local v0    # "errorString":Ljava/lang/String;
    :goto_1c
    new-instance v1, Lcom/android/ims/ImsException;

    iget v2, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-direct {v1, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 630
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 631
    return-void

    .line 616
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-void
.end method

.method private blacklist sendSuccessReport(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 634
    if-nez p1, :cond_3

    .line 635
    return-void

    .line 638
    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 639
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 640
    return-void
.end method

.method private blacklist sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Ljava/lang/Object;

    .line 643
    if-nez p1, :cond_3

    .line 644
    return-void

    .line 647
    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 648
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 10

    .line 107
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4b

    if-eqz v1, :cond_e

    .line 110
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsUt;->close()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_4b

    .line 112
    goto :goto_e

    .line 111
    :catch_d
    move-exception v1

    .line 115
    :cond_e
    :goto_e
    :try_start_e
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 116
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 119
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2d
    if-ge v4, v2, :cond_44

    aget-object v5, v1, v4

    .line 120
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x322

    invoke-direct {v7, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v6, v7}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 119
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 124
    :cond_44
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 126
    .end local v1    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    :cond_49
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public blacklist isBinderAlive()Z
    .registers 2

    .line 588
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Message;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_1e
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIP()I

    move-result v3

    .line 292
    .local v3, "id":I
    if-gez v3, :cond_30

    .line 293
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_3c
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3a

    .line 295
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    return-void

    .line 298
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3c
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    .line 302
    .end local v3    # "id":I
    goto :goto_45

    .line 303
    :catchall_3a
    move-exception v1

    goto :goto_47

    .line 299
    :catch_3c
    move-exception v3

    .line 300
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3d
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 303
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_45
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_3a

    throw v1
.end method

.method public blacklist queryCLIR(Landroid/os/Message;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Message;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_1e
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIR()I

    move-result v3

    .line 266
    .local v3, "id":I
    if-gez v3, :cond_30

    .line 267
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_3c
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3a

    .line 269
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    return-void

    .line 272
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3c
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    .line 276
    .end local v3    # "id":I
    goto :goto_45

    .line 277
    :catchall_3a
    move-exception v1

    goto :goto_47

    .line 273
    :catch_3c
    move-exception v3

    .line 274
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3d
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 277
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_45
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_3a

    throw v1
.end method

.method public blacklist queryCOLP(Landroid/os/Message;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Message;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_1e
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLP()I

    move-result v3

    .line 344
    .local v3, "id":I
    if-gez v3, :cond_30

    .line 345
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_3c
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3a

    .line 347
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    return-void

    .line 350
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3c
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    .line 354
    .end local v3    # "id":I
    goto :goto_45

    .line 355
    :catchall_3a
    move-exception v1

    goto :goto_47

    .line 351
    :catch_3c
    move-exception v3

    .line 352
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3d
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 355
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_45
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_3a

    throw v1
.end method

.method public blacklist queryCOLR(Landroid/os/Message;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Message;

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_1e
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLR()I

    move-result v3

    .line 318
    .local v3, "id":I
    if-gez v3, :cond_30

    .line 319
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_3c
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3a

    .line 321
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    return-void

    .line 324
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3c
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    .line 328
    .end local v3    # "id":I
    goto :goto_45

    .line 329
    :catchall_3a
    move-exception v1

    goto :goto_47

    .line 325
    :catch_3c
    move-exception v3

    .line 326
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3d
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 329
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_45
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_3a

    throw v1
.end method

.method public blacklist queryCallBarring(ILandroid/os/Message;)V
    .registers 4
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ims/ImsUt;->queryCallBarring(ILandroid/os/Message;I)V

    .line 161
    return-void
.end method

.method public blacklist queryCallBarring(ILandroid/os/Message;I)V
    .registers 10
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "serviceClass"    # I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallBarring :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_32
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p3}, Lcom/android/ims/internal/IImsUt;->queryCallBarringForServiceClass(II)I

    move-result v3

    .line 182
    .local v3, "id":I
    if-gez v3, :cond_44

    .line 183
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_50
    .catchall {:try_start_32 .. :try_end_42} :catchall_4e

    .line 185
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4e

    return-void

    .line 188
    :cond_44
    :try_start_44
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_50
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4e

    .line 192
    .end local v3    # "id":I
    goto :goto_59

    .line 193
    :catchall_4e
    move-exception v1

    goto :goto_5b

    .line 189
    :catch_50
    move-exception v3

    .line 190
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_51
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 193
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_59
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_4e

    throw v1
.end method

.method public blacklist queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForward :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 204
    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_38
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2}, Lcom/android/ims/internal/IImsUt;->queryCallForward(ILjava/lang/String;)I

    move-result v3

    .line 211
    .local v3, "id":I
    if-gez v3, :cond_4a

    .line 212
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_48} :catch_56
    .catchall {:try_start_38 .. :try_end_48} :catchall_54

    .line 214
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_54

    return-void

    .line 217
    :cond_4a
    :try_start_4a
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_53} :catch_56
    .catchall {:try_start_4a .. :try_end_53} :catchall_54

    .line 221
    .end local v3    # "id":I
    goto :goto_5f

    .line 222
    :catchall_54
    move-exception v1

    goto :goto_61

    .line 218
    :catch_56
    move-exception v3

    .line 219
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_57
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 222
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_5f
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_54

    throw v1
.end method

.method public blacklist queryCallWaiting(Landroid/os/Message;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Message;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_1e
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCallWaiting()I

    move-result v3

    .line 239
    .local v3, "id":I
    if-gez v3, :cond_30

    .line 240
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_3c
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3a

    .line 242
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    return-void

    .line 245
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3c
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    .line 249
    .end local v3    # "id":I
    goto :goto_45

    .line 250
    :catchall_3a
    move-exception v1

    goto :goto_47

    .line 246
    :catch_3c
    move-exception v3

    .line 247
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3d
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 250
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_45
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_3a

    throw v1
.end method

.method public blacklist registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/android/ims/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/ims/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Lcom/android/ims/Registrant;

    .line 137
    return-void
.end method

.method public blacklist transact(Landroid/os/Bundle;Landroid/os/Message;)V
    .registers 9
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .param p2, "result"    # Landroid/os/Message;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transact :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_28
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->transact(Landroid/os/Bundle;)I

    move-result v3

    .line 600
    .local v3, "id":I
    if-gez v3, :cond_3a

    .line 601
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_46
    .catchall {:try_start_28 .. :try_end_38} :catchall_44

    .line 603
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_44

    return-void

    .line 606
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_46
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    .line 610
    .end local v3    # "id":I
    goto :goto_4f

    .line 611
    :catchall_44
    move-exception v1

    goto :goto_51

    .line 607
    :catch_46
    move-exception v3

    .line 608
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_47
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 611
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44

    throw v1
.end method

.method public blacklist unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Lcom/android/ims/Registrant;

    invoke-virtual {v0}, Lcom/android/ims/Registrant;->clear()V

    .line 144
    return-void
.end method

.method public blacklist updateCLIP(ZLandroid/os/Message;)V
    .registers 9
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_28
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIP(Z)I

    move-result v3

    .line 516
    .local v3, "id":I
    if-gez v3, :cond_3a

    .line 517
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_46
    .catchall {:try_start_28 .. :try_end_38} :catchall_44

    .line 519
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_44

    return-void

    .line 522
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_46
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    .line 526
    .end local v3    # "id":I
    goto :goto_4f

    .line 527
    :catchall_44
    move-exception v1

    goto :goto_51

    .line 523
    :catch_46
    move-exception v3

    .line 524
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_47
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 527
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44

    throw v1
.end method

.method public blacklist updateCLIR(ILandroid/os/Message;)V
    .registers 9
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_28
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIR(I)I

    move-result v3

    .line 489
    .local v3, "id":I
    if-gez v3, :cond_3a

    .line 490
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_46
    .catchall {:try_start_28 .. :try_end_38} :catchall_44

    .line 492
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_44

    return-void

    .line 495
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_46
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    .line 499
    .end local v3    # "id":I
    goto :goto_4f

    .line 500
    :catchall_44
    move-exception v1

    goto :goto_51

    .line 496
    :catch_46
    move-exception v3

    .line 497
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_47
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 500
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44

    throw v1
.end method

.method public blacklist updateCOLP(ZLandroid/os/Message;)V
    .registers 9
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_28
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLP(Z)I

    move-result v3

    .line 570
    .local v3, "id":I
    if-gez v3, :cond_3a

    .line 571
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_46
    .catchall {:try_start_28 .. :try_end_38} :catchall_44

    .line 573
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_44

    return-void

    .line 576
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_46
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    .line 580
    .end local v3    # "id":I
    goto :goto_4f

    .line 581
    :catchall_44
    move-exception v1

    goto :goto_51

    .line 577
    :catch_46
    move-exception v3

    .line 578
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_47
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 581
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44

    throw v1
.end method

.method public blacklist updateCOLR(ILandroid/os/Message;)V
    .registers 9
    .param p1, "presentation"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCOLR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_28
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLR(I)I

    move-result v3

    .line 543
    .local v3, "id":I
    if-gez v3, :cond_3a

    .line 544
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_46
    .catchall {:try_start_28 .. :try_end_38} :catchall_44

    .line 546
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_44

    return-void

    .line 549
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_46
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    .line 553
    .end local v3    # "id":I
    goto :goto_4f

    .line 554
    :catchall_44
    move-exception v1

    goto :goto_51

    .line 550
    :catch_46
    move-exception v3

    .line 551
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_47
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 554
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44

    throw v1
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    .registers 11
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;

    .line 364
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "cbType":I
    .end local p2    # "action":I
    .end local p3    # "result":Landroid/os/Message;
    .end local p4    # "barrList":[Ljava/lang/String;
    .local v1, "cbType":I
    .local v2, "action":I
    .local v3, "result":Landroid/os/Message;
    .local v4, "barrList":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/ImsUt;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V

    .line 365
    return-void
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    .registers 13
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I

    .line 374
    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "cbType":I
    .end local p2    # "action":I
    .end local p3    # "result":Landroid/os/Message;
    .end local p4    # "barrList":[Ljava/lang/String;
    .end local p5    # "serviceClass":I
    .local v1, "cbType":I
    .local v2, "action":I
    .local v3, "result":Landroid/os/Message;
    .local v4, "barrList":[Ljava/lang/String;
    .local v5, "serviceClass":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/ImsUt;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    return-void
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V
    .registers 17
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "password"    # Ljava/lang/String;

    .line 384
    if-eqz p4, :cond_65

    .line 385
    const-string v0, ""

    .line 386
    .local v0, "bList":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p4

    if-ge v1, v2, :cond_24

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 389
    .end local v1    # "i":I
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallBarring :: Ut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", barrList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 392
    .end local v0    # "bList":Ljava/lang/String;
    goto :goto_9b

    .line 394
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallBarring :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 399
    :goto_9b
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    const/4 v2, 0x0

    const/16 v3, 0x322

    :try_start_a1
    iget-object v4, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v5, p1

    move v6, p2

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Lcom/android/ims/internal/IImsUt;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "id":I
    if-gez v0, :cond_b9

    .line 405
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b7} :catch_c5
    .catchall {:try_start_a1 .. :try_end_b7} :catchall_c3

    .line 407
    :try_start_b7
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_c3

    return-void

    .line 410
    :cond_b9
    :try_start_b9
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c2} :catch_c5
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_c3

    .line 414
    .end local v0    # "id":I
    goto :goto_ce

    .line 415
    :catchall_c3
    move-exception v0

    goto :goto_d0

    .line 411
    :catch_c5
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_c6
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ce
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :goto_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_c6 .. :try_end_d1} :catchall_c3

    throw v0
.end method

.method public blacklist updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 18
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 425
    move-object/from16 v1, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForward :: Ut="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", condition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", number="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ImsUt"

    .line 426
    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", serviceClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", timeSeconds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 430
    iget-object v8, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v8

    .line 432
    const/4 v9, 0x0

    const/16 v10, 0x322

    :try_start_5a
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/ims/internal/IImsUt;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    .line 434
    .local v0, "id":I
    if-gez v0, :cond_70

    .line 435
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v10, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6e} :catch_7c
    .catchall {:try_start_5a .. :try_end_6e} :catchall_7a

    .line 437
    :try_start_6e
    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_7a

    return-void

    .line 440
    :cond_70
    :try_start_70
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_79} :catch_7c
    .catchall {:try_start_70 .. :try_end_79} :catchall_7a

    .line 444
    .end local v0    # "id":I
    goto :goto_85

    .line 445
    :catchall_7a
    move-exception v0

    goto :goto_87

    .line 441
    :catch_7c
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7d
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v10, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_85
    monitor-exit v8

    .line 446
    return-void

    .line 445
    :goto_87
    monitor-exit v8
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_7a

    throw v0
.end method

.method public blacklist updateCallWaiting(ZILandroid/os/Message;)V
    .registers 10
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_32
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2}, Lcom/android/ims/internal/IImsUt;->updateCallWaiting(ZI)I

    move-result v3

    .line 462
    .local v3, "id":I
    if-gez v3, :cond_44

    .line 463
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_50
    .catchall {:try_start_32 .. :try_end_42} :catchall_4e

    .line 465
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4e

    return-void

    .line 468
    :cond_44
    :try_start_44
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_50
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4e

    .line 472
    .end local v3    # "id":I
    goto :goto_59

    .line 473
    :catchall_4e
    move-exception v1

    goto :goto_5b

    .line 469
    :catch_50
    move-exception v3

    .line 470
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_51
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 473
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_59
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_4e

    throw v1
.end method
