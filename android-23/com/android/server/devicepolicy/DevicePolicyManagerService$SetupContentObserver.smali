.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupContentObserver"
.end annotation


# instance fields
.field private final mUserSetupComplete:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 6228
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    .line 6229
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 6226
    const-string/jumbo v0, "user_setup_complete"

    #@8
    .line 6225
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    #@e
    .line 6228
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 6238
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    #@2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 6239
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@a
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupComplete()V

    #@d
    .line 6237
    :cond_0
    return-void
.end method

.method register(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 6233
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@7
    .line 6232
    return-void
.end method
