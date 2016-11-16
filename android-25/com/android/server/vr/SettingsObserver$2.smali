.class Lcom/android/server/vr/SettingsObserver$2;
.super Landroid/database/ContentObserver;
.source "SettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/SettingsObserver;

.field final synthetic val$settingUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/SettingsObserver;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$settingUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    #@2
    iput-object p3, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    #@4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 87
    if-eqz p2, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    #@4
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    #@c
    invoke-static {v0}, Lcom/android/server/vr/SettingsObserver;->-wrap0(Lcom/android/server/vr/SettingsObserver;)V

    #@f
    .line 86
    :cond_1
    return-void
.end method
