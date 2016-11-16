.class final Lcom/android/server/MmsServiceBroker$BinderService;
.super Lcom/android/internal/telephony/IMms$Stub;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# static fields
.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MmsServiceBroker;

    #@0
    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telephony/IMms$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MmsServiceBroker;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;)V

    #@3
    return-void
.end method

.method private adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "permission"    # I

    #@0
    .prologue
    .line 502
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 503
    .local v0, "callingUserId":I
    if-eqz v0, :cond_0

    #@6
    .line 504
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@9
    move-result-object p1

    #@a
    .line 506
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v4

    #@e
    .line 508
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@10
    invoke-static {v6}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    #@13
    move-result-object v6

    #@14
    const-string/jumbo v7, "com.android.phone"

    #@17
    invoke-virtual {v6, v7, p1, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@1a
    .line 511
    new-instance v2, Landroid/content/Intent;

    #@1c
    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 513
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@21
    invoke-static {v6}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    #@24
    move-result-object v6

    #@25
    const-string/jumbo v7, "phone"

    #@28
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/telephony/TelephonyManager;

    #@2e
    .line 514
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    #@31
    move-result-object v1

    #@32
    .line 516
    .local v1, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    #@34
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@37
    move-result v6

    #@38
    const/4 v7, 0x1

    #@39
    if-ne v6, v7, :cond_1

    #@3b
    .line 517
    iget-object v6, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@3d
    invoke-static {v6}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    #@40
    move-result-object v7

    #@41
    const/4 v6, 0x0

    #@42
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v6

    #@46
    check-cast v6, Ljava/lang/String;

    #@48
    invoke-virtual {v7, v6, p1, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 520
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 522
    return-object p1

    #@4f
    .line 519
    .end local v1    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v6

    #@50
    .line 520
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 519
    throw v6
.end method


# virtual methods
.method public addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0xf

    #@c
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 460
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get0()Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@19
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0xf

    #@c
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 448
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get2()Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@19
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public archiveStoredConversation(Ljava/lang/String;JZ)Z
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "conversationId"    # J
    .param p4, "archived"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 433
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@6
    move-result-object v0

    #@7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const/16 v2, 0xf

    #@d
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 435
    return v3

    #@14
    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@16
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public deleteStoredConversation(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "conversationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 412
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@6
    move-result-object v0

    #@7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const/16 v2, 0xf

    #@d
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 414
    return v3

    #@14
    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@16
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 402
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@6
    move-result-object v0

    #@7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const/16 v2, 0xf

    #@d
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 404
    return v3

    #@14
    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@16
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;
    .param p5, "configOverrides"    # Landroid/os/Bundle;
    .param p6, "downloadedIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    const-string/jumbo v0, "MmsServiceBroker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "downloadMessage() by "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 352
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@1c
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    #@23
    .line 353
    const-string/jumbo v2, "Download MMS message"

    #@26
    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 354
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2b
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v1

    #@33
    const/16 v2, 0x12

    #@35
    invoke-virtual {v0, v2, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_0

    #@3b
    .line 356
    return-void

    #@3c
    .line 359
    :cond_0
    const-string/jumbo v0, "android.service.carrier.CarrierMessagingService"

    #@3f
    .line 360
    const/4 v1, 0x3

    #@40
    .line 358
    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    #@43
    move-result-object p4

    #@44
    .line 362
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@46
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@49
    move-result-object v0

    #@4a
    move v1, p1

    #@4b
    move-object v2, p2

    #@4c
    move-object v3, p3

    #@4d
    move-object v4, p4

    #@4e
    move-object v5, p5

    #@4f
    move-object v6, p6

    #@50
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    #@53
    .line 350
    return-void
.end method

.method public getAutoPersisting()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getCarrierConfigValues(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 368
    const-string/jumbo v0, "MmsServiceBroker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "getCarrierConfigValues() by "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@11
    invoke-static {v2}, Lcom/android/server/MmsServiceBroker;->-wrap2(Lcom/android/server/MmsServiceBroker;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 369
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@22
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@25
    move-result-object v0

    #@26
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(I)Landroid/os/Bundle;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "timestampSecs"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0xf

    #@c
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 393
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get1()Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@19
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@1c
    move-result-object v0

    #@1d
    move-object v1, p1

    #@1e
    move-object v2, p2

    #@1f
    move-object v3, p3

    #@20
    move-wide v4, p4

    #@21
    move v6, p6

    #@22
    move v7, p7

    #@23
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 11
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "timestampMillis"    # J
    .param p7, "seen"    # Z
    .param p8, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0xf

    #@c
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 379
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get3()Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@19
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@1c
    move-result-object v1

    #@1d
    move-object v2, p1

    #@1e
    move-object v3, p2

    #@1f
    move v4, p3

    #@20
    move-object v5, p4

    #@21
    move-wide/from16 v6, p5

    #@23
    move/from16 v8, p7

    #@25
    move/from16 v9, p8

    #@27
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "locationUrl"    # Ljava/lang/String;
    .param p5, "configOverrides"    # Landroid/os/Bundle;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    const-string/jumbo v0, "MmsServiceBroker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "sendMessage() by "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 335
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@1c
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@23
    const-string/jumbo v2, "Send MMS message"

    #@26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 336
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2b
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v1

    #@33
    const/16 v2, 0x14

    #@35
    invoke-virtual {v0, v2, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_0

    #@3b
    .line 338
    return-void

    #@3c
    .line 341
    :cond_0
    const-string/jumbo v0, "android.service.carrier.CarrierMessagingService"

    #@3f
    .line 342
    const/4 v1, 0x1

    #@40
    .line 340
    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    #@43
    move-result-object p3

    #@44
    .line 343
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@46
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@49
    move-result-object v0

    #@4a
    move v1, p1

    #@4b
    move-object v2, p2

    #@4c
    move-object v3, p3

    #@4d
    move-object v4, p4

    #@4e
    move-object v5, p5

    #@4f
    move-object v6, p6

    #@50
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    #@53
    .line 333
    return-void
.end method

.method public sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0x14

    #@c
    invoke-virtual {v0, v2, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 470
    return-void

    #@13
    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@15
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@18
    move-result-object v0

    #@19
    move v1, p1

    #@1a
    move-object v2, p2

    #@1b
    move-object v3, p3

    #@1c
    move-object v4, p4

    #@1d
    move-object v5, p5

    #@1e
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    #@21
    .line 467
    return-void
.end method

.method public setAutoPersisting(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0xf

    #@c
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 480
    return-void

    #@13
    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@15
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V

    #@1c
    .line 477
    return-void
.end method

.method public updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "statusValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 422
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    #@6
    move-result-object v0

    #@7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const/16 v2, 0xf

    #@d
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 424
    return v3

    #@14
    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    #@16
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method
