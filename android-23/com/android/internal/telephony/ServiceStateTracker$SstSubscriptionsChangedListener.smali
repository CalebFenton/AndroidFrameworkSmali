.class public Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SstSubscriptionsChangedListener"
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    #@0
    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    #@5
    .line 251
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    const/4 v1, -0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    .line 250
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 14

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    const-string/jumbo v1, "SubscriptionListener.onSubscriptionInfoChanged"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@8
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@f
    move-result v13

    #@10
    .line 261
    .local v13, "subId":I
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    #@15
    move-result v0

    #@16
    if-eq v0, v13, :cond_1

    #@18
    .line 262
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@20
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@25
    move-result-object v6

    #@26
    .line 265
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@28
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    #@2d
    .line 267
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v0

    #@31
    .line 268
    const v1, 0x1120059

    #@34
    .line 267
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    const/4 v11, 0x0

    #@3b
    .line 269
    .local v11, "restoreSelection":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@3d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@3f
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/PhoneBase;->sendSubscriptionSettings(Z)V

    #@42
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@44
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@46
    const-string/jumbo v1, "gsm.network.type"

    #@49
    .line 272
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@4b
    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4d
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@50
    move-result v2

    #@51
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@58
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@5a
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@60
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@62
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@64
    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@66
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@69
    move-result v1

    #@6a
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@6c
    iget-boolean v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@6e
    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@70
    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@72
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@74
    iget-boolean v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@76
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@78
    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@7a
    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@7d
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@7f
    const/4 v1, 0x0

    #@80
    iput-boolean v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@82
    .line 283
    :cond_0
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@85
    move-result-object v12

    #@86
    .line 286
    .local v12, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "network_selection_key"

    #@89
    const-string/jumbo v1, ""

    #@8c
    .line 285
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    .line 288
    .local v8, "oldNetworkSelection":Ljava/lang/String;
    const-string/jumbo v0, "network_selection_name_key"

    #@93
    const-string/jumbo v1, ""

    #@96
    .line 287
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    .line 290
    .local v9, "oldNetworkSelectionName":Ljava/lang/String;
    const-string/jumbo v0, "network_selection_short_key"

    #@9d
    const-string/jumbo v1, ""

    #@a0
    .line 289
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a3
    move-result-object v10

    #@a4
    .line 291
    .local v10, "oldNetworkSelectionShort":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_3

    #@aa
    .line 292
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ad
    move-result v0

    #@ae
    if-eqz v0, :cond_3

    #@b0
    .line 293
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_3

    #@b6
    .line 257
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "oldNetworkSelection":Ljava/lang/String;
    .end local v9    # "oldNetworkSelectionName":Ljava/lang/String;
    .end local v10    # "oldNetworkSelectionShort":Ljava/lang/String;
    .end local v11    # "restoreSelection":Z
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    #@b7
    .line 267
    .restart local v6    # "context":Landroid/content/Context;
    :cond_2
    const/4 v11, 0x1

    #@b8
    .restart local v11    # "restoreSelection":Z
    goto :goto_0

    #@b9
    .line 294
    .restart local v8    # "oldNetworkSelection":Ljava/lang/String;
    .restart local v9    # "oldNetworkSelectionName":Ljava/lang/String;
    .restart local v10    # "oldNetworkSelectionShort":Ljava/lang/String;
    .restart local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@bc
    move-result-object v7

    #@bd
    .line 295
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v1, "network_selection_key"

    #@c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v0

    #@c9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v0

    #@d1
    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@d4
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v1, "network_selection_name_key"

    #@dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v0

    #@e0
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v0

    #@e4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v0

    #@e8
    invoke-interface {v7, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@eb
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v1, "network_selection_short_key"

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v0

    #@f7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v0

    #@fb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v0

    #@ff
    invoke-interface {v7, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@102
    .line 301
    const-string/jumbo v0, "network_selection_key"

    #@105
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@108
    .line 302
    const-string/jumbo v0, "network_selection_name_key"

    #@10b
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@10e
    .line 303
    const-string/jumbo v0, "network_selection_short_key"

    #@111
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@114
    .line 304
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@117
    goto :goto_1
.end method
