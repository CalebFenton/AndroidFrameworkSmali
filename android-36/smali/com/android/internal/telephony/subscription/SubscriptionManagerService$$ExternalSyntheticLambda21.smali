.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/ParcelUuid;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda21;->f$0:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda21;->f$0:Landroid/os/ParcelUuid;

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$BA0WLmVkQm29e5MT6xE-WDz0ilk(Landroid/os/ParcelUuid;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method
