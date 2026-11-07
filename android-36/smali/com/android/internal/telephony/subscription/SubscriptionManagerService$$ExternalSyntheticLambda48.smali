.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda48;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda48;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$fdM6ImgZeOKLZ436NRkk-rlbiC4(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method
