.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field public final synthetic blacklist f$1:Landroid/os/ParcelUuid;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$1:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$1:Landroid/os/ParcelUuid;

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->$r8$lambda$vzTV8OO6nk4l4se-GaB0Y1pxR0g(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
