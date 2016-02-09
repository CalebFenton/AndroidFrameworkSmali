.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 6

    #@0
    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    const-string/jumbo v2, "SubscriptionListener.onSubscriptionInfoChanged"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    #@8
    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@a
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@f
    move-result v0

    #@10
    .line 402
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@18
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-get0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@20
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-get0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->unregister()V

    #@27
    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@29
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@2b
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2d
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2f
    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@31
    .line 408
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@33
    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@35
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@38
    move-result-object v5

    #@39
    .line 407
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V

    #@3c
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-set0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@3f
    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@41
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-get0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->register()V

    #@48
    .line 398
    :cond_1
    return-void
.end method
