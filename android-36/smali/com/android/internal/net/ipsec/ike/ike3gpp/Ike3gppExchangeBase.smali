.class abstract Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;
.super Ljava/lang/Object;
.source "Ike3gppExchangeBase.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected final blacklist mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

.field private final blacklist mUserCbExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$7pM5aCIl7DNkA8KZb4-wEBQP9jc(Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;->lambda$maybeInvokeUserCallback$0(Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "ike3gppExtension"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    .param p2, "userCbExecutor"    # Ljava/util/concurrent/Executor;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    nop

    .line 43
    const-string v0, "ike3gppExtension must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 44
    const-string v0, "userCbExecutor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    .line 45
    return-void
.end method

.method private synthetic blacklist lambda$maybeInvokeUserCallback$0(Ljava/util/List;)V
    .registers 3
    .param p1, "ike3gppDataList"    # Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 54
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppDataListener()Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    move-result-object v0

    .line 55
    invoke-interface {v0, p1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;->onIke3gppDataReceived(Ljava/util/List;)V

    .line 53
    return-void
.end method


# virtual methods
.method blacklist maybeInvokeUserCallback(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "ike3gppDataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 51
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    .line 58
    goto :goto_1e

    .line 56
    :catch_12
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;->TAG:Ljava/lang/String;

    const-string v3, "Ike3gppDataListener#onIke3gppDataReceived execution failed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method
