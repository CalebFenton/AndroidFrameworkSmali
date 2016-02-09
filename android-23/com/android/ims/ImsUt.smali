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
.field public static final CATEGORY_CB:Ljava/lang/String; = "CB"

.field public static final CATEGORY_CDIV:Ljava/lang/String; = "CDIV"

.field public static final CATEGORY_CONF:Ljava/lang/String; = "CONF"

.field public static final CATEGORY_CW:Ljava/lang/String; = "CW"

.field public static final CATEGORY_OIP:Ljava/lang/String; = "OIP"

.field public static final CATEGORY_OIR:Ljava/lang/String; = "OIR"

.field public static final CATEGORY_TIP:Ljava/lang/String; = "TIP"

.field public static final CATEGORY_TIR:Ljava/lang/String; = "TIR"

.field private static final DBG:Z = true

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG:Ljava/lang/String; = "ImsUt"


# instance fields
.field private mLockObj:Ljava/lang/Object;

.field private mPendingCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final miUt:Lcom/android/ims/internal/IImsUt;


# direct methods
.method static synthetic -get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/ims/ImsUt;Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/ims/ImsUt;Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsUt;)V
    .locals 4
    .param p1, "iUt"    # Lcom/android/ims/internal/IImsUt;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@a
    .line 73
    new-instance v1, Ljava/util/HashMap;

    #@c
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 72
    iput-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@11
    .line 76
    iput-object p1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@13
    .line 78
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@19
    new-instance v2, Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-direct {v2, p0, v3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;Lcom/android/ims/ImsUt$IImsUtListenerProxy;)V

    #@1f
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsUt;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 75
    :cond_0
    :goto_0
    return-void

    #@23
    .line 81
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 570
    const-string/jumbo v0, "ImsUt"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 569
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 574
    const-string/jumbo v0, "ImsUt"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 573
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 578
    const-string/jumbo v0, "ImsUt"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 577
    return-void
.end method

.method private sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 534
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 535
    :cond_0
    return-void

    #@6
    .line 541
    :cond_1
    iget-object v1, p2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@8
    if-nez v1, :cond_2

    #@a
    .line 542
    new-instance v0, Ljava/lang/String;

    #@c
    const-string/jumbo v1, "IMS UT exception"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@12
    .line 547
    .local v0, "errorString":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/ims/ImsException;

    #@14
    iget v2, p2, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@16
    invoke-direct {v1, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    invoke-static {p1, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@1c
    .line 548
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@1f
    .line 533
    return-void

    #@20
    .line 545
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/String;

    #@22
    iget-object v1, p2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@24
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@27
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0
.end method

.method private sendSuccessReport(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 552
    if-nez p1, :cond_0

    #@3
    .line 553
    return-void

    #@4
    .line 556
    :cond_0
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@7
    .line 557
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 551
    return-void
.end method

.method private sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 561
    if-nez p1, :cond_0

    #@3
    .line 562
    return-void

    #@4
    .line 565
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@7
    .line 566
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 560
    return-void
.end method


# virtual methods
.method public close()V
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 87
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 90
    :try_start_1
    iget-object v4, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@a
    invoke-interface {v4}, Lcom/android/ims/internal/IImsUt;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 95
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@f
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_2

    #@15
    .line 97
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@17
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v4

    #@1b
    iget-object v6, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@20
    move-result v6

    #@21
    new-array v6, v6, [Ljava/util/Map$Entry;

    #@23
    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, [Ljava/util/Map$Entry;

    #@29
    .line 99
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    array-length v6, v1

    #@2a
    move v4, v3

    #@2b
    :goto_1
    if-ge v4, v6, :cond_1

    #@2d
    aget-object v2, v1, v4

    #@2f
    .line 100
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/os/Message;

    #@35
    .line 101
    new-instance v7, Lcom/android/ims/ImsReasonInfo;

    #@37
    const/16 v8, 0x322

    #@39
    const/4 v9, 0x0

    #@3a
    invoke-direct {v7, v8, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@3d
    .line 100
    invoke-direct {p0, v3, v7}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    #@40
    .line 99
    add-int/lit8 v3, v4, 0x1

    #@42
    move v4, v3

    #@43
    goto :goto_1

    #@44
    .line 104
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@46
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .end local v1    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    :cond_2
    monitor-exit v5

    #@4a
    .line 86
    return-void

    #@4b
    .line 87
    :catchall_0
    move-exception v3

    #@4c
    monitor-exit v5

    #@4d
    throw v3

    #@4e
    .line 91
    :catch_0
    move-exception v0

    #@4f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "queryCLIP :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@19
    .line 236
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@1e
    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCLIP()I

    #@21
    move-result v1

    #@22
    .line 240
    .local v1, "id":I
    if-gez v1, :cond_0

    #@24
    .line 242
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@26
    const/16 v4, 0x322

    #@28
    const/4 v5, 0x0

    #@29
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@2c
    .line 241
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v3

    #@30
    .line 243
    return-void

    #@31
    .line 246
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@3b
    .line 231
    return-void

    #@3c
    .line 247
    :catch_0
    move-exception v0

    #@3d
    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@3f
    const/16 v4, 0x322

    #@41
    const/4 v5, 0x0

    #@42
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@45
    .line 248
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method public queryCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "queryCLIR :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@19
    .line 210
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@1e
    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCLIR()I

    #@21
    move-result v1

    #@22
    .line 214
    .local v1, "id":I
    if-gez v1, :cond_0

    #@24
    .line 216
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@26
    const/16 v4, 0x322

    #@28
    const/4 v5, 0x0

    #@29
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@2c
    .line 215
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v3

    #@30
    .line 217
    return-void

    #@31
    .line 220
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@3b
    .line 205
    return-void

    #@3c
    .line 221
    :catch_0
    move-exception v0

    #@3d
    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@3f
    const/16 v4, 0x322

    #@41
    const/4 v5, 0x0

    #@42
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@45
    .line 222
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method public queryCOLP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "queryCOLP :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@19
    .line 288
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@1e
    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCOLP()I

    #@21
    move-result v1

    #@22
    .line 292
    .local v1, "id":I
    if-gez v1, :cond_0

    #@24
    .line 294
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@26
    const/16 v4, 0x322

    #@28
    const/4 v5, 0x0

    #@29
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@2c
    .line 293
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v3

    #@30
    .line 295
    return-void

    #@31
    .line 298
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@3b
    .line 283
    return-void

    #@3c
    .line 299
    :catch_0
    move-exception v0

    #@3d
    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@3f
    const/16 v4, 0x322

    #@41
    const/4 v5, 0x0

    #@42
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@45
    .line 300
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method public queryCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "queryCOLR :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@19
    .line 262
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@1e
    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCOLR()I

    #@21
    move-result v1

    #@22
    .line 266
    .local v1, "id":I
    if-gez v1, :cond_0

    #@24
    .line 268
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@26
    const/16 v4, 0x322

    #@28
    const/4 v5, 0x0

    #@29
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@2c
    .line 267
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v3

    #@30
    .line 269
    return-void

    #@31
    .line 272
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@3b
    .line 257
    return-void

    #@3c
    .line 273
    :catch_0
    move-exception v0

    #@3d
    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@3f
    const/16 v4, 0x322

    #@41
    const/4 v5, 0x0

    #@42
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@45
    .line 274
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method public queryCallBarring(ILandroid/os/Message;)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "queryCallBarring :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", cbType="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@24
    .line 126
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@26
    monitor-enter v3

    #@27
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@29
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->queryCallBarring(I)I

    #@2c
    move-result v1

    #@2d
    .line 130
    .local v1, "id":I
    if-gez v1, :cond_0

    #@2f
    .line 132
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@31
    const/16 v4, 0x322

    #@33
    const/4 v5, 0x0

    #@34
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@37
    .line 131
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 133
    return-void

    #@3c
    .line 136
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@46
    .line 121
    return-void

    #@47
    .line 137
    :catch_0
    move-exception v0

    #@48
    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@4a
    const/16 v4, 0x322

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@50
    .line 138
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v3

    #@56
    throw v2
.end method

.method public queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "queryCallForward :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", condition="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 152
    const-string/jumbo v3, ", number="

    #@20
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@2f
    .line 155
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@31
    monitor-enter v3

    #@32
    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@34
    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsUt;->queryCallForward(ILjava/lang/String;)I

    #@37
    move-result v1

    #@38
    .line 159
    .local v1, "id":I
    if-gez v1, :cond_0

    #@3a
    .line 161
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@3c
    const/16 v4, 0x322

    #@3e
    const/4 v5, 0x0

    #@3f
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@42
    .line 160
    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v3

    #@46
    .line 162
    return-void

    #@47
    .line 165
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v2, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@51
    .line 149
    return-void

    #@52
    .line 166
    :catch_0
    move-exception v0

    #@53
    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@55
    const/16 v4, 0x322

    #@57
    const/4 v5, 0x0

    #@58
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@5b
    .line 167
    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    goto :goto_0

    #@5f
    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@60
    monitor-exit v3

    #@61
    throw v2
.end method

.method public queryCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "queryCallWaiting :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@19
    .line 183
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@1e
    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCallWaiting()I

    #@21
    move-result v1

    #@22
    .line 187
    .local v1, "id":I
    if-gez v1, :cond_0

    #@24
    .line 189
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@26
    const/16 v4, 0x322

    #@28
    const/4 v5, 0x0

    #@29
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@2c
    .line 188
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v3

    #@30
    .line 190
    return-void

    #@31
    .line 193
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@3b
    .line 178
    return-void

    #@3c
    .line 194
    :catch_0
    move-exception v0

    #@3d
    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@3f
    const/16 v4, 0x322

    #@41
    const/4 v5, 0x0

    #@42
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@45
    .line 195
    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method public transact(Landroid/os/Bundle;Landroid/os/Message;)V
    .locals 6
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "transact :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", ssInfo="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@24
    .line 515
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@26
    monitor-enter v3

    #@27
    .line 517
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@29
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->transact(Landroid/os/Bundle;)I

    #@2c
    move-result v1

    #@2d
    .line 519
    .local v1, "id":I
    if-gez v1, :cond_0

    #@2f
    .line 521
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@31
    const/16 v4, 0x322

    #@33
    const/4 v5, 0x0

    #@34
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@37
    .line 520
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 522
    return-void

    #@3c
    .line 525
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@46
    .line 510
    return-void

    #@47
    .line 526
    :catch_0
    move-exception v0

    #@48
    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@4a
    const/16 v4, 0x322

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@50
    .line 527
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v3

    #@56
    throw v2
.end method

.method public updateCLIP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "updateCLIP :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", enable="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@24
    .line 438
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@26
    monitor-enter v3

    #@27
    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@29
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIP(Z)I

    #@2c
    move-result v1

    #@2d
    .line 442
    .local v1, "id":I
    if-gez v1, :cond_0

    #@2f
    .line 444
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@31
    const/16 v4, 0x322

    #@33
    const/4 v5, 0x0

    #@34
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@37
    .line 443
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 445
    return-void

    #@3c
    .line 448
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@46
    .line 433
    return-void

    #@47
    .line 449
    :catch_0
    move-exception v0

    #@48
    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@4a
    const/16 v4, 0x322

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@50
    .line 450
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v3

    #@56
    throw v2
.end method

.method public updateCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "updateCLIR :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", clirMode="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@24
    .line 411
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@26
    monitor-enter v3

    #@27
    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@29
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIR(I)I

    #@2c
    move-result v1

    #@2d
    .line 415
    .local v1, "id":I
    if-gez v1, :cond_0

    #@2f
    .line 417
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@31
    const/16 v4, 0x322

    #@33
    const/4 v5, 0x0

    #@34
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@37
    .line 416
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 418
    return-void

    #@3c
    .line 421
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@46
    .line 406
    return-void

    #@47
    .line 422
    :catch_0
    move-exception v0

    #@48
    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@4a
    const/16 v4, 0x322

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@50
    .line 423
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v3

    #@56
    throw v2
.end method

.method public updateCOLP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "updateCallWaiting :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", enable="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@24
    .line 492
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@26
    monitor-enter v3

    #@27
    .line 494
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@29
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLP(Z)I

    #@2c
    move-result v1

    #@2d
    .line 496
    .local v1, "id":I
    if-gez v1, :cond_0

    #@2f
    .line 498
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@31
    const/16 v4, 0x322

    #@33
    const/4 v5, 0x0

    #@34
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@37
    .line 497
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 499
    return-void

    #@3c
    .line 502
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@46
    .line 487
    return-void

    #@47
    .line 503
    :catch_0
    move-exception v0

    #@48
    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@4a
    const/16 v4, 0x322

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@50
    .line 504
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 492
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v3

    #@56
    throw v2
.end method

.method public updateCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentation"    # I
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "updateCOLR :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", presentation="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@24
    .line 465
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@26
    monitor-enter v3

    #@27
    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@29
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLR(I)I

    #@2c
    move-result v1

    #@2d
    .line 469
    .local v1, "id":I
    if-gez v1, :cond_0

    #@2f
    .line 471
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@31
    const/16 v4, 0x322

    #@33
    const/4 v5, 0x0

    #@34
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@37
    .line 470
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 472
    return-void

    #@3c
    .line 475
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@46
    .line 460
    return-void

    #@47
    .line 476
    :catch_0
    move-exception v0

    #@48
    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@4a
    const/16 v4, 0x322

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@50
    .line 477
    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 465
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v3

    #@56
    throw v2
.end method

.method public updateCallBarring(IZLandroid/os/Message;[Ljava/lang/String;)V
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "enable"    # Z
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 312
    if-eqz p4, :cond_1

    #@2
    .line 313
    new-instance v0, Ljava/lang/String;

    #@4
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #@7
    .line 314
    .local v0, "bList":Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    array-length v4, p4

    #@9
    if-ge v2, v4, :cond_0

    #@b
    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    aget-object v5, p4, v2

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, " "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@24
    .line 314
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 317
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "updateCallBarring :: Ut="

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    const-string/jumbo v5, ", cbType="

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 318
    const-string/jumbo v5, ", enable="

    #@47
    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 318
    const-string/jumbo v5, ", barrList="

    #@52
    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-direct {p0, v4}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@61
    .line 326
    .end local v0    # "bList":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@63
    monitor-enter v5

    #@64
    .line 328
    :try_start_0
    iget-object v4, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@66
    invoke-interface {v4, p1, p2, p4}, Lcom/android/ims/internal/IImsUt;->updateCallBarring(IZ[Ljava/lang/String;)I

    #@69
    move-result v3

    #@6a
    .line 330
    .local v3, "id":I
    if-gez v3, :cond_2

    #@6c
    .line 332
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    #@6e
    const/16 v6, 0x322

    #@70
    const/4 v7, 0x0

    #@71
    invoke-direct {v4, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@74
    .line 331
    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    monitor-exit v5

    #@78
    .line 333
    return-void

    #@79
    .line 321
    .end local v3    # "id":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v5, "updateCallBarring :: Ut="

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    const-string/jumbo v5, ", cbType="

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    .line 322
    const-string/jumbo v5, ", enable="

    #@99
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v4

    #@9d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v4

    #@a5
    invoke-direct {p0, v4}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@a8
    goto :goto_1

    #@a9
    .line 336
    .restart local v3    # "id":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@ab
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ae
    move-result-object v6

    #@af
    invoke-virtual {v4, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b2
    .end local v3    # "id":I
    :goto_2
    monitor-exit v5

    #@b3
    .line 310
    return-void

    #@b4
    .line 337
    :catch_0
    move-exception v1

    #@b5
    .line 339
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    #@b7
    const/16 v6, 0x322

    #@b9
    const/4 v7, 0x0

    #@ba
    invoke-direct {v4, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@bd
    .line 338
    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c0
    goto :goto_2

    #@c1
    .line 326
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@c2
    monitor-exit v5

    #@c3
    throw v4
.end method

.method public updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "updateCallForward :: Ut="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", action="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 352
    const-string/jumbo v1, ", condition="

    #@20
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 352
    const-string/jumbo v1, ", number="

    #@2b
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 353
    const-string/jumbo v1, ", serviceClass="

    #@36
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 353
    const-string/jumbo v1, ", timeSeconds="

    #@41
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@50
    .line 356
    iget-object v8, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@52
    monitor-enter v8

    #@53
    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@55
    move v1, p1

    #@56
    move v2, p2

    #@57
    move-object v3, p3

    #@58
    move v4, p4

    #@59
    move v5, p5

    #@5a
    invoke-interface/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt;->updateCallForward(IILjava/lang/String;II)I

    #@5d
    move-result v7

    #@5e
    .line 360
    .local v7, "id":I
    if-gez v7, :cond_0

    #@60
    .line 362
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    #@62
    const/16 v1, 0x322

    #@64
    const/4 v2, 0x0

    #@65
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@68
    .line 361
    invoke-direct {p0, p6, v0}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    monitor-exit v8

    #@6c
    .line 363
    return-void

    #@6d
    .line 366
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@6f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .end local v7    # "id":I
    :goto_0
    monitor-exit v8

    #@77
    .line 349
    return-void

    #@78
    .line 367
    :catch_0
    move-exception v6

    #@79
    .line 369
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    #@7b
    const/16 v1, 0x322

    #@7d
    const/4 v2, 0x0

    #@7e
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@81
    .line 368
    invoke-direct {p0, p6, v0}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 356
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@86
    monitor-exit v8

    #@87
    throw v0
.end method

.method public updateCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "updateCallWaiting :: Ut="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", enable="

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 381
    const-string/jumbo v3, ",serviceClass="

    #@20
    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    #@2f
    .line 384
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    #@31
    monitor-enter v3

    #@32
    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    #@34
    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsUt;->updateCallWaiting(ZI)I

    #@37
    move-result v1

    #@38
    .line 388
    .local v1, "id":I
    if-gez v1, :cond_0

    #@3a
    .line 390
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@3c
    const/16 v4, 0x322

    #@3e
    const/4 v5, 0x0

    #@3f
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@42
    .line 389
    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v3

    #@46
    .line 391
    return-void

    #@47
    .line 394
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    #@49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v2, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .end local v1    # "id":I
    :goto_0
    monitor-exit v3

    #@51
    .line 378
    return-void

    #@52
    .line 395
    :catch_0
    move-exception v0

    #@53
    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    #@55
    const/16 v4, 0x322

    #@57
    const/4 v5, 0x0

    #@58
    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    #@5b
    .line 396
    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    goto :goto_0

    #@5f
    .line 384
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@60
    monitor-exit v3

    #@61
    throw v2
.end method
