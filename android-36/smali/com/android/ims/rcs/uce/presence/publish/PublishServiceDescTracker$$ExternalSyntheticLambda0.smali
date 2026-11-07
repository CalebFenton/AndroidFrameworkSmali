.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    check-cast p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->lambda$new$0(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z

    move-result p1

    return p1
.end method
