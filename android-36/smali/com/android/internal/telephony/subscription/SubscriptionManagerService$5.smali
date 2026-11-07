.class Lcom/android/internal/telephony/subscription/SubscriptionManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 663
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$5;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 666
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$5;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mupdateEmbeddedSubscriptions(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    return-void
.end method
