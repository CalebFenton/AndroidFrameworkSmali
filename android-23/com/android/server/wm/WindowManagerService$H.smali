.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final TAP_OUTSIDE_STACK:I = 0x1f

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 7692
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 7742
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 7738
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 7747
    :pswitch_1
    const/4 v14, 0x0

    #@9
    .line 7749
    .local v14, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@f
    monitor-enter v3

    #@10
    .line 7751
    :try_start_0
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@16
    if-eqz v2, :cond_1

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_1

    #@26
    .line 7753
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2a
    iget-object v14, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@2c
    .line 7756
    .end local v14    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :cond_1
    move-object/from16 v0, p0

    #@2e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@30
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    #@32
    move-object/from16 v22, v0

    #@34
    .line 7757
    .local v22, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@38
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@3a
    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 7758
    .local v24, "newFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    #@3e
    move-object/from16 v1, v24

    #@40
    if-ne v0, v1, :cond_2

    #@42
    monitor-exit v3

    #@43
    .line 7760
    return-void

    #@44
    .line 7762
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@46
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@48
    move-object/from16 v0, v24

    #@4a
    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    #@4c
    .line 7765
    if-eqz v24, :cond_3

    #@4e
    if-eqz v22, :cond_3

    #@50
    .line 7766
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_6

    #@56
    .end local v22    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_1
    monitor-exit v3

    #@57
    .line 7775
    if-eqz v14, :cond_4

    #@59
    .line 7776
    invoke-virtual {v14}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    #@5c
    .line 7781
    :cond_4
    if-eqz v24, :cond_5

    #@5e
    .line 7783
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@62
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    #@64
    const/4 v3, 0x1

    #@65
    move-object/from16 v0, v24

    #@67
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    #@6a
    .line 7784
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6e
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap4(Lcom/android/server/wm/WindowManagerService;)V

    #@71
    .line 7787
    :cond_5
    if-eqz v22, :cond_0

    #@73
    .line 7789
    move-object/from16 v0, p0

    #@75
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@77
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    #@79
    const/4 v3, 0x0

    #@7a
    move-object/from16 v0, v22

    #@7c
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    #@7f
    goto :goto_0

    #@80
    .line 7768
    .restart local v22    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@84
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    #@86
    move-object/from16 v0, v22

    #@88
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    .line 7769
    const/16 v22, 0x0

    #@8d
    .local v22, "lastFocus":Lcom/android/server/wm/WindowState;
    goto :goto_1

    #@8e
    .line 7749
    .end local v22    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v24    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    #@8f
    monitor-exit v3

    #@90
    throw v2

    #@91
    .line 7796
    :pswitch_2
    move-object/from16 v0, p0

    #@93
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@95
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@97
    monitor-enter v3

    #@98
    .line 7797
    :try_start_3
    move-object/from16 v0, p0

    #@9a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@9c
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    #@9e
    move-object/from16 v23, v0

    #@a0
    .line 7798
    .local v23, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    #@a2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@a4
    new-instance v4, Ljava/util/ArrayList;

    #@a6
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a9
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ab
    monitor-exit v3

    #@ac
    .line 7801
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    #@af
    move-result v12

    #@b0
    .line 7802
    .local v12, "N":I
    const/16 v21, 0x0

    #@b2
    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    #@b4
    if-ge v0, v12, :cond_0

    #@b6
    .line 7805
    move-object/from16 v0, v23

    #@b8
    move/from16 v1, v21

    #@ba
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v2

    #@be
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@c4
    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    #@c6
    const/4 v4, 0x0

    #@c7
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    #@ca
    .line 7802
    add-int/lit8 v21, v21, 0x1

    #@cc
    goto :goto_2

    #@cd
    .line 7796
    .end local v12    # "N":I
    .end local v21    # "i":I
    .end local v23    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_1
    move-exception v2

    #@ce
    monitor-exit v3

    #@cf
    throw v2

    #@d0
    .line 7810
    :pswitch_3
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d4
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@d6
    monitor-enter v3

    #@d7
    .line 7811
    :try_start_4
    move-object/from16 v0, p0

    #@d9
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@db
    const/4 v4, 0x0

    #@dc
    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    #@de
    .line 7812
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@e2
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@e5
    :cond_7
    :goto_3
    monitor-exit v3

    #@e6
    goto/16 :goto_0

    #@e8
    .line 7810
    :catchall_2
    move-exception v2

    #@e9
    monitor-exit v3

    #@ea
    throw v2

    #@eb
    .line 7817
    :pswitch_4
    move-object/from16 v0, p1

    #@ed
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ef
    move-object/from16 v44, v0

    #@f1
    check-cast v44, Lcom/android/server/wm/AppWindowToken;

    #@f3
    .line 7818
    .local v44, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v44

    #@f5
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@f7
    move-object/from16 v29, v0

    #@f9
    .line 7820
    .local v29, "sd":Lcom/android/server/wm/StartingData;
    if-nez v29, :cond_8

    #@fb
    .line 7822
    return-void

    #@fc
    .line 7828
    :cond_8
    const/16 v40, 0x0

    #@fe
    .line 7830
    .local v40, "view":Landroid/view/View;
    :try_start_5
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@102
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@104
    .line 7831
    move-object/from16 v0, v44

    #@106
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@108
    move-object/from16 v0, v29

    #@10a
    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    #@10c
    move-object/from16 v0, v29

    #@10e
    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    #@110
    move-object/from16 v0, v29

    #@112
    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@114
    .line 7832
    move-object/from16 v0, v29

    #@116
    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@118
    move-object/from16 v0, v29

    #@11a
    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    #@11c
    move-object/from16 v0, v29

    #@11e
    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    #@120
    move-object/from16 v0, v29

    #@122
    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    #@124
    move-object/from16 v0, v29

    #@126
    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    #@128
    .line 7830
    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@12b
    move-result-object v40

    #@12c
    .line 7837
    .end local v40    # "view":Landroid/view/View;
    :goto_4
    if-eqz v40, :cond_0

    #@12e
    .line 7838
    const/4 v13, 0x0

    #@12f
    .line 7840
    .local v13, "abort":Z
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@133
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@135
    monitor-enter v3

    #@136
    .line 7841
    :try_start_6
    move-object/from16 v0, v44

    #@138
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@13a
    if-nez v2, :cond_9

    #@13c
    move-object/from16 v0, v44

    #@13e
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@140
    if-nez v2, :cond_b

    #@142
    .line 7844
    :cond_9
    move-object/from16 v0, v44

    #@144
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@146
    if-eqz v2, :cond_a

    #@148
    .line 7849
    const/4 v2, 0x0

    #@149
    move-object/from16 v0, v44

    #@14b
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@14d
    .line 7850
    const/4 v2, 0x0

    #@14e
    move-object/from16 v0, v44

    #@150
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@152
    .line 7851
    const/4 v13, 0x1

    #@153
    :cond_a
    :goto_5
    monitor-exit v3

    #@154
    .line 7863
    if-eqz v13, :cond_0

    #@156
    .line 7865
    :try_start_7
    move-object/from16 v0, p0

    #@158
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@15a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@15c
    move-object/from16 v0, v44

    #@15e
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@160
    move-object/from16 v0, v40

    #@162
    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    #@165
    goto/16 :goto_0

    #@167
    .line 7866
    :catch_0
    move-exception v19

    #@168
    .line 7867
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@16b
    const-string/jumbo v3, "Exception when removing starting window"

    #@16e
    move-object/from16 v0, v19

    #@170
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@173
    goto/16 :goto_0

    #@175
    .line 7833
    .end local v13    # "abort":Z
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v40    # "view":Landroid/view/View;
    :catch_1
    move-exception v19

    #@176
    .line 7834
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@179
    const-string/jumbo v3, "Exception when adding starting window"

    #@17c
    move-object/from16 v0, v19

    #@17e
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@181
    goto :goto_4

    #@182
    .line 7854
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v40    # "view":Landroid/view/View;
    .restart local v13    # "abort":Z
    :cond_b
    :try_start_8
    move-object/from16 v0, v40

    #@184
    move-object/from16 v1, v44

    #@186
    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@188
    goto :goto_5

    #@189
    .line 7840
    :catchall_3
    move-exception v2

    #@18a
    monitor-exit v3

    #@18b
    throw v2

    #@18c
    .line 7874
    .end local v13    # "abort":Z
    .end local v29    # "sd":Lcom/android/server/wm/StartingData;
    .end local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_5
    move-object/from16 v0, p1

    #@18e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@190
    move-object/from16 v44, v0

    #@192
    check-cast v44, Lcom/android/server/wm/AppWindowToken;

    #@194
    .line 7875
    .restart local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v37, 0x0

    #@196
    .line 7876
    .local v37, "token":Landroid/os/IBinder;
    const/16 v40, 0x0

    #@198
    .line 7877
    .restart local v40    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    #@19a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@19c
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@19e
    monitor-enter v3

    #@19f
    .line 7882
    :try_start_9
    move-object/from16 v0, v44

    #@1a1
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@1a3
    if-eqz v2, :cond_c

    #@1a5
    .line 7883
    move-object/from16 v0, v44

    #@1a7
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@1a9
    move-object/from16 v40, v0

    #@1ab
    .line 7884
    .local v40, "view":Landroid/view/View;
    move-object/from16 v0, v44

    #@1ad
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@1af
    move-object/from16 v37, v0

    #@1b1
    .line 7885
    .local v37, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    #@1b2
    move-object/from16 v0, v44

    #@1b4
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@1b6
    .line 7886
    const/4 v2, 0x0

    #@1b7
    move-object/from16 v0, v44

    #@1b9
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@1bb
    .line 7887
    const/4 v2, 0x0

    #@1bc
    move-object/from16 v0, v44

    #@1be
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@1c0
    .line 7888
    const/4 v2, 0x0

    #@1c1
    move-object/from16 v0, v44

    #@1c3
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@1c5
    .end local v37    # "token":Landroid/os/IBinder;
    .end local v40    # "view":Landroid/view/View;
    :cond_c
    monitor-exit v3

    #@1c6
    .line 7891
    if-eqz v40, :cond_0

    #@1c8
    .line 7893
    :try_start_a
    move-object/from16 v0, p0

    #@1ca
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1cc
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1ce
    move-object/from16 v0, v37

    #@1d0
    move-object/from16 v1, v40

    #@1d2
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    #@1d5
    goto/16 :goto_0

    #@1d7
    .line 7894
    :catch_2
    move-exception v19

    #@1d8
    .line 7895
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@1db
    const-string/jumbo v3, "Exception when removing starting window"

    #@1de
    move-object/from16 v0, v19

    #@1e0
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 7877
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    #@1e6
    monitor-exit v3

    #@1e7
    throw v2

    #@1e8
    .line 7901
    .end local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_6
    const/16 v37, 0x0

    #@1ea
    .line 7902
    .local v37, "token":Landroid/os/IBinder;
    const/16 v40, 0x0

    #@1ec
    .line 7904
    .end local v37    # "token":Landroid/os/IBinder;
    :goto_6
    move-object/from16 v0, p0

    #@1ee
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1f0
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@1f2
    monitor-enter v3

    #@1f3
    .line 7905
    :try_start_b
    move-object/from16 v0, p0

    #@1f5
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1f7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@1f9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1fc
    move-result v12

    #@1fd
    .line 7906
    .restart local v12    # "N":I
    if-lez v12, :cond_7

    #@1ff
    .line 7909
    move-object/from16 v0, p0

    #@201
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@203
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@205
    add-int/lit8 v4, v12, -0x1

    #@207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20a
    move-result-object v44

    #@20b
    check-cast v44, Lcom/android/server/wm/AppWindowToken;

    #@20d
    .line 7916
    .restart local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v44

    #@20f
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@211
    if-nez v2, :cond_d

    #@213
    monitor-exit v3

    #@214
    goto :goto_6

    #@215
    .line 7920
    :cond_d
    :try_start_c
    move-object/from16 v0, v44

    #@217
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@219
    move-object/from16 v40, v0

    #@21b
    .line 7921
    .restart local v40    # "view":Landroid/view/View;
    move-object/from16 v0, v44

    #@21d
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@21f
    move-object/from16 v37, v0

    #@221
    .line 7922
    .local v37, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    #@222
    move-object/from16 v0, v44

    #@224
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@226
    .line 7923
    const/4 v2, 0x0

    #@227
    move-object/from16 v0, v44

    #@229
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@22b
    .line 7924
    const/4 v2, 0x0

    #@22c
    move-object/from16 v0, v44

    #@22e
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@230
    .line 7925
    const/4 v2, 0x0

    #@231
    move-object/from16 v0, v44

    #@233
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    #@235
    monitor-exit v3

    #@236
    .line 7929
    :try_start_d
    move-object/from16 v0, p0

    #@238
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@23a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@23c
    move-object/from16 v0, v37

    #@23e
    move-object/from16 v1, v40

    #@240
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    #@243
    goto :goto_6

    #@244
    .line 7930
    :catch_3
    move-exception v19

    #@245
    .line 7931
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@248
    const-string/jumbo v3, "Exception when removing starting window"

    #@24b
    move-object/from16 v0, v19

    #@24d
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@250
    goto :goto_6

    #@251
    .line 7904
    .end local v12    # "N":I
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v37    # "token":Landroid/os/IBinder;
    .end local v40    # "view":Landroid/view/View;
    .end local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_5
    move-exception v2

    #@252
    monitor-exit v3

    #@253
    throw v2

    #@254
    .line 7937
    :pswitch_7
    move-object/from16 v0, p1

    #@256
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@258
    move-object/from16 v44, v0

    #@25a
    check-cast v44, Lcom/android/server/wm/AppWindowToken;

    #@25c
    .line 7942
    .restart local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_e
    move-object/from16 v0, v44

    #@25e
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@260
    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    #@263
    goto/16 :goto_0

    #@265
    .line 7943
    :catch_4
    move-exception v20

    #@266
    .local v20, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@268
    .line 7948
    .end local v20    # "ex":Landroid/os/RemoteException;
    .end local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_8
    move-object/from16 v0, p1

    #@26a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26c
    move-object/from16 v44, v0

    #@26e
    check-cast v44, Lcom/android/server/wm/AppWindowToken;

    #@270
    .line 7950
    .restart local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    #@272
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@274
    if-eqz v2, :cond_e

    #@276
    const/16 v26, 0x1

    #@278
    .line 7951
    .local v26, "nowVisible":Z
    :goto_7
    move-object/from16 v0, p1

    #@27a
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@27c
    if-eqz v2, :cond_f

    #@27e
    const/16 v25, 0x1

    #@280
    .line 7958
    .local v25, "nowGone":Z
    :goto_8
    if-eqz v26, :cond_10

    #@282
    .line 7959
    :try_start_f
    move-object/from16 v0, v44

    #@284
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@286
    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    #@289
    goto/16 :goto_0

    #@28b
    .line 7963
    :catch_5
    move-exception v20

    #@28c
    .restart local v20    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@28e
    .line 7950
    .end local v20    # "ex":Landroid/os/RemoteException;
    .end local v25    # "nowGone":Z
    .end local v26    # "nowVisible":Z
    :cond_e
    const/16 v26, 0x0

    #@290
    .restart local v26    # "nowVisible":Z
    goto :goto_7

    #@291
    .line 7951
    :cond_f
    const/16 v25, 0x0

    #@293
    .restart local v25    # "nowGone":Z
    goto :goto_8

    #@294
    .line 7961
    :cond_10
    move-object/from16 v0, v44

    #@296
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@298
    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    #@29b
    goto/16 :goto_0

    #@29d
    .line 7969
    .end local v25    # "nowGone":Z
    .end local v26    # "nowVisible":Z
    .end local v44    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_9
    move-object/from16 v0, p0

    #@29f
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2a1
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@2a3
    monitor-enter v3

    #@2a4
    .line 7970
    :try_start_10
    const-string/jumbo v2, "WindowManager"

    #@2a7
    const-string/jumbo v4, "Window freeze timeout expired."

    #@2aa
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ad
    .line 7971
    move-object/from16 v0, p0

    #@2af
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2b1
    const/4 v4, 0x2

    #@2b2
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-set1(Lcom/android/server/wm/WindowManagerService;I)I

    #@2b5
    .line 7972
    move-object/from16 v0, p0

    #@2b7
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2b9
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    #@2bc
    move-result-object v43

    #@2bd
    .line 7973
    .local v43, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/WindowList;->size()I

    #@2c0
    move-result v21

    #@2c1
    .line 7974
    .restart local v21    # "i":I
    :cond_11
    :goto_9
    if-lez v21, :cond_12

    #@2c3
    .line 7975
    add-int/lit8 v21, v21, -0x1

    #@2c5
    .line 7976
    move-object/from16 v0, v43

    #@2c7
    move/from16 v1, v21

    #@2c9
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@2cc
    move-result-object v41

    #@2cd
    check-cast v41, Lcom/android/server/wm/WindowState;

    #@2cf
    .line 7977
    .local v41, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v41

    #@2d1
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@2d3
    if-eqz v2, :cond_11

    #@2d5
    .line 7978
    const/4 v2, 0x0

    #@2d6
    move-object/from16 v0, v41

    #@2d8
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@2da
    .line 7979
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2dd
    move-result-wide v4

    #@2de
    .line 7980
    move-object/from16 v0, p0

    #@2e0
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2e2
    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    #@2e4
    .line 7979
    sub-long/2addr v4, v6

    #@2e5
    long-to-int v2, v4

    #@2e6
    move-object/from16 v0, v41

    #@2e8
    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@2ea
    .line 7981
    const-string/jumbo v2, "WindowManager"

    #@2ed
    new-instance v4, Ljava/lang/StringBuilder;

    #@2ef
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f2
    const-string/jumbo v5, "Force clearing orientation change: "

    #@2f5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v4

    #@2f9
    move-object/from16 v0, v41

    #@2fb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v4

    #@2ff
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@302
    move-result-object v4

    #@303
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    #@306
    goto :goto_9

    #@307
    .line 7969
    .end local v21    # "i":I
    .end local v41    # "w":Lcom/android/server/wm/WindowState;
    .end local v43    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_6
    move-exception v2

    #@308
    monitor-exit v3

    #@309
    throw v2

    #@30a
    .line 7984
    .restart local v21    # "i":I
    .restart local v43    # "windows":Lcom/android/server/wm/WindowList;
    :cond_12
    :try_start_11
    move-object/from16 v0, p0

    #@30c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@30e
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    #@311
    goto/16 :goto_3

    #@313
    .line 7990
    .end local v21    # "i":I
    .end local v43    # "windows":Lcom/android/server/wm/WindowList;
    :pswitch_a
    move-object/from16 v0, p0

    #@315
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@317
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@319
    monitor-enter v3

    #@31a
    .line 7991
    :try_start_12
    move-object/from16 v0, p0

    #@31c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@31e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@320
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@323
    move-result v2

    #@324
    if-nez v2, :cond_13

    #@326
    move-object/from16 v0, p0

    #@328
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@32a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@32c
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@32f
    move-result v2

    #@330
    if-eqz v2, :cond_13

    #@332
    .line 7992
    move-object/from16 v0, p0

    #@334
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@336
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@338
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@33b
    move-result v2

    #@33c
    if-nez v2, :cond_7

    #@33e
    .line 7997
    :cond_13
    move-object/from16 v0, p0

    #@340
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@342
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@344
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    #@347
    .line 7998
    move-object/from16 v0, p0

    #@349
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@34b
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    #@34e
    goto/16 :goto_3

    #@350
    .line 7990
    :catchall_7
    move-exception v2

    #@351
    monitor-exit v3

    #@352
    throw v2

    #@353
    .line 8005
    :pswitch_b
    move-object/from16 v0, p0

    #@355
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@357
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@359
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@35c
    move-result-object v2

    #@35d
    .line 8006
    const-string/jumbo v3, "window_animation_scale"

    #@360
    move-object/from16 v0, p0

    #@362
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@364
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    #@366
    .line 8005
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    #@369
    .line 8007
    move-object/from16 v0, p0

    #@36b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@36d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@36f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@372
    move-result-object v2

    #@373
    .line 8008
    const-string/jumbo v3, "transition_animation_scale"

    #@376
    .line 8009
    move-object/from16 v0, p0

    #@378
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@37a
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    #@37c
    .line 8007
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    #@37f
    .line 8010
    move-object/from16 v0, p0

    #@381
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@383
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@385
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@388
    move-result-object v2

    #@389
    .line 8011
    const-string/jumbo v3, "animator_duration_scale"

    #@38c
    move-object/from16 v0, p0

    #@38e
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@390
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    #@392
    .line 8010
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    #@395
    goto/16 :goto_0

    #@397
    .line 8016
    :pswitch_c
    move-object/from16 v0, p0

    #@399
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@39b
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@39d
    monitor-enter v3

    #@39e
    .line 8019
    :try_start_13
    move-object/from16 v0, p0

    #@3a0
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3a2
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@3a4
    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    #@3a6
    if-nez v2, :cond_14

    #@3a8
    move-object/from16 v0, p0

    #@3aa
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3ac
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    #@3ae
    if-eqz v2, :cond_15

    #@3b0
    .line 8022
    :cond_14
    const-wide/16 v4, 0x7d0

    #@3b2
    const/16 v2, 0xf

    #@3b4
    move-object/from16 v0, p0

    #@3b6
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    #@3b9
    monitor-exit v3

    #@3ba
    .line 8023
    return-void

    #@3bb
    .line 8027
    :cond_15
    :try_start_14
    move-object/from16 v0, p0

    #@3bd
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3bf
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    #@3c1
    if-eqz v2, :cond_16

    #@3c3
    monitor-exit v3

    #@3c4
    .line 8028
    return-void

    #@3c5
    :cond_16
    monitor-exit v3

    #@3c6
    .line 8031
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3c9
    move-result-object v2

    #@3ca
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    #@3cd
    goto/16 :goto_0

    #@3cf
    .line 8016
    :catchall_8
    move-exception v2

    #@3d0
    monitor-exit v3

    #@3d1
    throw v2

    #@3d2
    .line 8036
    :pswitch_d
    move-object/from16 v0, p0

    #@3d4
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3d6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    #@3d9
    goto/16 :goto_0

    #@3db
    .line 8041
    :pswitch_e
    move-object/from16 v0, p0

    #@3dd
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3df
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@3e1
    monitor-enter v3

    #@3e2
    .line 8042
    :try_start_15
    const-string/jumbo v2, "WindowManager"

    #@3e5
    const-string/jumbo v4, "App freeze timeout expired."

    #@3e8
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3eb
    .line 8043
    move-object/from16 v0, p0

    #@3ed
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3ef
    const/4 v4, 0x2

    #@3f0
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-set1(Lcom/android/server/wm/WindowManagerService;I)I

    #@3f3
    .line 8044
    move-object/from16 v0, p0

    #@3f5
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3f7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@3f9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@3fc
    move-result v27

    #@3fd
    .line 8045
    .local v27, "numStacks":I
    const/16 v33, 0x0

    #@3ff
    .local v33, "stackNdx":I
    :goto_a
    move/from16 v0, v33

    #@401
    move/from16 v1, v27

    #@403
    if-ge v0, v1, :cond_7

    #@405
    .line 8046
    move-object/from16 v0, p0

    #@407
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@409
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@40b
    move/from16 v0, v33

    #@40d
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@410
    move-result-object v31

    #@411
    check-cast v31, Lcom/android/server/wm/TaskStack;

    #@413
    .line 8047
    .local v31, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@416
    move-result-object v35

    #@417
    .line 8048
    .local v35, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    #@41a
    move-result v2

    #@41b
    add-int/lit8 v34, v2, -0x1

    #@41d
    .local v34, "taskNdx":I
    :goto_b
    if-ltz v34, :cond_19

    #@41f
    .line 8049
    move-object/from16 v0, v35

    #@421
    move/from16 v1, v34

    #@423
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@426
    move-result-object v2

    #@427
    check-cast v2, Lcom/android/server/wm/Task;

    #@429
    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@42b
    move-object/from16 v39, v0

    #@42d
    .line 8050
    .local v39, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wm/AppTokenList;->size()I

    #@430
    move-result v2

    #@431
    add-int/lit8 v38, v2, -0x1

    #@433
    .local v38, "tokenNdx":I
    :goto_c
    if-ltz v38, :cond_18

    #@435
    .line 8051
    move-object/from16 v0, v39

    #@437
    move/from16 v1, v38

    #@439
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@43c
    move-result-object v36

    #@43d
    check-cast v36, Lcom/android/server/wm/AppWindowToken;

    #@43f
    .line 8052
    .local v36, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v36

    #@441
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@443
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@445
    if-eqz v2, :cond_17

    #@447
    .line 8053
    const-string/jumbo v2, "WindowManager"

    #@44a
    new-instance v4, Ljava/lang/StringBuilder;

    #@44c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44f
    const-string/jumbo v5, "Force clearing freeze: "

    #@452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@455
    move-result-object v4

    #@456
    move-object/from16 v0, v36

    #@458
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v4

    #@45c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45f
    move-result-object v4

    #@460
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@463
    .line 8054
    move-object/from16 v0, p0

    #@465
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@467
    const/4 v4, 0x1

    #@468
    const/4 v5, 0x1

    #@469
    move-object/from16 v0, v36

    #@46b
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    #@46e
    .line 8050
    :cond_17
    add-int/lit8 v38, v38, -0x1

    #@470
    goto :goto_c

    #@471
    .line 8048
    .end local v36    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_18
    add-int/lit8 v34, v34, -0x1

    #@473
    goto :goto_b

    #@474
    .line 8045
    .end local v38    # "tokenNdx":I
    .end local v39    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_19
    add-int/lit8 v33, v33, 0x1

    #@476
    goto :goto_a

    #@477
    .line 8041
    .end local v27    # "numStacks":I
    .end local v31    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v33    # "stackNdx":I
    .end local v34    # "taskNdx":I
    .end local v35    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :catchall_9
    move-exception v2

    #@478
    monitor-exit v3

    #@479
    throw v2

    #@47a
    .line 8064
    :pswitch_f
    move-object/from16 v0, p0

    #@47c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@47e
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@480
    monitor-enter v3

    #@481
    .line 8065
    :try_start_16
    move-object/from16 v0, p0

    #@483
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@485
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    #@487
    if-eqz v2, :cond_7

    #@489
    .line 8066
    move-object/from16 v0, p0

    #@48b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@48d
    const/4 v4, 0x0

    #@48e
    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    #@490
    .line 8067
    move-object/from16 v0, p0

    #@492
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@494
    const-string/jumbo v4, "client-timeout"

    #@497
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    #@499
    .line 8068
    move-object/from16 v0, p0

    #@49b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@49d
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    #@4a0
    goto/16 :goto_3

    #@4a2
    .line 8064
    :catchall_a
    move-exception v2

    #@4a3
    monitor-exit v3

    #@4a4
    throw v2

    #@4a5
    .line 8075
    :pswitch_10
    const/16 v2, 0x12

    #@4a7
    move-object/from16 v0, p0

    #@4a9
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@4ac
    .line 8076
    move-object/from16 v0, p0

    #@4ae
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4b0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    #@4b3
    goto/16 :goto_0

    #@4b5
    .line 8081
    :pswitch_11
    move-object/from16 v0, p0

    #@4b7
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4b9
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get1(Lcom/android/server/wm/WindowManagerService;)Z

    #@4bc
    move-result v2

    #@4bd
    if-eqz v2, :cond_0

    #@4bf
    .line 8082
    move-object/from16 v0, p0

    #@4c1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4c3
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4c5
    monitor-enter v3

    #@4c6
    .line 8083
    :try_start_17
    move-object/from16 v0, p0

    #@4c8
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4ca
    const/4 v4, 0x0

    #@4cb
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-set0(Lcom/android/server/wm/WindowManagerService;Z)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    #@4ce
    monitor-exit v3

    #@4cf
    .line 8085
    move-object/from16 v0, p0

    #@4d1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4d3
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap5(Lcom/android/server/wm/WindowManagerService;)V

    #@4d6
    goto/16 :goto_0

    #@4d8
    .line 8082
    :catchall_b
    move-exception v2

    #@4d9
    monitor-exit v3

    #@4da
    throw v2

    #@4db
    .line 8091
    :pswitch_12
    move-object/from16 v0, p1

    #@4dd
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4df
    move-object/from16 v42, v0

    #@4e1
    check-cast v42, Landroid/os/IBinder;

    #@4e3
    .line 8095
    .local v42, "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4e5
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4e7
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4e9
    monitor-enter v3

    #@4ea
    .line 8097
    :try_start_18
    move-object/from16 v0, p0

    #@4ec
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4ee
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@4f0
    if-eqz v2, :cond_7

    #@4f2
    .line 8098
    move-object/from16 v0, p0

    #@4f4
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4f6
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@4f8
    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    #@4fb
    .line 8099
    move-object/from16 v0, p0

    #@4fd
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4ff
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@501
    const/4 v4, 0x1

    #@502
    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@505
    .line 8100
    move-object/from16 v0, p0

    #@507
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@509
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@50b
    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    #@50e
    .line 8101
    move-object/from16 v0, p0

    #@510
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@512
    const/4 v4, 0x0

    #@513
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    #@515
    goto/16 :goto_3

    #@517
    .line 8095
    :catchall_c
    move-exception v2

    #@518
    monitor-exit v3

    #@519
    throw v2

    #@51a
    .line 8108
    .end local v42    # "win":Landroid/os/IBinder;
    :pswitch_13
    move-object/from16 v0, p1

    #@51c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@51e
    move-object/from16 v42, v0

    #@520
    check-cast v42, Landroid/os/IBinder;

    #@522
    .line 8112
    .restart local v42    # "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@524
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@526
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@528
    monitor-enter v3

    #@529
    .line 8114
    :try_start_19
    move-object/from16 v0, p0

    #@52b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@52d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@52f
    if-eqz v2, :cond_7

    #@531
    .line 8115
    move-object/from16 v0, p0

    #@533
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@535
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@537
    const/4 v4, 0x0

    #@538
    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@53a
    .line 8116
    move-object/from16 v0, p0

    #@53c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@53e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@540
    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    #@543
    goto/16 :goto_3

    #@545
    .line 8112
    :catchall_d
    move-exception v2

    #@546
    monitor-exit v3

    #@547
    throw v2

    #@548
    .line 8123
    .end local v42    # "win":Landroid/os/IBinder;
    :pswitch_14
    move-object/from16 v0, p0

    #@54a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@54c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    #@54f
    goto/16 :goto_0

    #@551
    .line 8128
    :pswitch_15
    move-object/from16 v0, p0

    #@553
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@555
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    #@558
    goto/16 :goto_0

    #@55a
    .line 8133
    :pswitch_16
    const/16 v16, 0x0

    #@55c
    .line 8134
    .local v16, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@55e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@560
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@562
    monitor-enter v3

    #@563
    .line 8135
    :try_start_1a
    const-string/jumbo v2, "WindowManager"

    #@566
    new-instance v4, Ljava/lang/StringBuilder;

    #@568
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@56b
    const-string/jumbo v5, "Timeout waiting for drawn: undrawn="

    #@56e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@571
    move-result-object v4

    #@572
    move-object/from16 v0, p0

    #@574
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@576
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@578
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57b
    move-result-object v4

    #@57c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57f
    move-result-object v4

    #@580
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@583
    .line 8136
    move-object/from16 v0, p0

    #@585
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@587
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@589
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@58c
    .line 8137
    move-object/from16 v0, p0

    #@58e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@590
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@592
    move-object/from16 v16, v0

    #@594
    .line 8138
    .local v16, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@596
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@598
    const/4 v4, 0x0

    #@599
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    #@59b
    monitor-exit v3

    #@59c
    .line 8140
    if-eqz v16, :cond_0

    #@59e
    .line 8141
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    #@5a1
    goto/16 :goto_0

    #@5a3
    .line 8134
    .end local v16    # "callback":Ljava/lang/Runnable;
    :catchall_e
    move-exception v2

    #@5a4
    monitor-exit v3

    #@5a5
    throw v2

    #@5a6
    .line 8147
    :pswitch_17
    move-object/from16 v0, p0

    #@5a8
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5aa
    move-object/from16 v0, p1

    #@5ac
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@5ae
    move-object/from16 v0, p1

    #@5b0
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@5b2
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap7(Lcom/android/server/wm/WindowManagerService;II)V

    #@5b5
    goto/16 :goto_0

    #@5b7
    .line 8152
    :pswitch_18
    move-object/from16 v0, p0

    #@5b9
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5bb
    move-object/from16 v0, p1

    #@5bd
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@5bf
    const/4 v4, 0x1

    #@5c0
    if-ne v2, v4, :cond_1a

    #@5c2
    const/4 v2, 0x1

    #@5c3
    :goto_d
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    #@5c6
    goto/16 :goto_0

    #@5c8
    :cond_1a
    const/4 v2, 0x0

    #@5c9
    goto :goto_d

    #@5ca
    .line 8157
    :pswitch_19
    move-object/from16 v0, p0

    #@5cc
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5ce
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    #@5d1
    goto/16 :goto_0

    #@5d3
    .line 8163
    :pswitch_1a
    :try_start_1b
    move-object/from16 v0, p1

    #@5d5
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5d7
    check-cast v2, Landroid/os/IRemoteCallback;

    #@5d9
    const/4 v3, 0x0

    #@5da
    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_6

    #@5dd
    goto/16 :goto_0

    #@5df
    .line 8164
    :catch_6
    move-exception v18

    #@5e0
    .local v18, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@5e2
    .line 8170
    .end local v18    # "e":Landroid/os/RemoteException;
    :pswitch_1b
    move-object/from16 v0, p0

    #@5e4
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5e6
    move-object/from16 v0, p1

    #@5e8
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@5ea
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    #@5ed
    goto/16 :goto_0

    #@5ef
    .line 8174
    :pswitch_1c
    move-object/from16 v0, p0

    #@5f1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5f3
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@5f5
    monitor-enter v3

    #@5f6
    .line 8175
    :try_start_1c
    move-object/from16 v0, p0

    #@5f8
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5fa
    move-object/from16 v0, p1

    #@5fc
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@5fe
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap3(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    #@601
    goto/16 :goto_3

    #@603
    .line 8174
    :catchall_f
    move-exception v2

    #@604
    monitor-exit v3

    #@605
    throw v2

    #@606
    .line 8180
    :pswitch_1d
    move-object/from16 v0, p0

    #@608
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@60a
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@60c
    monitor-enter v3

    #@60d
    .line 8181
    :try_start_1d
    move-object/from16 v0, p0

    #@60f
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@611
    move-object/from16 v0, p1

    #@613
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@615
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap2(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    #@618
    goto/16 :goto_3

    #@61a
    .line 8180
    :catchall_10
    move-exception v2

    #@61b
    monitor-exit v3

    #@61c
    throw v2

    #@61d
    .line 8187
    :pswitch_1e
    move-object/from16 v0, p0

    #@61f
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@621
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@623
    monitor-enter v3

    #@624
    .line 8188
    :try_start_1e
    move-object/from16 v0, p1

    #@626
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@628
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    #@62a
    move-object/from16 v0, p1

    #@62c
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@62e
    move-object/from16 v0, p1

    #@630
    iget v5, v0, Landroid/os/Message;->arg2:I

    #@632
    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->stackIdFromPoint(II)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    #@635
    move-result v32

    #@636
    .local v32, "stackId":I
    monitor-exit v3

    #@637
    .line 8190
    if-ltz v32, :cond_0

    #@639
    .line 8192
    :try_start_1f
    move-object/from16 v0, p0

    #@63b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@63d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@63f
    move/from16 v0, v32

    #@641
    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_7

    #@644
    goto/16 :goto_0

    #@646
    .line 8193
    :catch_7
    move-exception v18

    #@647
    .restart local v18    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@649
    .line 8187
    .end local v18    # "e":Landroid/os/RemoteException;
    .end local v32    # "stackId":I
    :catchall_11
    move-exception v2

    #@64a
    monitor-exit v3

    #@64b
    throw v2

    #@64c
    .line 8200
    :pswitch_1f
    :try_start_20
    move-object/from16 v0, p0

    #@64e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@650
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@652
    move-object/from16 v0, p1

    #@654
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@656
    check-cast v2, Landroid/os/IBinder;

    #@658
    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_8

    #@65b
    goto/16 :goto_0

    #@65d
    .line 8201
    :catch_8
    move-exception v18

    #@65e
    .restart local v18    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@660
    .line 8206
    .end local v18    # "e":Landroid/os/RemoteException;
    :pswitch_20
    move-object/from16 v0, p0

    #@662
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@664
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@666
    monitor-enter v3

    #@667
    .line 8207
    :try_start_21
    move-object/from16 v0, p0

    #@669
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@66b
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@66d
    move-object/from16 v16, v0

    #@66f
    .line 8208
    .restart local v16    # "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@671
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@673
    const/4 v4, 0x0

    #@674
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    #@676
    monitor-exit v3

    #@677
    .line 8210
    if-eqz v16, :cond_1b

    #@679
    .line 8211
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    #@67c
    .line 8215
    .end local v16    # "callback":Ljava/lang/Runnable;
    :cond_1b
    :pswitch_21
    move-object/from16 v0, p0

    #@67e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@680
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    #@683
    move-result v28

    #@684
    .line 8216
    .local v28, "scale":F
    invoke-static/range {v28 .. v28}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    #@687
    .line 8217
    move-object/from16 v0, p1

    #@689
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@68b
    move-object/from16 v30, v0

    #@68d
    check-cast v30, Lcom/android/server/wm/Session;

    #@68f
    .line 8218
    .local v30, "session":Lcom/android/server/wm/Session;
    if-eqz v30, :cond_1c

    #@691
    .line 8220
    :try_start_22
    move-object/from16 v0, v30

    #@693
    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    #@695
    move/from16 v0, v28

    #@697
    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_9

    #@69a
    goto/16 :goto_0

    #@69c
    .line 8221
    :catch_9
    move-exception v18

    #@69d
    .restart local v18    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@69f
    .line 8206
    .end local v18    # "e":Landroid/os/RemoteException;
    .end local v28    # "scale":F
    .end local v30    # "session":Lcom/android/server/wm/Session;
    :catchall_12
    move-exception v2

    #@6a0
    monitor-exit v3

    #@6a1
    throw v2

    #@6a2
    .line 8225
    .restart local v28    # "scale":F
    .restart local v30    # "session":Lcom/android/server/wm/Session;
    :cond_1c
    new-instance v17, Ljava/util/ArrayList;

    #@6a4
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    #@6a7
    .line 8226
    .local v17, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    move-object/from16 v0, p0

    #@6a9
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6ab
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@6ad
    monitor-enter v3

    #@6ae
    .line 8227
    const/16 v21, 0x0

    #@6b0
    .restart local v21    # "i":I
    :goto_e
    :try_start_23
    move-object/from16 v0, p0

    #@6b2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6b4
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    #@6b6
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@6b9
    move-result v2

    #@6ba
    move/from16 v0, v21

    #@6bc
    if-ge v0, v2, :cond_1d

    #@6be
    .line 8228
    move-object/from16 v0, p0

    #@6c0
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6c2
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    #@6c4
    move/from16 v0, v21

    #@6c6
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@6c9
    move-result-object v2

    #@6ca
    check-cast v2, Lcom/android/server/wm/Session;

    #@6cc
    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    #@6ce
    move-object/from16 v0, v17

    #@6d0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    #@6d3
    .line 8227
    add-int/lit8 v21, v21, 0x1

    #@6d5
    goto :goto_e

    #@6d6
    :cond_1d
    monitor-exit v3

    #@6d7
    .line 8232
    const/16 v21, 0x0

    #@6d9
    :goto_f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@6dc
    move-result v2

    #@6dd
    move/from16 v0, v21

    #@6df
    if-ge v0, v2, :cond_0

    #@6e1
    .line 8234
    :try_start_24
    move-object/from16 v0, v17

    #@6e3
    move/from16 v1, v21

    #@6e5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6e8
    move-result-object v2

    #@6e9
    check-cast v2, Landroid/view/IWindowSessionCallback;

    #@6eb
    move/from16 v0, v28

    #@6ed
    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_a

    #@6f0
    .line 8232
    :goto_10
    add-int/lit8 v21, v21, 0x1

    #@6f2
    goto :goto_f

    #@6f3
    .line 8226
    :catchall_13
    move-exception v2

    #@6f4
    monitor-exit v3

    #@6f5
    throw v2

    #@6f6
    .line 8243
    .end local v17    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v21    # "i":I
    .end local v28    # "scale":F
    .end local v30    # "session":Lcom/android/server/wm/Session;
    :pswitch_22
    move-object/from16 v0, p0

    #@6f8
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6fa
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@6fc
    monitor-enter v3

    #@6fd
    .line 8245
    :try_start_25
    move-object/from16 v0, p0

    #@6ff
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@701
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap0(Lcom/android/server/wm/WindowManagerService;)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    #@704
    move-result v15

    #@705
    .local v15, "bootAnimationComplete":Z
    monitor-exit v3

    #@706
    .line 8247
    if-eqz v15, :cond_0

    #@708
    .line 8248
    move-object/from16 v0, p0

    #@70a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@70c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    #@70f
    goto/16 :goto_0

    #@711
    .line 8243
    .end local v15    # "bootAnimationComplete":Z
    :catchall_14
    move-exception v2

    #@712
    monitor-exit v3

    #@713
    throw v2

    #@714
    .line 8253
    :pswitch_23
    move-object/from16 v0, p0

    #@716
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@718
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@71a
    monitor-enter v3

    #@71b
    .line 8254
    :try_start_26
    move-object/from16 v0, p0

    #@71d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@71f
    const/4 v4, 0x0

    #@720
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    #@722
    goto/16 :goto_3

    #@724
    .line 8253
    :catchall_15
    move-exception v2

    #@725
    monitor-exit v3

    #@726
    throw v2

    #@727
    .line 8259
    :pswitch_24
    move-object/from16 v0, p0

    #@729
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@72b
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@72d
    monitor-enter v3

    #@72e
    .line 8260
    :try_start_27
    move-object/from16 v0, p0

    #@730
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@732
    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    #@734
    const/4 v4, 0x1

    #@735
    if-ne v2, v4, :cond_7

    #@737
    .line 8261
    move-object/from16 v0, p0

    #@739
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@73b
    const/4 v4, 0x2

    #@73c
    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    #@73e
    .line 8264
    move-object/from16 v0, p0

    #@740
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@742
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    #@745
    goto/16 :goto_3

    #@747
    .line 8259
    :catchall_16
    move-exception v2

    #@748
    monitor-exit v3

    #@749
    throw v2

    #@74a
    .line 8235
    .restart local v17    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .restart local v21    # "i":I
    .restart local v28    # "scale":F
    .restart local v30    # "session":Lcom/android/server/wm/Session;
    :catch_a
    move-exception v18

    #@74b
    .restart local v18    # "e":Landroid/os/RemoteException;
    goto :goto_10

    #@74c
    .line 7742
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_f
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_18
        :pswitch_19
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method
