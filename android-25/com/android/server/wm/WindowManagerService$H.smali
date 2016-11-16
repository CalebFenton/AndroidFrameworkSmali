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

.field public static final FINISH_TASK_POSITIONING:I = 0x28

.field public static final FORCE_GC:I = 0xf

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_APP_TRANSITION_CANCELLED:I = 0x30

.field public static final NOTIFY_APP_TRANSITION_FINISHED:I = 0x31

.field public static final NOTIFY_APP_TRANSITION_STARTING:I = 0x2f

.field public static final NOTIFY_DOCKED_STACK_MINIMIZED_CHANGED:I = 0x35

.field public static final NOTIFY_STARTING_WINDOW_DRAWN:I = 0x32

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESIZE_STACK:I = 0x2a

.field public static final RESIZE_TASK:I = 0x2b

.field public static final SEAMLESS_ROTATION_TIMEOUT:I = 0x36

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final TAP_OUTSIDE_TASK:I = 0x1f

.field public static final TWO_FINGER_SCROLL_START:I = 0x2c

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_DOCKED_STACK_DIVIDER:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 8218
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 50
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 8293
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 8289
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 8298
    :pswitch_1
    const/4 v15, 0x0

    #@9
    .line 8300
    .local v15, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@f
    monitor-enter v3

    #@10
    .line 8302
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
    .line 8304
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2a
    iget-object v15, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@2c
    .line 8307
    .end local v15    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :cond_1
    move-object/from16 v0, p0

    #@2e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@30
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    #@32
    move-object/from16 v24, v0

    #@34
    .line 8308
    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@38
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@3a
    move-object/from16 v28, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 8309
    .local v28, "newFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    #@3e
    move-object/from16 v1, v28

    #@40
    if-ne v0, v1, :cond_2

    #@42
    monitor-exit v3

    #@43
    .line 8311
    return-void

    #@44
    .line 8313
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@46
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@48
    move-object/from16 v0, v28

    #@4a
    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    #@4c
    .line 8316
    if-eqz v28, :cond_3

    #@4e
    if-eqz v24, :cond_3

    #@50
    .line 8317
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_6

    #@56
    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_1
    monitor-exit v3

    #@57
    .line 8326
    if-eqz v15, :cond_4

    #@59
    .line 8327
    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    #@5c
    .line 8332
    :cond_4
    if-eqz v28, :cond_5

    #@5e
    .line 8334
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@62
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    #@64
    const/4 v3, 0x1

    #@65
    move-object/from16 v0, v28

    #@67
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    #@6a
    .line 8335
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6e
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;)V

    #@71
    .line 8338
    :cond_5
    if-eqz v24, :cond_0

    #@73
    .line 8340
    move-object/from16 v0, p0

    #@75
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@77
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    #@79
    const/4 v3, 0x0

    #@7a
    move-object/from16 v0, v24

    #@7c
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    #@7f
    goto :goto_0

    #@80
    .line 8319
    .restart local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@84
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    #@86
    move-object/from16 v0, v24

    #@88
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    .line 8320
    const/16 v24, 0x0

    #@8d
    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    goto :goto_1

    #@8e
    .line 8300
    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v28    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    #@8f
    monitor-exit v3

    #@90
    throw v2

    #@91
    .line 8347
    :pswitch_2
    move-object/from16 v0, p0

    #@93
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@95
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@97
    monitor-enter v3

    #@98
    .line 8348
    :try_start_3
    move-object/from16 v0, p0

    #@9a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@9c
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    #@9e
    move-object/from16 v26, v0

    #@a0
    .line 8349
    .local v26, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
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
    .line 8352
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@af
    move-result v13

    #@b0
    .line 8353
    .local v13, "N":I
    const/16 v23, 0x0

    #@b2
    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    #@b4
    if-ge v0, v13, :cond_0

    #@b6
    .line 8356
    move-object/from16 v0, v26

    #@b8
    move/from16 v1, v23

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
    .line 8353
    add-int/lit8 v23, v23, 0x1

    #@cc
    goto :goto_2

    #@cd
    .line 8347
    .end local v13    # "N":I
    .end local v23    # "i":I
    .end local v26    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_1
    move-exception v2

    #@ce
    monitor-exit v3

    #@cf
    throw v2

    #@d0
    .line 8361
    :pswitch_3
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d4
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@d6
    monitor-enter v3

    #@d7
    .line 8362
    :try_start_4
    move-object/from16 v0, p0

    #@d9
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@db
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@dd
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@e0
    :cond_7
    :goto_3
    monitor-exit v3

    #@e1
    goto/16 :goto_0

    #@e3
    .line 8361
    :catchall_2
    move-exception v2

    #@e4
    monitor-exit v3

    #@e5
    throw v2

    #@e6
    .line 8367
    :pswitch_4
    move-object/from16 v0, p1

    #@e8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ea
    move-object/from16 v49, v0

    #@ec
    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    #@ee
    .line 8368
    .local v49, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v49

    #@f0
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@f2
    move-object/from16 v33, v0

    #@f4
    .line 8370
    .local v33, "sd":Lcom/android/server/wm/StartingData;
    if-nez v33, :cond_8

    #@f6
    .line 8372
    return-void

    #@f7
    .line 8378
    :cond_8
    const/16 v44, 0x0

    #@f9
    .line 8380
    .local v44, "view":Landroid/view/View;
    if-eqz v49, :cond_b

    #@fb
    :try_start_5
    move-object/from16 v0, v49

    #@fd
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@ff
    if-eqz v2, :cond_b

    #@101
    .line 8381
    move-object/from16 v0, v49

    #@103
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@105
    iget-object v12, v2, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@107
    .line 8382
    :goto_4
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@10b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@10d
    move-object/from16 v0, v49

    #@10f
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@111
    move-object/from16 v0, v33

    #@113
    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    #@115
    move-object/from16 v0, v33

    #@117
    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    #@119
    .line 8383
    move-object/from16 v0, v33

    #@11b
    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@11d
    move-object/from16 v0, v33

    #@11f
    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@121
    move-object/from16 v0, v33

    #@123
    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    #@125
    move-object/from16 v0, v33

    #@127
    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    #@129
    move-object/from16 v0, v33

    #@12b
    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    #@12d
    .line 8384
    move-object/from16 v0, v33

    #@12f
    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    #@131
    .line 8382
    invoke-interface/range {v2 .. v12}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@134
    move-result-object v44

    #@135
    .line 8389
    .end local v44    # "view":Landroid/view/View;
    :goto_5
    if-eqz v44, :cond_0

    #@137
    .line 8390
    const/4 v14, 0x0

    #@138
    .line 8392
    .local v14, "abort":Z
    move-object/from16 v0, p0

    #@13a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@13c
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@13e
    monitor-enter v3

    #@13f
    .line 8393
    :try_start_6
    move-object/from16 v0, v49

    #@141
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@143
    if-nez v2, :cond_9

    #@145
    move-object/from16 v0, v49

    #@147
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@149
    if-nez v2, :cond_c

    #@14b
    .line 8396
    :cond_9
    move-object/from16 v0, v49

    #@14d
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@14f
    if-eqz v2, :cond_a

    #@151
    .line 8401
    const/4 v2, 0x0

    #@152
    move-object/from16 v0, v49

    #@154
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@156
    .line 8402
    const/4 v2, 0x0

    #@157
    move-object/from16 v0, v49

    #@159
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@15b
    .line 8403
    const/4 v14, 0x1

    #@15c
    :cond_a
    :goto_6
    monitor-exit v3

    #@15d
    .line 8415
    if-eqz v14, :cond_0

    #@15f
    .line 8417
    :try_start_7
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@163
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@165
    move-object/from16 v0, v49

    #@167
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@169
    move-object/from16 v0, v44

    #@16b
    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    #@16e
    goto/16 :goto_0

    #@170
    .line 8418
    :catch_0
    move-exception v21

    #@171
    .line 8419
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@174
    const-string/jumbo v3, "Exception when removing starting window"

    #@177
    move-object/from16 v0, v21

    #@179
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17c
    goto/16 :goto_0

    #@17e
    .line 8381
    .end local v14    # "abort":Z
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v44    # "view":Landroid/view/View;
    :cond_b
    const/4 v12, 0x0

    #@17f
    .local v12, "overrideConfig":Landroid/content/res/Configuration;
    goto :goto_4

    #@180
    .line 8385
    .end local v12    # "overrideConfig":Landroid/content/res/Configuration;
    :catch_1
    move-exception v21

    #@181
    .line 8386
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@184
    const-string/jumbo v3, "Exception when adding starting window"

    #@187
    move-object/from16 v0, v21

    #@189
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18c
    goto :goto_5

    #@18d
    .line 8406
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v44    # "view":Landroid/view/View;
    .restart local v14    # "abort":Z
    :cond_c
    :try_start_8
    move-object/from16 v0, v44

    #@18f
    move-object/from16 v1, v49

    #@191
    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@193
    goto :goto_6

    #@194
    .line 8392
    :catchall_3
    move-exception v2

    #@195
    monitor-exit v3

    #@196
    throw v2

    #@197
    .line 8426
    .end local v14    # "abort":Z
    .end local v33    # "sd":Lcom/android/server/wm/StartingData;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_5
    move-object/from16 v0, p1

    #@199
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19b
    move-object/from16 v49, v0

    #@19d
    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    #@19f
    .line 8427
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v40, 0x0

    #@1a1
    .line 8428
    .local v40, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    #@1a3
    .line 8429
    .restart local v44    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    #@1a5
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1a7
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@1a9
    monitor-enter v3

    #@1aa
    .line 8434
    :try_start_9
    move-object/from16 v0, v49

    #@1ac
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@1ae
    if-eqz v2, :cond_d

    #@1b0
    .line 8435
    move-object/from16 v0, v49

    #@1b2
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@1b4
    move-object/from16 v44, v0

    #@1b6
    .line 8436
    .local v44, "view":Landroid/view/View;
    move-object/from16 v0, v49

    #@1b8
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@1ba
    move-object/from16 v40, v0

    #@1bc
    .line 8437
    .local v40, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    #@1bd
    move-object/from16 v0, v49

    #@1bf
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@1c1
    .line 8438
    const/4 v2, 0x0

    #@1c2
    move-object/from16 v0, v49

    #@1c4
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@1c6
    .line 8439
    const/4 v2, 0x0

    #@1c7
    move-object/from16 v0, v49

    #@1c9
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@1cb
    .line 8440
    const/4 v2, 0x0

    #@1cc
    move-object/from16 v0, v49

    #@1ce
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@1d0
    .end local v40    # "token":Landroid/os/IBinder;
    .end local v44    # "view":Landroid/view/View;
    :cond_d
    monitor-exit v3

    #@1d1
    .line 8443
    if-eqz v44, :cond_0

    #@1d3
    .line 8445
    :try_start_a
    move-object/from16 v0, p0

    #@1d5
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1d7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1d9
    move-object/from16 v0, v40

    #@1db
    move-object/from16 v1, v44

    #@1dd
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    #@1e0
    goto/16 :goto_0

    #@1e2
    .line 8446
    :catch_2
    move-exception v21

    #@1e3
    .line 8447
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@1e6
    const-string/jumbo v3, "Exception when removing starting window"

    #@1e9
    move-object/from16 v0, v21

    #@1eb
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1ee
    goto/16 :goto_0

    #@1f0
    .line 8429
    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    #@1f1
    monitor-exit v3

    #@1f2
    throw v2

    #@1f3
    .line 8453
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_6
    const/16 v40, 0x0

    #@1f5
    .line 8454
    .local v40, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    #@1f7
    .line 8456
    .end local v40    # "token":Landroid/os/IBinder;
    :goto_7
    move-object/from16 v0, p0

    #@1f9
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1fb
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@1fd
    monitor-enter v3

    #@1fe
    .line 8457
    :try_start_b
    move-object/from16 v0, p0

    #@200
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@202
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@207
    move-result v13

    #@208
    .line 8458
    .restart local v13    # "N":I
    if-lez v13, :cond_7

    #@20a
    .line 8461
    move-object/from16 v0, p0

    #@20c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@20e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@210
    add-int/lit8 v4, v13, -0x1

    #@212
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@215
    move-result-object v49

    #@216
    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    #@218
    .line 8468
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v49

    #@21a
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@21c
    if-nez v2, :cond_e

    #@21e
    monitor-exit v3

    #@21f
    goto :goto_7

    #@220
    .line 8472
    :cond_e
    :try_start_c
    move-object/from16 v0, v49

    #@222
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@224
    move-object/from16 v44, v0

    #@226
    .line 8473
    .restart local v44    # "view":Landroid/view/View;
    move-object/from16 v0, v49

    #@228
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@22a
    move-object/from16 v40, v0

    #@22c
    .line 8474
    .local v40, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    #@22d
    move-object/from16 v0, v49

    #@22f
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@231
    .line 8475
    const/4 v2, 0x0

    #@232
    move-object/from16 v0, v49

    #@234
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@236
    .line 8476
    const/4 v2, 0x0

    #@237
    move-object/from16 v0, v49

    #@239
    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@23b
    .line 8477
    const/4 v2, 0x0

    #@23c
    move-object/from16 v0, v49

    #@23e
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    #@240
    monitor-exit v3

    #@241
    .line 8481
    :try_start_d
    move-object/from16 v0, p0

    #@243
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@245
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@247
    move-object/from16 v0, v40

    #@249
    move-object/from16 v1, v44

    #@24b
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    #@24e
    goto :goto_7

    #@24f
    .line 8482
    :catch_3
    move-exception v21

    #@250
    .line 8483
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    #@253
    const-string/jumbo v3, "Exception when removing starting window"

    #@256
    move-object/from16 v0, v21

    #@258
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25b
    goto :goto_7

    #@25c
    .line 8456
    .end local v13    # "N":I
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v40    # "token":Landroid/os/IBinder;
    .end local v44    # "view":Landroid/view/View;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_5
    move-exception v2

    #@25d
    monitor-exit v3

    #@25e
    throw v2

    #@25f
    .line 8489
    :pswitch_7
    move-object/from16 v0, p1

    #@261
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@263
    move-object/from16 v49, v0

    #@265
    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    #@267
    .line 8494
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_e
    move-object/from16 v0, v49

    #@269
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@26b
    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    #@26e
    goto/16 :goto_0

    #@270
    .line 8495
    :catch_4
    move-exception v22

    #@271
    .local v22, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@273
    .line 8500
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_8
    move-object/from16 v0, p1

    #@275
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@277
    move-object/from16 v49, v0

    #@279
    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    #@27b
    .line 8502
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    #@27d
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@27f
    if-eqz v2, :cond_f

    #@281
    const/16 v30, 0x1

    #@283
    .line 8503
    .local v30, "nowVisible":Z
    :goto_8
    move-object/from16 v0, p1

    #@285
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@287
    if-eqz v2, :cond_10

    #@289
    const/16 v29, 0x1

    #@28b
    .line 8510
    .local v29, "nowGone":Z
    :goto_9
    if-eqz v30, :cond_11

    #@28d
    .line 8511
    :try_start_f
    move-object/from16 v0, v49

    #@28f
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@291
    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    #@294
    goto/16 :goto_0

    #@296
    .line 8515
    :catch_5
    move-exception v22

    #@297
    .restart local v22    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@299
    .line 8502
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v29    # "nowGone":Z
    .end local v30    # "nowVisible":Z
    :cond_f
    const/16 v30, 0x0

    #@29b
    .restart local v30    # "nowVisible":Z
    goto :goto_8

    #@29c
    .line 8503
    :cond_10
    const/16 v29, 0x0

    #@29e
    .restart local v29    # "nowGone":Z
    goto :goto_9

    #@29f
    .line 8513
    :cond_11
    move-object/from16 v0, v49

    #@2a1
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@2a3
    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    #@2a6
    goto/16 :goto_0

    #@2a8
    .line 8521
    .end local v29    # "nowGone":Z
    .end local v30    # "nowVisible":Z
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_9
    move-object/from16 v0, p0

    #@2aa
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2ac
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@2ae
    monitor-enter v3

    #@2af
    .line 8522
    :try_start_10
    const-string/jumbo v2, "WindowManager"

    #@2b2
    const-string/jumbo v4, "Window freeze timeout expired."

    #@2b5
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b8
    .line 8523
    move-object/from16 v0, p0

    #@2ba
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2bc
    const/4 v4, 0x2

    #@2bd
    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    #@2bf
    .line 8524
    move-object/from16 v0, p0

    #@2c1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2c3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    #@2c6
    move-result-object v48

    #@2c7
    .line 8525
    .local v48, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wm/WindowList;->size()I

    #@2ca
    move-result v23

    #@2cb
    .line 8526
    .restart local v23    # "i":I
    :cond_12
    :goto_a
    if-lez v23, :cond_13

    #@2cd
    .line 8527
    add-int/lit8 v23, v23, -0x1

    #@2cf
    .line 8528
    move-object/from16 v0, v48

    #@2d1
    move/from16 v1, v23

    #@2d3
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@2d6
    move-result-object v45

    #@2d7
    check-cast v45, Lcom/android/server/wm/WindowState;

    #@2d9
    .line 8529
    .local v45, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v45

    #@2db
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@2dd
    if-eqz v2, :cond_12

    #@2df
    .line 8530
    const/4 v2, 0x0

    #@2e0
    move-object/from16 v0, v45

    #@2e2
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@2e4
    .line 8531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2e7
    move-result-wide v4

    #@2e8
    .line 8532
    move-object/from16 v0, p0

    #@2ea
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2ec
    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    #@2ee
    .line 8531
    sub-long/2addr v4, v6

    #@2ef
    long-to-int v2, v4

    #@2f0
    move-object/from16 v0, v45

    #@2f2
    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@2f4
    .line 8533
    const-string/jumbo v2, "WindowManager"

    #@2f7
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2fc
    const-string/jumbo v5, "Force clearing orientation change: "

    #@2ff
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v4

    #@303
    move-object/from16 v0, v45

    #@305
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v4

    #@309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30c
    move-result-object v4

    #@30d
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    #@310
    goto :goto_a

    #@311
    .line 8521
    .end local v23    # "i":I
    .end local v45    # "w":Lcom/android/server/wm/WindowState;
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_6
    move-exception v2

    #@312
    monitor-exit v3

    #@313
    throw v2

    #@314
    .line 8536
    .restart local v23    # "i":I
    .restart local v48    # "windows":Lcom/android/server/wm/WindowList;
    :cond_13
    :try_start_11
    move-object/from16 v0, p0

    #@316
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@318
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@31a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    #@31d
    goto/16 :goto_3

    #@31f
    .line 8542
    .end local v23    # "i":I
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :pswitch_a
    move-object/from16 v0, p0

    #@321
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@323
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@325
    monitor-enter v3

    #@326
    .line 8543
    :try_start_12
    move-object/from16 v0, p0

    #@328
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@32a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@32c
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@32f
    move-result v2

    #@330
    if-nez v2, :cond_14

    #@332
    move-object/from16 v0, p0

    #@334
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@336
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@338
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@33b
    move-result v2

    #@33c
    if-eqz v2, :cond_14

    #@33e
    .line 8544
    move-object/from16 v0, p0

    #@340
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@342
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@344
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@347
    move-result v2

    #@348
    if-nez v2, :cond_7

    #@34a
    .line 8549
    :cond_14
    move-object/from16 v0, p0

    #@34c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@34e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@350
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    #@353
    .line 8550
    move-object/from16 v0, p0

    #@355
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@357
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@359
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    #@35c
    goto/16 :goto_3

    #@35e
    .line 8542
    :catchall_7
    move-exception v2

    #@35f
    monitor-exit v3

    #@360
    throw v2

    #@361
    .line 8557
    :pswitch_b
    move-object/from16 v0, p0

    #@363
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@365
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@367
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@36a
    move-result-object v2

    #@36b
    .line 8558
    const-string/jumbo v3, "window_animation_scale"

    #@36e
    move-object/from16 v0, p0

    #@370
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@372
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    #@374
    .line 8557
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    #@377
    .line 8559
    move-object/from16 v0, p0

    #@379
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@37b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@37d
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@380
    move-result-object v2

    #@381
    .line 8560
    const-string/jumbo v3, "transition_animation_scale"

    #@384
    .line 8561
    move-object/from16 v0, p0

    #@386
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@388
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    #@38a
    .line 8559
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    #@38d
    .line 8562
    move-object/from16 v0, p0

    #@38f
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@391
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@393
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@396
    move-result-object v2

    #@397
    .line 8563
    const-string/jumbo v3, "animator_duration_scale"

    #@39a
    move-object/from16 v0, p0

    #@39c
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@39e
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    #@3a0
    .line 8562
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    #@3a3
    goto/16 :goto_0

    #@3a5
    .line 8569
    :pswitch_c
    move-object/from16 v0, p1

    #@3a7
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3a9
    move/from16 v27, v0

    #@3ab
    .line 8570
    .local v27, "mode":I
    packed-switch v27, :pswitch_data_1

    #@3ae
    goto/16 :goto_0

    #@3b0
    .line 8572
    :pswitch_d
    move-object/from16 v0, p0

    #@3b2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3b4
    .line 8573
    move-object/from16 v0, p0

    #@3b6
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3b8
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@3ba
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3bd
    move-result-object v3

    #@3be
    .line 8574
    const-string/jumbo v4, "window_animation_scale"

    #@3c1
    .line 8575
    move-object/from16 v0, p0

    #@3c3
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3c5
    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    #@3c7
    .line 8572
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@3ca
    move-result v3

    #@3cb
    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    #@3cd
    goto/16 :goto_0

    #@3cf
    .line 8579
    :pswitch_e
    move-object/from16 v0, p0

    #@3d1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3d3
    .line 8580
    move-object/from16 v0, p0

    #@3d5
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3d7
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@3d9
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3dc
    move-result-object v3

    #@3dd
    .line 8581
    const-string/jumbo v4, "transition_animation_scale"

    #@3e0
    .line 8582
    move-object/from16 v0, p0

    #@3e2
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3e4
    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    #@3e6
    .line 8579
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@3e9
    move-result v3

    #@3ea
    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    #@3ec
    goto/16 :goto_0

    #@3ee
    .line 8586
    :pswitch_f
    move-object/from16 v0, p0

    #@3f0
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3f2
    .line 8587
    move-object/from16 v0, p0

    #@3f4
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3f6
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@3f8
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3fb
    move-result-object v3

    #@3fc
    .line 8588
    const-string/jumbo v4, "animator_duration_scale"

    #@3ff
    .line 8589
    move-object/from16 v0, p0

    #@401
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@403
    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    #@405
    .line 8586
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@408
    move-result v3

    #@409
    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    #@40b
    .line 8590
    move-object/from16 v0, p0

    #@40d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@40f
    const/4 v3, 0x0

    #@410
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    #@413
    goto/16 :goto_0

    #@415
    .line 8598
    .end local v27    # "mode":I
    :pswitch_10
    move-object/from16 v0, p0

    #@417
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@419
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@41b
    monitor-enter v3

    #@41c
    .line 8601
    :try_start_13
    move-object/from16 v0, p0

    #@41e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@420
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@422
    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    #@425
    move-result v2

    #@426
    if-nez v2, :cond_15

    #@428
    move-object/from16 v0, p0

    #@42a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@42c
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    #@42e
    if-eqz v2, :cond_16

    #@430
    .line 8604
    :cond_15
    const-wide/16 v4, 0x7d0

    #@432
    const/16 v2, 0xf

    #@434
    move-object/from16 v0, p0

    #@436
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    #@439
    monitor-exit v3

    #@43a
    .line 8605
    return-void

    #@43b
    .line 8609
    :cond_16
    :try_start_14
    move-object/from16 v0, p0

    #@43d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@43f
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    #@441
    if-eqz v2, :cond_17

    #@443
    monitor-exit v3

    #@444
    .line 8610
    return-void

    #@445
    :cond_17
    monitor-exit v3

    #@446
    .line 8613
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@449
    move-result-object v2

    #@44a
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    #@44d
    goto/16 :goto_0

    #@44f
    .line 8598
    :catchall_8
    move-exception v2

    #@450
    monitor-exit v3

    #@451
    throw v2

    #@452
    .line 8618
    :pswitch_11
    move-object/from16 v0, p0

    #@454
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@456
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    #@459
    goto/16 :goto_0

    #@45b
    .line 8623
    :pswitch_12
    move-object/from16 v0, p0

    #@45d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@45f
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@461
    monitor-enter v3

    #@462
    .line 8624
    :try_start_15
    const-string/jumbo v2, "WindowManager"

    #@465
    const-string/jumbo v4, "App freeze timeout expired."

    #@468
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46b
    .line 8625
    move-object/from16 v0, p0

    #@46d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@46f
    const/4 v4, 0x2

    #@470
    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    #@472
    .line 8626
    move-object/from16 v0, p0

    #@474
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@476
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@478
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@47b
    move-result v31

    #@47c
    .line 8627
    .local v31, "numStacks":I
    const/16 v36, 0x0

    #@47e
    .local v36, "stackNdx":I
    :goto_b
    move/from16 v0, v36

    #@480
    move/from16 v1, v31

    #@482
    if-ge v0, v1, :cond_7

    #@484
    .line 8628
    move-object/from16 v0, p0

    #@486
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@488
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@48a
    move/from16 v0, v36

    #@48c
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@48f
    move-result-object v35

    #@490
    check-cast v35, Lcom/android/server/wm/TaskStack;

    #@492
    .line 8629
    .local v35, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@495
    move-result-object v38

    #@496
    .line 8630
    .local v38, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    #@499
    move-result v2

    #@49a
    add-int/lit8 v37, v2, -0x1

    #@49c
    .local v37, "taskNdx":I
    :goto_c
    if-ltz v37, :cond_1a

    #@49e
    .line 8631
    move-object/from16 v0, v38

    #@4a0
    move/from16 v1, v37

    #@4a2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a5
    move-result-object v2

    #@4a6
    check-cast v2, Lcom/android/server/wm/Task;

    #@4a8
    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@4aa
    move-object/from16 v43, v0

    #@4ac
    .line 8632
    .local v43, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/AppTokenList;->size()I

    #@4af
    move-result v2

    #@4b0
    add-int/lit8 v42, v2, -0x1

    #@4b2
    .local v42, "tokenNdx":I
    :goto_d
    if-ltz v42, :cond_19

    #@4b4
    .line 8633
    move-object/from16 v0, v43

    #@4b6
    move/from16 v1, v42

    #@4b8
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@4bb
    move-result-object v39

    #@4bc
    check-cast v39, Lcom/android/server/wm/AppWindowToken;

    #@4be
    .line 8634
    .local v39, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v39

    #@4c0
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@4c2
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@4c4
    if-eqz v2, :cond_18

    #@4c6
    .line 8635
    const-string/jumbo v2, "WindowManager"

    #@4c9
    new-instance v4, Ljava/lang/StringBuilder;

    #@4cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4ce
    const-string/jumbo v5, "Force clearing freeze: "

    #@4d1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d4
    move-result-object v4

    #@4d5
    move-object/from16 v0, v39

    #@4d7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v4

    #@4db
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4de
    move-result-object v4

    #@4df
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e2
    .line 8636
    move-object/from16 v0, p0

    #@4e4
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4e6
    const/4 v4, 0x1

    #@4e7
    const/4 v5, 0x1

    #@4e8
    move-object/from16 v0, v39

    #@4ea
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    #@4ed
    .line 8632
    :cond_18
    add-int/lit8 v42, v42, -0x1

    #@4ef
    goto :goto_d

    #@4f0
    .line 8630
    .end local v39    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    add-int/lit8 v37, v37, -0x1

    #@4f2
    goto :goto_c

    #@4f3
    .line 8627
    .end local v42    # "tokenNdx":I
    .end local v43    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_1a
    add-int/lit8 v36, v36, 0x1

    #@4f5
    goto :goto_b

    #@4f6
    .line 8623
    .end local v31    # "numStacks":I
    .end local v35    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v36    # "stackNdx":I
    .end local v37    # "taskNdx":I
    .end local v38    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :catchall_9
    move-exception v2

    #@4f7
    monitor-exit v3

    #@4f8
    throw v2

    #@4f9
    .line 8646
    :pswitch_13
    move-object/from16 v0, p0

    #@4fb
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4fd
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4ff
    monitor-enter v3

    #@500
    .line 8647
    :try_start_16
    move-object/from16 v0, p0

    #@502
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@504
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    #@506
    if-eqz v2, :cond_7

    #@508
    .line 8648
    move-object/from16 v0, p0

    #@50a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@50c
    const/4 v4, 0x0

    #@50d
    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    #@50f
    .line 8649
    move-object/from16 v0, p0

    #@511
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@513
    const-string/jumbo v4, "client-timeout"

    #@516
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    #@518
    .line 8650
    move-object/from16 v0, p0

    #@51a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@51c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    #@51f
    goto/16 :goto_3

    #@521
    .line 8646
    :catchall_a
    move-exception v2

    #@522
    monitor-exit v3

    #@523
    throw v2

    #@524
    .line 8657
    :pswitch_14
    const/16 v2, 0x12

    #@526
    move-object/from16 v0, p0

    #@528
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@52b
    .line 8658
    move-object/from16 v0, p0

    #@52d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@52f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    #@532
    goto/16 :goto_0

    #@534
    .line 8663
    :pswitch_15
    move-object/from16 v0, p0

    #@536
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@538
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    #@53a
    if-eqz v2, :cond_0

    #@53c
    .line 8664
    move-object/from16 v0, p0

    #@53e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@540
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@542
    monitor-enter v3

    #@543
    .line 8665
    :try_start_17
    move-object/from16 v0, p0

    #@545
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@547
    const/4 v4, 0x0

    #@548
    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    #@54a
    monitor-exit v3

    #@54b
    .line 8667
    move-object/from16 v0, p0

    #@54d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@54f
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap7(Lcom/android/server/wm/WindowManagerService;)V

    #@552
    goto/16 :goto_0

    #@554
    .line 8664
    :catchall_b
    move-exception v2

    #@555
    monitor-exit v3

    #@556
    throw v2

    #@557
    .line 8673
    :pswitch_16
    move-object/from16 v0, p1

    #@559
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55b
    move-object/from16 v46, v0

    #@55d
    check-cast v46, Landroid/os/IBinder;

    #@55f
    .line 8677
    .local v46, "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@561
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@563
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@565
    monitor-enter v3

    #@566
    .line 8679
    :try_start_18
    move-object/from16 v0, p0

    #@568
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@56a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@56c
    if-eqz v2, :cond_7

    #@56e
    .line 8680
    move-object/from16 v0, p0

    #@570
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@572
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@574
    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    #@577
    .line 8681
    move-object/from16 v0, p0

    #@579
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@57b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@57d
    const/4 v4, 0x1

    #@57e
    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@581
    .line 8682
    move-object/from16 v0, p0

    #@583
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@585
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@587
    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    #@58a
    .line 8683
    move-object/from16 v0, p0

    #@58c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@58e
    const/4 v4, 0x0

    #@58f
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    #@591
    goto/16 :goto_3

    #@593
    .line 8677
    :catchall_c
    move-exception v2

    #@594
    monitor-exit v3

    #@595
    throw v2

    #@596
    .line 8690
    .end local v46    # "win":Landroid/os/IBinder;
    :pswitch_17
    move-object/from16 v0, p1

    #@598
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@59a
    move-object/from16 v46, v0

    #@59c
    check-cast v46, Landroid/os/IBinder;

    #@59e
    .line 8694
    .restart local v46    # "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5a0
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5a2
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@5a4
    monitor-enter v3

    #@5a5
    .line 8696
    :try_start_19
    move-object/from16 v0, p0

    #@5a7
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5a9
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@5ab
    if-eqz v2, :cond_7

    #@5ad
    .line 8697
    move-object/from16 v0, p0

    #@5af
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5b1
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@5b3
    const/4 v4, 0x0

    #@5b4
    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@5b6
    .line 8698
    move-object/from16 v0, p0

    #@5b8
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5ba
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@5bc
    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    #@5bf
    goto/16 :goto_3

    #@5c1
    .line 8694
    :catchall_d
    move-exception v2

    #@5c2
    monitor-exit v3

    #@5c3
    throw v2

    #@5c4
    .line 8705
    .end local v46    # "win":Landroid/os/IBinder;
    :pswitch_18
    move-object/from16 v0, p0

    #@5c6
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5c8
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    #@5cb
    goto/16 :goto_0

    #@5cd
    .line 8710
    :pswitch_19
    move-object/from16 v0, p0

    #@5cf
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5d1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    #@5d4
    goto/16 :goto_0

    #@5d6
    .line 8715
    :pswitch_1a
    const/16 v17, 0x0

    #@5d8
    .line 8716
    .local v17, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@5da
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5dc
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@5de
    monitor-enter v3

    #@5df
    .line 8717
    :try_start_1a
    const-string/jumbo v2, "WindowManager"

    #@5e2
    new-instance v4, Ljava/lang/StringBuilder;

    #@5e4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e7
    const-string/jumbo v5, "Timeout waiting for drawn: undrawn="

    #@5ea
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ed
    move-result-object v4

    #@5ee
    move-object/from16 v0, p0

    #@5f0
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5f2
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@5f4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f7
    move-result-object v4

    #@5f8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fb
    move-result-object v4

    #@5fc
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5ff
    .line 8718
    move-object/from16 v0, p0

    #@601
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@603
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@605
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@608
    .line 8719
    move-object/from16 v0, p0

    #@60a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@60c
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@60e
    move-object/from16 v17, v0

    #@610
    .line 8720
    .local v17, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@612
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@614
    const/4 v4, 0x0

    #@615
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    #@617
    monitor-exit v3

    #@618
    .line 8722
    if-eqz v17, :cond_0

    #@61a
    .line 8723
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    #@61d
    goto/16 :goto_0

    #@61f
    .line 8716
    .end local v17    # "callback":Ljava/lang/Runnable;
    :catchall_e
    move-exception v2

    #@620
    monitor-exit v3

    #@621
    throw v2

    #@622
    .line 8729
    :pswitch_1b
    move-object/from16 v0, p0

    #@624
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@626
    move-object/from16 v0, p1

    #@628
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@62a
    move-object/from16 v0, p1

    #@62c
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@62e
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;II)V

    #@631
    goto/16 :goto_0

    #@633
    .line 8734
    :pswitch_1c
    move-object/from16 v0, p0

    #@635
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@637
    move-object/from16 v0, p1

    #@639
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@63b
    const/4 v4, 0x1

    #@63c
    if-ne v2, v4, :cond_1b

    #@63e
    const/4 v2, 0x1

    #@63f
    :goto_e
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    #@642
    goto/16 :goto_0

    #@644
    :cond_1b
    const/4 v2, 0x0

    #@645
    goto :goto_e

    #@646
    .line 8739
    :pswitch_1d
    move-object/from16 v0, p0

    #@648
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@64a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    #@64d
    goto/16 :goto_0

    #@64f
    .line 8745
    :pswitch_1e
    :try_start_1b
    move-object/from16 v0, p1

    #@651
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@653
    check-cast v2, Landroid/os/IRemoteCallback;

    #@655
    const/4 v3, 0x0

    #@656
    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_6

    #@659
    goto/16 :goto_0

    #@65b
    .line 8746
    :catch_6
    move-exception v20

    #@65c
    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@65e
    .line 8752
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_1f
    move-object/from16 v0, p0

    #@660
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@662
    move-object/from16 v0, p1

    #@664
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@666
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    #@669
    goto/16 :goto_0

    #@66b
    .line 8756
    :pswitch_20
    move-object/from16 v0, p0

    #@66d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@66f
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@671
    monitor-enter v3

    #@672
    .line 8757
    :try_start_1c
    move-object/from16 v0, p0

    #@674
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@676
    move-object/from16 v0, p1

    #@678
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@67a
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap4(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    #@67d
    goto/16 :goto_3

    #@67f
    .line 8756
    :catchall_f
    move-exception v2

    #@680
    monitor-exit v3

    #@681
    throw v2

    #@682
    .line 8762
    :pswitch_21
    move-object/from16 v0, p0

    #@684
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@686
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@688
    monitor-enter v3

    #@689
    .line 8763
    :try_start_1d
    move-object/from16 v0, p0

    #@68b
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@68d
    move-object/from16 v0, p1

    #@68f
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@691
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap3(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    #@694
    goto/16 :goto_3

    #@696
    .line 8762
    :catchall_10
    move-exception v2

    #@697
    monitor-exit v3

    #@698
    throw v2

    #@699
    .line 8768
    :pswitch_22
    move-object/from16 v0, p0

    #@69b
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@69d
    move-object/from16 v0, p1

    #@69f
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6a1
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    #@6a3
    move-object/from16 v0, p1

    #@6a5
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@6a7
    move-object/from16 v0, p1

    #@6a9
    iget v5, v0, Landroid/os/Message;->arg2:I

    #@6ab
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->-wrap9(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)V

    #@6ae
    goto/16 :goto_0

    #@6b0
    .line 8773
    :pswitch_23
    move-object/from16 v0, p0

    #@6b2
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6b4
    move-object/from16 v0, p1

    #@6b6
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6b8
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    #@6ba
    move-object/from16 v0, p1

    #@6bc
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@6be
    move-object/from16 v0, p1

    #@6c0
    iget v5, v0, Landroid/os/Message;->arg2:I

    #@6c2
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->-wrap5(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)V

    #@6c5
    goto/16 :goto_0

    #@6c7
    .line 8778
    :pswitch_24
    move-object/from16 v0, p0

    #@6c9
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6cb
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap2(Lcom/android/server/wm/WindowManagerService;)V

    #@6ce
    goto/16 :goto_0

    #@6d0
    .line 8784
    :pswitch_25
    :try_start_1e
    move-object/from16 v0, p0

    #@6d2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6d4
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@6d6
    move-object/from16 v0, p1

    #@6d8
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6da
    check-cast v2, Landroid/os/IBinder;

    #@6dc
    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_7

    #@6df
    goto/16 :goto_0

    #@6e1
    .line 8785
    :catch_7
    move-exception v20

    #@6e2
    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@6e4
    .line 8790
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_26
    move-object/from16 v0, p0

    #@6e6
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6e8
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@6ea
    monitor-enter v3

    #@6eb
    .line 8791
    :try_start_1f
    move-object/from16 v0, p0

    #@6ed
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6ef
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@6f1
    move-object/from16 v17, v0

    #@6f3
    .line 8792
    .restart local v17    # "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@6f5
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6f7
    const/4 v4, 0x0

    #@6f8
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    #@6fa
    monitor-exit v3

    #@6fb
    .line 8794
    if-eqz v17, :cond_1c

    #@6fd
    .line 8795
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    #@700
    .line 8799
    .end local v17    # "callback":Ljava/lang/Runnable;
    :cond_1c
    :pswitch_27
    move-object/from16 v0, p0

    #@702
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@704
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    #@707
    move-result v32

    #@708
    .line 8800
    .local v32, "scale":F
    invoke-static/range {v32 .. v32}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    #@70b
    .line 8801
    move-object/from16 v0, p1

    #@70d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@70f
    move-object/from16 v34, v0

    #@711
    check-cast v34, Lcom/android/server/wm/Session;

    #@713
    .line 8802
    .local v34, "session":Lcom/android/server/wm/Session;
    if-eqz v34, :cond_1d

    #@715
    .line 8804
    :try_start_20
    move-object/from16 v0, v34

    #@717
    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    #@719
    move/from16 v0, v32

    #@71b
    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_8

    #@71e
    goto/16 :goto_0

    #@720
    .line 8805
    :catch_8
    move-exception v20

    #@721
    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@723
    .line 8790
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v32    # "scale":F
    .end local v34    # "session":Lcom/android/server/wm/Session;
    :catchall_11
    move-exception v2

    #@724
    monitor-exit v3

    #@725
    throw v2

    #@726
    .line 8809
    .restart local v32    # "scale":F
    .restart local v34    # "session":Lcom/android/server/wm/Session;
    :cond_1d
    new-instance v18, Ljava/util/ArrayList;

    #@728
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@72b
    .line 8810
    .local v18, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    move-object/from16 v0, p0

    #@72d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@72f
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@731
    monitor-enter v3

    #@732
    .line 8811
    const/16 v23, 0x0

    #@734
    .restart local v23    # "i":I
    :goto_f
    :try_start_21
    move-object/from16 v0, p0

    #@736
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@738
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    #@73a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@73d
    move-result v2

    #@73e
    move/from16 v0, v23

    #@740
    if-ge v0, v2, :cond_1e

    #@742
    .line 8812
    move-object/from16 v0, p0

    #@744
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@746
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    #@748
    move/from16 v0, v23

    #@74a
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@74d
    move-result-object v2

    #@74e
    check-cast v2, Lcom/android/server/wm/Session;

    #@750
    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    #@752
    move-object/from16 v0, v18

    #@754
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    #@757
    .line 8811
    add-int/lit8 v23, v23, 0x1

    #@759
    goto :goto_f

    #@75a
    :cond_1e
    monitor-exit v3

    #@75b
    .line 8816
    const/16 v23, 0x0

    #@75d
    :goto_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@760
    move-result v2

    #@761
    move/from16 v0, v23

    #@763
    if-ge v0, v2, :cond_0

    #@765
    .line 8818
    :try_start_22
    move-object/from16 v0, v18

    #@767
    move/from16 v1, v23

    #@769
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76c
    move-result-object v2

    #@76d
    check-cast v2, Landroid/view/IWindowSessionCallback;

    #@76f
    move/from16 v0, v32

    #@771
    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_b

    #@774
    .line 8816
    :goto_11
    add-int/lit8 v23, v23, 0x1

    #@776
    goto :goto_10

    #@777
    .line 8810
    :catchall_12
    move-exception v2

    #@778
    monitor-exit v3

    #@779
    throw v2

    #@77a
    .line 8827
    .end local v18    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v23    # "i":I
    .end local v32    # "scale":F
    .end local v34    # "session":Lcom/android/server/wm/Session;
    :pswitch_28
    move-object/from16 v0, p0

    #@77c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@77e
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@780
    monitor-enter v3

    #@781
    .line 8829
    :try_start_23
    move-object/from16 v0, p0

    #@783
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@785
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap0(Lcom/android/server/wm/WindowManagerService;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    #@788
    move-result v16

    #@789
    .local v16, "bootAnimationComplete":Z
    monitor-exit v3

    #@78a
    .line 8831
    if-eqz v16, :cond_0

    #@78c
    .line 8832
    move-object/from16 v0, p0

    #@78e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@790
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    #@793
    goto/16 :goto_0

    #@795
    .line 8827
    .end local v16    # "bootAnimationComplete":Z
    :catchall_13
    move-exception v2

    #@796
    monitor-exit v3

    #@797
    throw v2

    #@798
    .line 8837
    :pswitch_29
    move-object/from16 v0, p0

    #@79a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@79c
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@79e
    monitor-enter v3

    #@79f
    .line 8838
    :try_start_24
    move-object/from16 v0, p0

    #@7a1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7a3
    const/4 v4, 0x0

    #@7a4
    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    #@7a6
    goto/16 :goto_3

    #@7a8
    .line 8837
    :catchall_14
    move-exception v2

    #@7a9
    monitor-exit v3

    #@7aa
    throw v2

    #@7ab
    .line 8843
    :pswitch_2a
    move-object/from16 v0, p0

    #@7ad
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7af
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@7b1
    monitor-enter v3

    #@7b2
    .line 8844
    :try_start_25
    move-object/from16 v0, p0

    #@7b4
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7b6
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@7b8
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    #@7bb
    move-result v2

    #@7bc
    if-eqz v2, :cond_1f

    #@7be
    .line 8845
    move-object/from16 v0, p0

    #@7c0
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7c2
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@7c4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    #@7c7
    :cond_1f
    monitor-exit v3

    #@7c8
    .line 8850
    :pswitch_2b
    move-object/from16 v0, p0

    #@7ca
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7cc
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@7ce
    monitor-enter v3

    #@7cf
    .line 8851
    :try_start_26
    move-object/from16 v0, p0

    #@7d1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7d3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@7d6
    move-result-object v19

    #@7d7
    .line 8852
    .local v19, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    #@7da
    move-result-object v2

    #@7db
    const/4 v4, 0x0

    #@7dc
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    #@7df
    .line 8853
    move-object/from16 v0, p0

    #@7e1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7e3
    move-object/from16 v0, v19

    #@7e5
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->adjustForImeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    #@7e8
    goto/16 :goto_3

    #@7ea
    .line 8850
    .end local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_15
    move-exception v2

    #@7eb
    monitor-exit v3

    #@7ec
    throw v2

    #@7ed
    .line 8843
    :catchall_16
    move-exception v2

    #@7ee
    monitor-exit v3

    #@7ef
    throw v2

    #@7f0
    .line 8859
    :pswitch_2c
    :try_start_27
    move-object/from16 v0, p0

    #@7f2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7f4
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@7f6
    move-object/from16 v0, p1

    #@7f8
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@7fa
    move-object/from16 v0, p1

    #@7fc
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7fe
    check-cast v2, Landroid/graphics/Rect;

    #@800
    move-object/from16 v0, p1

    #@802
    iget v5, v0, Landroid/os/Message;->arg2:I

    #@804
    invoke-interface {v3, v4, v2, v5}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_9

    #@807
    goto/16 :goto_0

    #@809
    .line 8860
    :catch_9
    move-exception v20

    #@80a
    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@80c
    .line 8867
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_2d
    :try_start_28
    move-object/from16 v0, p0

    #@80e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@810
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@812
    .line 8868
    move-object/from16 v0, p1

    #@814
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@816
    move-object/from16 v0, p1

    #@818
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@81a
    check-cast v4, Landroid/graphics/Rect;

    #@81c
    move-object/from16 v0, p1

    #@81e
    iget v5, v0, Landroid/os/Message;->arg2:I

    #@820
    const/4 v6, 0x1

    #@821
    if-ne v5, v6, :cond_20

    #@823
    const/4 v5, 0x1

    #@824
    :goto_12
    const/4 v6, 0x0

    #@825
    const/4 v7, 0x0

    #@826
    const/4 v8, -0x1

    #@827
    .line 8867
    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_a

    #@82a
    goto/16 :goto_0

    #@82c
    .line 8869
    :catch_a
    move-exception v20

    #@82d
    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@82f
    .line 8868
    .end local v20    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v5, 0x0

    #@830
    goto :goto_12

    #@831
    .line 8875
    :pswitch_2e
    move-object/from16 v0, p0

    #@833
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@835
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@837
    monitor-enter v3

    #@838
    .line 8876
    :try_start_29
    move-object/from16 v0, p0

    #@83a
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@83c
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    #@83e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@841
    move-result v2

    #@842
    add-int/lit8 v23, v2, -0x1

    #@844
    .restart local v23    # "i":I
    :goto_13
    if-ltz v23, :cond_21

    #@846
    .line 8877
    move-object/from16 v0, p0

    #@848
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@84a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    #@84c
    move/from16 v0, v23

    #@84e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@851
    move-result-object v41

    #@852
    check-cast v41, Lcom/android/server/wm/AppWindowToken;

    #@854
    .line 8878
    .local v41, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/AppWindowToken;->clearTimedoutReplacesLocked()V

    #@857
    .line 8876
    add-int/lit8 v23, v23, -0x1

    #@859
    goto :goto_13

    #@85a
    .line 8880
    .end local v41    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_21
    move-object/from16 v0, p0

    #@85c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@85e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    #@860
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    #@863
    monitor-exit v3

    #@864
    .line 8884
    .end local v23    # "i":I
    :pswitch_2f
    move-object/from16 v0, p0

    #@866
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@868
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    #@86a
    move-object/from16 v0, p1

    #@86c
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@86e
    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionStarting(I)V

    #@871
    goto/16 :goto_0

    #@873
    .line 8875
    :catchall_17
    move-exception v2

    #@874
    monitor-exit v3

    #@875
    throw v2

    #@876
    .line 8888
    :pswitch_30
    move-object/from16 v0, p0

    #@878
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@87a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    #@87c
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionCancelled()V

    #@87f
    goto/16 :goto_0

    #@881
    .line 8892
    :pswitch_31
    move-object/from16 v0, p0

    #@883
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@885
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    #@887
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionFinished()V

    #@88a
    goto/16 :goto_0

    #@88c
    .line 8896
    :pswitch_32
    move-object/from16 v0, p0

    #@88e
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@890
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    #@892
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyStartingWindowDrawn()V

    #@895
    goto/16 :goto_0

    #@897
    .line 8900
    :pswitch_33
    move-object/from16 v0, p1

    #@899
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@89b
    move-object/from16 v47, v0

    #@89d
    check-cast v47, Lcom/android/server/wm/WindowState;

    #@89f
    .line 8901
    .local v47, "window":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@8a1
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8a3
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@8a5
    monitor-enter v3

    #@8a6
    .line 8913
    :try_start_2a
    move-object/from16 v0, v47

    #@8a8
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@8aa
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8ac
    and-int/lit16 v4, v4, -0x81

    #@8ae
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8b0
    .line 8914
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    #@8b3
    .line 8915
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@8b6
    .line 8916
    move-object/from16 v0, p0

    #@8b8
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8ba
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@8bc
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    #@8bf
    goto/16 :goto_3

    #@8c1
    .line 8901
    :catchall_18
    move-exception v2

    #@8c2
    monitor-exit v3

    #@8c3
    throw v2

    #@8c4
    .line 8921
    .end local v47    # "window":Lcom/android/server/wm/WindowState;
    :pswitch_34
    move-object/from16 v0, p0

    #@8c6
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8c8
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    #@8ca
    move-object/from16 v0, p1

    #@8cc
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@8ce
    const/4 v4, 0x1

    #@8cf
    if-ne v2, v4, :cond_22

    #@8d1
    const/4 v2, 0x1

    #@8d2
    :goto_14
    invoke-virtual {v3, v2}, Landroid/app/ActivityManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    #@8d5
    goto/16 :goto_0

    #@8d7
    :cond_22
    const/4 v2, 0x0

    #@8d8
    goto :goto_14

    #@8d9
    .line 8927
    :pswitch_35
    move-object/from16 v0, p0

    #@8db
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8dd
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@8df
    monitor-enter v3

    #@8e0
    .line 8928
    :try_start_2b
    move-object/from16 v0, p0

    #@8e2
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8e4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@8e7
    move-result-object v19

    #@8e8
    .line 8929
    .restart local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@8eb
    move-result-object v48

    #@8ec
    .line 8930
    .restart local v48    # "windows":Lcom/android/server/wm/WindowList;
    const/16 v25, 0x0

    #@8ee
    .line 8931
    .local v25, "layoutNeeded":Z
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wm/WindowList;->size()I

    #@8f1
    move-result v2

    #@8f2
    add-int/lit8 v23, v2, -0x1

    #@8f4
    .restart local v23    # "i":I
    :goto_15
    if-ltz v23, :cond_24

    #@8f6
    .line 8932
    move-object/from16 v0, v48

    #@8f8
    move/from16 v1, v23

    #@8fa
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@8fd
    move-result-object v45

    #@8fe
    check-cast v45, Lcom/android/server/wm/WindowState;

    #@900
    .line 8933
    .restart local v45    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v45

    #@902
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    #@904
    if-eqz v2, :cond_23

    #@906
    .line 8934
    const/16 v25, 0x1

    #@908
    .line 8935
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@90b
    .line 8936
    move-object/from16 v0, p0

    #@90d
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@90f
    const/4 v4, 0x0

    #@910
    move-object/from16 v0, v45

    #@912
    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    #@915
    .line 8931
    :cond_23
    add-int/lit8 v23, v23, -0x1

    #@917
    goto :goto_15

    #@918
    .line 8939
    .end local v45    # "w":Lcom/android/server/wm/WindowState;
    :cond_24
    if-eqz v25, :cond_7

    #@91a
    .line 8940
    move-object/from16 v0, p0

    #@91c
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@91e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@920
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_19

    #@923
    goto/16 :goto_3

    #@925
    .line 8927
    .end local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v23    # "i":I
    .end local v25    # "layoutNeeded":Z
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_19
    move-exception v2

    #@926
    monitor-exit v3

    #@927
    throw v2

    #@928
    .line 8819
    .restart local v18    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .restart local v23    # "i":I
    .restart local v32    # "scale":F
    .restart local v34    # "session":Lcom/android/server/wm/Session;
    :catch_b
    move-exception v20

    #@929
    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_11

    #@92b
    .line 8293
    nop

    #@92c
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
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_13
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_1c
        :pswitch_1d
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_24
        :pswitch_2b
        :pswitch_2d
        :pswitch_2c
        :pswitch_22
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_c
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch

    #@99a
    .line 8570
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
