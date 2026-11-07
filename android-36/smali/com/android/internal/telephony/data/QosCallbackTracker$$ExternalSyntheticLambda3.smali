.class public final synthetic Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/QosCallbackTracker;ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

    iput p2, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;->f$2:Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

    iget v1, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$$ExternalSyntheticLambda3;->f$2:Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/QosCallbackTracker;->$r8$lambda$7Z7YkE_yVkiBWlnwHgq2iYh-M-s(Lcom/android/internal/telephony/data/QosCallbackTracker;ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V

    return-void
.end method
