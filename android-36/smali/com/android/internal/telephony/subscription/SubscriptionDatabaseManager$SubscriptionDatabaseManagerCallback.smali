.class public abstract Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;
.super Ljava/lang/Object;
.source "SubscriptionDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubscriptionDatabaseManagerCallback"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 683
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public blacklist invokeFromExecutor(Ljava/lang/Runnable;)V
    .registers 2

    .line 692
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract blacklist onInitialized()V
.end method

.method public abstract blacklist onSubscriptionChanged(I)V
.end method
