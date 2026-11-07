.class Lcom/android/internal/app/ChooserActivity$ChooserHandler;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserHandler"
.end annotation


# static fields
.field private static final blacklist LIST_VIEW_UPDATE_MESSAGE:I = 0x6

.field private static final blacklist SHORTCUT_MANAGER_ALL_SHARE_TARGET_RESULTS:I = 0x7


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mremoveAllMessages(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeAllMessages()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method

.method private blacklist removeAllMessages()V
    .registers 2

    .line 500
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 501
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 502
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 506
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_86

    .line 510
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "ChooserActivity"

    packed-switch v0, :pswitch_data_88

    .line 548
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_85

    .line 522
    :pswitch_1e
    const-string v0, "SHORTCUT_MANAGER_ALL_SHARE_TARGET_RESULTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 524
    .local v0, "resultInfos":[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_4f

    aget-object v3, v0, v2

    .line 525
    .local v3, "resultInfo":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    iget-object v4, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v4, :cond_4c

    .line 526
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v5, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    .line 527
    invoke-virtual {v4, v5}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v4

    .line 529
    .local v4, "adapterForUserHandle":Lcom/android/internal/app/ChooserListAdapter;
    if-eqz v4, :cond_4c

    .line 530
    iget-object v5, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v6, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDirectShareShortcutInfoCache(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 524
    .end local v3    # "resultInfo":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    .end local v4    # "adapterForUserHandle":Lcom/android/internal/app/ChooserListAdapter;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 538
    :cond_4f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/16 v2, 0x6b6

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/ChooserActivity;I)V

    .line 540
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 541
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetDirectLoadComplete()V

    .line 543
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->completeServiceTargetLoading()V

    .line 545
    goto :goto_85

    .line 513
    .end local v0    # "resultInfos":[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :pswitch_70
    const-string v0, "LIST_VIEW_UPDATE_MESSAGE; "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    .line 517
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->refreshListView()V

    .line 519
    nop

    .line 550
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    :goto_85
    return-void

    .line 507
    :cond_86
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x6
        :pswitch_70
        :pswitch_1e
    .end packed-switch
.end method
