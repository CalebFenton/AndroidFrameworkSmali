.class Lcom/android/internal/telephony/data/PhoneSwitcher$8;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 696
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$8;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 2

    .line 699
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$8;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 700
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
