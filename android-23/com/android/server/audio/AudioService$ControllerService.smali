.class Lcom/android/server/audio/AudioService$ControllerService;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerService"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$ControllerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 6175
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    .line 6176
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 6175
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    #@0
    .prologue
    .line 6185
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$ControllerService;->onChange(Z)V

    #@4
    .line 6186
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    #@6
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@9
    move-result-object v0

    #@a
    .line 6187
    const-string/jumbo v1, "volume_controller_service_component"

    #@d
    .line 6186
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@10
    move-result-object v1

    #@11
    .line 6187
    const/4 v2, 0x0

    #@12
    .line 6186
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@15
    .line 6184
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 6192
    iput v3, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    #@4
    .line 6193
    iput-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    #@6
    .line 6194
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    #@8
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@b
    move-result-object v2

    #@c
    .line 6195
    const-string/jumbo v3, "volume_controller_service_component"

    #@f
    .line 6194
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 6196
    .local v1, "setting":Ljava/lang/String;
    if-nez v1, :cond_0

    #@15
    return-void

    #@16
    .line 6198
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    #@1c
    .line 6199
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    #@1e
    if-nez v2, :cond_1

    #@20
    return-void

    #@21
    .line 6200
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    #@23
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2a
    move-result-object v2

    #@2b
    .line 6201
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    #@2d
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    const/4 v4, 0x0

    #@32
    .line 6200
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@35
    move-result-object v2

    #@36
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@38
    iput v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 6205
    :goto_0
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@3c
    if-eqz v2, :cond_2

    #@3e
    const-string/jumbo v2, "AudioService"

    #@41
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, "Reloaded controller service: "

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 6191
    :cond_2
    return-void

    #@59
    .line 6202
    :catch_0
    move-exception v0

    #@5a
    .line 6203
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AudioService"

    #@5d
    const-string/jumbo v3, "Error loading controller service"

    #@60
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 6181
    const-string/jumbo v0, "{mUid=%d,mComponent=%s}"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
