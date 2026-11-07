.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/os/PersistableBundle;

.field public final synthetic blacklist f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iput p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$3:Landroid/os/PersistableBundle;

    iput-object p5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$1:I

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$3:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$oG2sDqHgpFvbce7ifKmGDb4vq1Y(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V

    return-void
.end method
