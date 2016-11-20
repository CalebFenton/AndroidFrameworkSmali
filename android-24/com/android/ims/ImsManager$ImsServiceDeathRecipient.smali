.class Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;

    #@0
    .prologue
    .line 1237
    iput-object p1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;-><init>(Lcom/android/ims/ImsManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1240
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@3
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set2(Lcom/android/ims/ImsManager;Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;

    #@6
    .line 1241
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@8
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set4(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsUt;)Lcom/android/ims/ImsUt;

    #@b
    .line 1242
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@d
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set0(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConfig;)Lcom/android/ims/ImsConfig;

    #@10
    .line 1243
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@12
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set1(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsEcbm;)Lcom/android/ims/ImsEcbm;

    #@15
    .line 1244
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@17
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set3(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsMultiEndpoint;)Lcom/android/ims/ImsMultiEndpoint;

    #@1a
    .line 1246
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@1c
    invoke-static {v1}, Lcom/android/ims/ImsManager;->-get0(Lcom/android/ims/ImsManager;)Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 1247
    new-instance v0, Landroid/content/Intent;

    #@24
    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    #@27
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2a
    .line 1248
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:phone_id"

    #@2d
    iget-object v2, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@2f
    invoke-static {v2}, Lcom/android/ims/ImsManager;->-get1(Lcom/android/ims/ImsManager;)I

    #@32
    move-result v2

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@36
    .line 1249
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@38
    invoke-static {v1}, Lcom/android/ims/ImsManager;->-get0(Lcom/android/ims/ImsManager;)Landroid/content/Context;

    #@3b
    move-result-object v1

    #@3c
    new-instance v2, Landroid/content/Intent;

    #@3e
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@41
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@44
    .line 1239
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
