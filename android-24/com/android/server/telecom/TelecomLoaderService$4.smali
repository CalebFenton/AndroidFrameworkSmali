.class Lcom/android/server/telecom/TelecomLoaderService$4;
.super Landroid/database/ContentObserver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;

.field final synthetic val$defaultDialerAppUri:Landroid/net/Uri;

.field final synthetic val$defaultSmsAppUri:Landroid/net/Uri;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/pm/PackageManagerInternal;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$defaultSmsAppUri"    # Landroid/net/Uri;
    .param p4, "val$packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p5, "val$defaultDialerAppUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@2
    iput-object p3, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    #@4
    iput-object p4, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@6
    iput-object p5, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    #@8
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@b
    .line 283
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 288
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@a
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x1

    #@f
    .line 287
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@12
    move-result-object v1

    #@13
    .line 289
    .local v1, "smsComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    #@15
    .line 290
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@17
    .line 291
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 290
    invoke-virtual {v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    #@1e
    .line 285
    .end local v1    # "smsComponent":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 293
    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    #@21
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 295
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@29
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    #@2c
    move-result-object v2

    #@2d
    .line 294
    invoke-static {v2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 296
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@33
    .line 297
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@35
    invoke-virtual {v2, v0, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    #@38
    .line 300
    :cond_2
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@3a
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@3c
    invoke-static {v2, v3, p3}, Lcom/android/server/telecom/TelecomLoaderService;->-wrap1(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V

    #@3f
    goto :goto_0
.end method
