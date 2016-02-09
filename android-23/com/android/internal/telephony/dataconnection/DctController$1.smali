.class Lcom/android/internal/telephony/dataconnection/DctController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap6(Lcom/android/internal/telephony/dataconnection/DctController;)V

    #@5
    .line 91
    return-void
.end method
