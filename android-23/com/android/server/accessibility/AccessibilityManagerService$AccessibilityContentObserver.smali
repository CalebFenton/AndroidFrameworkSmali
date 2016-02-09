.class final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccessibilityContentObserver"
.end annotation


# instance fields
.field private final mAccessibilityEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerUri:Landroid/net/Uri;

.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mDisplayMagnificationEnabledUri:Landroid/net/Uri;

.field private final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field private final mEnhancedWebAccessibilityUri:Landroid/net/Uri;

.field private final mHighTextContrastUri:Landroid/net/Uri;

.field private final mTouchExplorationEnabledUri:Landroid/net/Uri;

.field private final mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3895
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    .line 3896
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 3866
    const-string/jumbo v0, "accessibility_enabled"

    #@8
    .line 3865
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    #@e
    .line 3869
    const-string/jumbo v0, "touch_exploration_enabled"

    #@11
    .line 3868
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    #@17
    .line 3872
    const-string/jumbo v0, "accessibility_display_magnification_enabled"

    #@1a
    .line 3871
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    #@20
    .line 3875
    const-string/jumbo v0, "enabled_accessibility_services"

    #@23
    .line 3874
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    #@29
    .line 3878
    const-string/jumbo v0, "touch_exploration_granted_accessibility_services"

    #@2c
    .line 3877
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    #@32
    .line 3881
    const-string/jumbo v0, "accessibility_script_injection"

    #@35
    .line 3880
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    #@3b
    .line 3884
    const-string/jumbo v0, "accessibility_display_inversion_enabled"

    #@3e
    .line 3883
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    #@44
    .line 3887
    const-string/jumbo v0, "accessibility_display_daltonizer_enabled"

    #@47
    .line 3886
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    #@4d
    .line 3890
    const-string/jumbo v0, "accessibility_display_daltonizer"

    #@50
    .line 3889
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    #@56
    .line 3893
    const-string/jumbo v0, "high_text_contrast_enabled"

    #@59
    .line 3892
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@5c
    move-result-object v0

    #@5d
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    #@5f
    .line 3895
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 3925
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3928
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@c
    move-result-object v0

    #@d
    .line 3931
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_0

    #@13
    monitor-exit v2

    #@14
    .line 3932
    return-void

    #@15
    .line 3935
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    #@17
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 3936
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1f
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 3937
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@27
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    :cond_1
    :goto_0
    monitor-exit v2

    #@2b
    .line 3924
    return-void

    #@2c
    .line 3939
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    #@2e
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 3940
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@36
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap8(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_1

    #@3c
    .line 3941
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3e
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 3925
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1

    #@45
    .line 3943
    .restart local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    #@47
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_4

    #@4d
    .line 3944
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4f
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap4(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_1

    #@55
    .line 3945
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@57
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@5a
    goto :goto_0

    #@5b
    .line 3947
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    #@5d
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_5

    #@63
    .line 3948
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@65
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap5(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_1

    #@6b
    .line 3949
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6d
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@70
    goto :goto_0

    #@71
    .line 3951
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    #@73
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_6

    #@79
    .line 3952
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@7b
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap9(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_1

    #@81
    .line 3953
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@83
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@86
    goto :goto_0

    #@87
    .line 3955
    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    #@89
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_7

    #@8f
    .line 3956
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@91
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap6(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@94
    move-result v1

    #@95
    if-eqz v1, :cond_1

    #@97
    .line 3957
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@99
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@9c
    goto :goto_0

    #@9d
    .line 3959
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    #@9f
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v1

    #@a3
    if-nez v1, :cond_8

    #@a5
    .line 3960
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    #@a7
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v1

    #@ab
    .line 3959
    if-nez v1, :cond_8

    #@ad
    .line 3961
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    #@af
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v1

    #@b3
    .line 3959
    if-eqz v1, :cond_9

    #@b5
    .line 3962
    :cond_8
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@b7
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@ba
    move-result v1

    #@bb
    if-eqz v1, :cond_1

    #@bd
    .line 3963
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@bf
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap26(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 3965
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    #@c6
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v1

    #@ca
    if-eqz v1, :cond_1

    #@cc
    .line 3966
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@ce
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap7(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@d1
    move-result v1

    #@d2
    if-eqz v1, :cond_1

    #@d4
    .line 3967
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@d6
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d9
    goto/16 :goto_0
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 3900
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    #@4
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@7
    .line 3902
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    #@9
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@c
    .line 3904
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    #@e
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@11
    .line 3906
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    #@13
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@16
    .line 3909
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    #@18
    .line 3908
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b
    .line 3911
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    #@1d
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@20
    .line 3914
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    #@22
    .line 3913
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@25
    .line 3916
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    #@27
    .line 3915
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@2a
    .line 3918
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    #@2c
    .line 3917
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@2f
    .line 3920
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    #@31
    .line 3919
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@34
    .line 3899
    return-void
.end method
