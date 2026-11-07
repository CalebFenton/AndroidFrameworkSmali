.class public final synthetic Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/QosCallbackTracker;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/QosCallbackTracker;->$r8$lambda$E20ir9bA773jKaK8xWxxwJtVPEc(Lcom/android/internal/telephony/data/QosCallbackTracker;Ljava/util/List;)V

    return-void
.end method
