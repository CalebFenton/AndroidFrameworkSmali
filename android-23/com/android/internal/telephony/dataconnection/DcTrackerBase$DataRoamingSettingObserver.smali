.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    .line 417
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 418
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@b
    .line 416
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@12
    const v2, 0x4200b

    #@15
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 437
    :cond_0
    return-void
.end method

.method public register()V
    .locals 4

    #@0
    .prologue
    .line 423
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 424
    const-string/jumbo v0, "data_roaming"

    #@e
    .line 429
    .local v0, "contentUri":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@10
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@12
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1a
    .line 421
    return-void

    #@1b
    .line 426
    .end local v0    # "contentUri":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "data_roaming"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@29
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2b
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@2e
    move-result v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .restart local v0    # "contentUri":Ljava/lang/String;
    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@4
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@7
    .line 432
    return-void
.end method
