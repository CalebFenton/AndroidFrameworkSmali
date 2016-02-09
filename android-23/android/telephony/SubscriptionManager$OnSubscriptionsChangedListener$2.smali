.class Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method constructor <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@0
    .prologue
    .line 372
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;->this$1:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;->this$1:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@2
    invoke-static {v0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->-get0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 374
    return-void
.end method
