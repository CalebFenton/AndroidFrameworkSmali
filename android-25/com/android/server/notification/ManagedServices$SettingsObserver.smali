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
.field private final mSecondarySettingsUri:Landroid/net/Uri;

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
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 795
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@3
    .line 796
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 792
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get0(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    #@b
    move-result-object v0

    #@c
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@e
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@14
    .line 797
    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->-get0(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    #@17
    move-result-object v0

    #@18
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 798
    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->-get0(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    #@1f
    move-result-object v0

    #@20
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@22
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecondarySettingsUri:Landroid/net/Uri;

    #@28
    .line 795
    :goto_0
    return-void

    #@29
    .line 800
    :cond_0
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecondarySettingsUri:Landroid/net/Uri;

    #@2b
    goto :goto_0
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
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 805
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@5
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v0

    #@b
    .line 806
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@d
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@10
    .line 808
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecondarySettingsUri:Landroid/net/Uri;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 809
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecondarySettingsUri:Landroid/net/Uri;

    #@16
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@19
    .line 812
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    #@1c
    .line 804
    return-void
.end method

.method private update(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 821
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    #@4
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 822
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->mSecondarySettingsUri:Landroid/net/Uri;

    #@c
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 821
    if-eqz v0, :cond_2

    #@12
    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@14
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@1a
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Setting changed: uri="

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 824
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@35
    const/4 v1, 0x0

    #@36
    invoke-static {v0, v1}, Lcom/android/server/notification/ManagedServices;->-wrap3(Lcom/android/server/notification/ManagedServices;Z)V

    #@39
    .line 825
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$SettingsObserver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@3b
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-wrap4(Lcom/android/server/notification/ManagedServices;)V

    #@3e
    .line 820
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
    .line 817
    invoke-direct {p0, p2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->update(Landroid/net/Uri;)V

    #@3
    .line 816
    return-void
.end method
