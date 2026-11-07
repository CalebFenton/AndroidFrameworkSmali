.class public final synthetic Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/SubscriptionManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/SubscriptionManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/SubscriptionManager;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->$r8$lambda$4qyfT2nanfDxhPKgO8rARHDz9Ao(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    return p1
.end method
