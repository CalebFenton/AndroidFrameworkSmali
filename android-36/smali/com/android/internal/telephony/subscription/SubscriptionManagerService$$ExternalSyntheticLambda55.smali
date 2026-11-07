.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field public final synthetic blacklist f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/UserHandle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;->f$1:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$EOOe211rAJ606jAjnng7sgzsEPI(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/UserHandle;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method
