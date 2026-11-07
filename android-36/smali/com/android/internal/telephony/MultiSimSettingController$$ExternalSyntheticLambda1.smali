.class public final synthetic Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    return-void
.end method


# virtual methods
.method public final blacklist update(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    return-void
.end method
