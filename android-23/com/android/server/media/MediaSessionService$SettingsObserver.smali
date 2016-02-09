.class final Lcom/android/server/media/MediaSessionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSecureSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->observe()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    #@0
    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    .line 620
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 617
    const-string/jumbo v0, "enabled_notification_listeners"

    #@9
    .line 616
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@f
    .line 619
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$SettingsObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;)V

    #@3
    return-void
.end method

.method private observe()V
    .locals 4

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@8
    .line 625
    const/4 v2, 0x0

    #@9
    const/4 v3, -0x1

    #@a
    .line 624
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@d
    .line 623
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-wrap7(Lcom/android/server/media/MediaSessionService;)V

    #@5
    .line 629
    return-void
.end method
