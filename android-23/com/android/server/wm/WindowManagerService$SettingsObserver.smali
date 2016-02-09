.class final Lcom/android/server/wm/WindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mShowImeWithHardKeyboardUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 571
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4
    .line 572
    new-instance v1, Landroid/os/Handler;

    #@6
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@9
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@c
    .line 566
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    #@f
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@12
    move-result-object v1

    #@13
    .line 565
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    #@15
    .line 569
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    #@18
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1b
    move-result-object v1

    #@1c
    .line 568
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    #@1e
    .line 573
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@23
    move-result-object v0

    #@24
    .line 574
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    #@26
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@29
    .line 576
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    #@2b
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@2e
    .line 571
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 583
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->updateShowImeWithHardKeyboard()V

    #@d
    .line 581
    :cond_0
    :goto_0
    return-void

    #@e
    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    #@10
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 585
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@18
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    #@1b
    goto :goto_0
.end method
