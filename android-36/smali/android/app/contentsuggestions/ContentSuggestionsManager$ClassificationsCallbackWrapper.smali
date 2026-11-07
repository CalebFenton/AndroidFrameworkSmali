.class final Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;
.super Landroid/app/contentsuggestions/IClassificationsCallback$Stub;
.source "ContentSuggestionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassificationsCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$jQKMUpI2aTKXd4oWZC1NZ0TS8Xw(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->lambda$onContentClassificationsAvailable$0(ILjava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 352
    invoke-direct {p0}, Landroid/app/contentsuggestions/IClassificationsCallback$Stub;-><init>()V

    .line 353
    iput-object p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    .line 354
    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 355
    return-void
.end method

.method private synthetic blacklist lambda$onContentClassificationsAvailable$0(ILjava/util/List;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "classifications"    # Ljava/util/List;

    .line 363
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;->onContentClassificationsAvailable(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onContentClassificationsAvailable(ILjava/util/List;)V
    .registers 7
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentClassification;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p2, "classifications":Ljava/util/List;, "Ljava/util/List<Landroid/app/contentsuggestions/ContentClassification;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;ILjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    nop

    .line 367
    return-void

    .line 365
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    throw v2
.end method
