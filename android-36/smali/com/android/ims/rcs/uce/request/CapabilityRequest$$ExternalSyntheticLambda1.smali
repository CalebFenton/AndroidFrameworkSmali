.class public final synthetic Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    invoke-static {v0, v1, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->lambda$getFromThrottlingList$3(Ljava/util/List;Ljava/util/List;Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;)V

    return-void
.end method
