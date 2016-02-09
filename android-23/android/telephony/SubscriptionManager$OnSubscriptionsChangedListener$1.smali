.class Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;
.super Landroid/os/Handler;
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
    .line 350
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;->this$1:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;->this$1:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    #@5
    .line 352
    return-void
.end method
