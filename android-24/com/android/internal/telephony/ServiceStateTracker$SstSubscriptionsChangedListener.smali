.class Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SstSubscriptionsChangedListener"
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    #@0
    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    #@5
    .line 277
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    const/4 v1, -0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@b
    .line 276
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    #@3
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 14

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    const-string/jumbo v1, "SubscriptionListener.onSubscriptionInfoChanged"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@8
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@a
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@11
    move-result v13

    #@12
    .line 288
    .local v13, "subId":I
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    #@17
    move-result v0

    #@18
    if-eq v0, v13, :cond_2

    #@1a
    .line 289
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@22
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@29
    move-result-object v6

    #@2a
    .line 292
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2c
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    #@33
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@35
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    #@3c
    .line 295
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f
    move-result-object v0

    #@40
    .line 296
    const v1, 0x1120060

    #@43
    .line 295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_3

    #@49
    const/4 v11, 0x0

    #@4a
    .line 297
    .local v11, "restoreSelection":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@4c
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendSubscriptionSettings(Z)V

    #@53
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@55
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@58
    move-result-object v0

    #@59
    const-string/jumbo v1, "gsm.network.type"

    #@5c
    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@5e
    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@60
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@63
    move-result v2

    #@64
    .line 300
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6b
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@6d
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get5(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_0

    #@73
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@75
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get6(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    #@78
    move-result-object v0

    #@79
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@7b
    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@82
    move-result v1

    #@83
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@85
    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get1(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    #@88
    move-result v2

    #@89
    .line 305
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@8b
    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get0(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@91
    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get2(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    #@94
    move-result v4

    #@95
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@97
    invoke-static {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->-get3(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    .line 304
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@9e
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@a0
    const/4 v1, 0x0

    #@a1
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->-set1(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    #@a4
    .line 312
    :cond_0
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@a7
    move-result-object v12

    #@a8
    .line 315
    .local v12, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "network_selection_key"

    #@ab
    const-string/jumbo v1, ""

    #@ae
    .line 314
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b1
    move-result-object v8

    #@b2
    .line 317
    .local v8, "oldNetworkSelection":Ljava/lang/String;
    const-string/jumbo v0, "network_selection_name_key"

    #@b5
    const-string/jumbo v1, ""

    #@b8
    .line 316
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v9

    #@bc
    .line 319
    .local v9, "oldNetworkSelectionName":Ljava/lang/String;
    const-string/jumbo v0, "network_selection_short_key"

    #@bf
    const-string/jumbo v1, ""

    #@c2
    .line 318
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c5
    move-result-object v10

    #@c6
    .line 320
    .local v10, "oldNetworkSelectionShort":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_4

    #@cc
    .line 321
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@cf
    move-result v0

    #@d0
    if-eqz v0, :cond_4

    #@d2
    .line 322
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d5
    move-result v0

    #@d6
    if-eqz v0, :cond_4

    #@d8
    .line 339
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@da
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@dd
    .line 342
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "oldNetworkSelection":Ljava/lang/String;
    .end local v9    # "oldNetworkSelectionName":Ljava/lang/String;
    .end local v10    # "oldNetworkSelectionShort":Ljava/lang/String;
    .end local v11    # "restoreSelection":Z
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@df
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateVoiceMail()V

    #@e6
    .line 284
    :cond_2
    return-void

    #@e7
    .line 295
    .restart local v6    # "context":Landroid/content/Context;
    :cond_3
    const/4 v11, 0x1

    #@e8
    .restart local v11    # "restoreSelection":Z
    goto/16 :goto_0

    #@ea
    .line 323
    .restart local v8    # "oldNetworkSelection":Ljava/lang/String;
    .restart local v9    # "oldNetworkSelectionName":Ljava/lang/String;
    .restart local v10    # "oldNetworkSelectionShort":Ljava/lang/String;
    .restart local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@ed
    move-result-object v7

    #@ee
    .line 324
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v1, "network_selection_key"

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v0

    #@102
    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@105
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string/jumbo v1, "network_selection_name_key"

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v0

    #@111
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v0

    #@119
    invoke-interface {v7, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@11c
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v1, "network_selection_short_key"

    #@124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v0

    #@128
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v0

    #@12c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v0

    #@130
    invoke-interface {v7, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@133
    .line 330
    const-string/jumbo v0, "network_selection_key"

    #@136
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@139
    .line 331
    const-string/jumbo v0, "network_selection_name_key"

    #@13c
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@13f
    .line 332
    const-string/jumbo v0, "network_selection_short_key"

    #@142
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@145
    .line 333
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@148
    goto :goto_1
.end method
