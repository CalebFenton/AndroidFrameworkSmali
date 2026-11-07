.class Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;
.super Ljava/lang/Object;
.source "SupplierUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Barrier"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mCallback:Ljava/lang/Runnable;

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

.field private blacklist mWaitingCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$DcC_-D4gWrhClan8BYL7QG1_BLc(Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->lambda$waitForAll$0(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$waitForAll$0(Ljava/lang/Object;)V
    .registers 2
    .param p1, "unused"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->onSupplierAvailable()V

    return-void
.end method

.method private blacklist notifyCallbackIfAppropriate()V
    .registers 2

    .line 56
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mWaitingCount:I

    if-eqz v0, :cond_5

    return-void

    .line 57
    :cond_5
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_a

    return-void

    .line 58
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mCallback:Ljava/lang/Runnable;

    .line 60
    return-void
.end method

.method private blacklist onSupplierAvailable()V
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 50
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mWaitingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mWaitingCount:I

    .line 51
    nop

    .line 52
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->notifyCallbackIfAppropriate()V

    .line 53
    return-void
.end method


# virtual methods
.method varargs blacklist waitForAll(Ljava/lang/Runnable;[Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)V
    .registers 10
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "suppliers"    # [Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    .line 22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 23
    nop

    .line 24
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mCallback:Ljava/lang/Runnable;

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "waitingSupplierCount":I
    new-instance v1, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;)V

    .line 27
    .local v1, "supplierCallback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<*>;"
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_44

    aget-object v4, p2, v3

    .line 28
    .local v4, "supplier":Landroid/net/connectivity/org/chromium/base/supplier/Supplier;, "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<*>;"
    invoke-interface {v4}, Landroid/net/connectivity/org/chromium/base/supplier/Supplier;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_41

    .line 30
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 31
    instance-of v5, v4, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    if-eqz v5, :cond_2a

    .line 32
    move-object v5, v4

    check-cast v5, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    .line 33
    .local v5, "observableSupplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<*>;"
    new-instance v6, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;

    invoke-direct {v6, v5, v1}, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 34
    .end local v5    # "observableSupplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<*>;"
    goto :goto_41

    :cond_2a
    instance-of v5, v4, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;

    if-eqz v5, :cond_35

    .line 35
    move-object v5, v4

    check-cast v5, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;

    invoke-interface {v5, v1}, Landroid/net/connectivity/org/chromium/base/supplier/OneshotSupplier;->onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    goto :goto_41

    .line 36
    :cond_35
    instance-of v5, v4, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplier;

    if-eqz v5, :cond_40

    .line 37
    move-object v5, v4

    check-cast v5, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplier;

    invoke-interface {v5, v1}, Landroid/net/connectivity/org/chromium/base/supplier/SyncOneshotSupplier;->onAvailable(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;

    goto :goto_41

    .line 39
    :cond_40
    nop

    .line 27
    .end local v4    # "supplier":Landroid/net/connectivity/org/chromium/base/supplier/Supplier;, "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<*>;"
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 44
    :cond_44
    iput v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->mWaitingCount:I

    .line 45
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->notifyCallbackIfAppropriate()V

    .line 46
    return-void
.end method
