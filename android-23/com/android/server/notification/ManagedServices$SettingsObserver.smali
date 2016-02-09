.class Lcom/android/server/notification/ManagedServices$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSecureSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/ManagedServices$SettingsObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->observe()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@2
    .line 605
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 602
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@7
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get0(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    #@a
    move-result-object v0

    #@b
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@d
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@13
    .line 604
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$SettingsObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method private observe()V
    .locals 4

    #@0
    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@2
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 610
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@a
    .line 611
    const/4 v2, 0x0

    #@b
    const/4 v3, -0x1

    #@c
    .line 610
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@f
    .line 612
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    #@13
    .line 608
    return-void
.end method

.method private update(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 621
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@4
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@c
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@12
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Setting changed: mSecureSettingsUri="

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 623
    const-string/jumbo v2, " / uri="

    #@29
    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@3a
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-wrap3(Lcom/android/server/notification/ManagedServices;)V

    #@3d
    .line 620
    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 617
    invoke-direct {p0, p2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    #@3
    .line 616
    return-void
.end method
