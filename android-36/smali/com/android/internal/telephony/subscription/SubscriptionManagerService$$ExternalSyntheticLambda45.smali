.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;

    iput p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;

    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;->f$1:I

    invoke-static {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$vgvDQQXcEASWhiLbaG_PJHLUZVI(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V

    return-void
.end method
