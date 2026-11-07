.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;->f$1:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;->f$1:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$CvxsdHiJrtfyAhaRY6RJUuh03qw(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    return-void
.end method
