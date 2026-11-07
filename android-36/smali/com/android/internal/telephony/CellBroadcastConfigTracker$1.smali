.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$1;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$1;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method
