.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map$Entry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map$Entry;

    check-cast p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->lambda$updateImsRegistration$2(Ljava/util/Map$Entry;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z

    move-result p1

    return p1
.end method
