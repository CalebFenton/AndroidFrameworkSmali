.class Lcom/android/internal/telephony/data/DataNetworkController$9;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1107
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$9;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 2

    .line 1110
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$9;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
