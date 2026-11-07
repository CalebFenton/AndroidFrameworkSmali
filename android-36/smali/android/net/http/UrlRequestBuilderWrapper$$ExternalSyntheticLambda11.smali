.class public final synthetic Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/http/UploadDataProvider;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda11;->f$0:Landroid/net/http/UploadDataProvider;

    iput-object p2, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda11;->f$1:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda11;->f$0:Landroid/net/http/UploadDataProvider;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda11;->f$1:Ljava/util/concurrent/Executor;

    check-cast p1, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-static {v0, v1, p1}, Landroid/net/http/UrlRequestBuilderWrapper;->lambda$setUploadDataProvider$8(Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V

    return-void
.end method
