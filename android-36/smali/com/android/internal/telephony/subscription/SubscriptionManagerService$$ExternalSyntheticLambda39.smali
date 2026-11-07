.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iput p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$3:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$1:I

    iget v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$3:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$fj0GfwO0yUO3hOf_SsXtZLaD5PM(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method
