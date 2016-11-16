.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    #@5
    .line 343
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    const/4 v1, -0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@b
    .line 342
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    .line 341
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    #@0
    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    const-string/jumbo v2, "SubscriptionListener.onSubscriptionInfoChanged"

    #@5
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@8
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@a
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get5(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@11
    move-result v0

    #@12
    .line 354
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 355
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@1a
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap5(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@1d
    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    #@22
    move-result v1

    #@23
    if-eq v1, v0, :cond_1

    #@25
    .line 358
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@28
    move-result v1

    #@29
    .line 357
    if-eqz v1, :cond_1

    #@2b
    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@30
    .line 350
    :cond_1
    return-void
.end method
