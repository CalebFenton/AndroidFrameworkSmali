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
    .line 970
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
    .line 973
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@3
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set2(Lcom/android/ims/ImsManager;Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;

    #@6
    .line 974
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@8
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set3(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsUt;)Lcom/android/ims/ImsUt;

    #@b
    .line 975
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@d
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set0(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConfig;)Lcom/android/ims/ImsConfig;

    #@10
    .line 976
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@12
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-set1(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsEcbm;)Lcom/android/ims/ImsEcbm;

    #@15
    .line 978
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@17
    invoke-static {v1}, Lcom/android/ims/ImsManager;->-get0(Lcom/android/ims/ImsManager;)Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 979
    new-instance v0, Landroid/content/Intent;

    #@1f
    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    #@22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 980
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:phone_id"

    #@28
    iget-object v2, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@2a
    invoke-static {v2}, Lcom/android/ims/ImsManager;->-get1(Lcom/android/ims/ImsManager;)I

    #@2d
    move-result v2

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@31
    .line 981
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    #@33
    invoke-static {v1}, Lcom/android/ims/ImsManager;->-get0(Lcom/android/ims/ImsManager;)Landroid/content/Context;

    #@36
    move-result-object v1

    #@37
    new-instance v2, Landroid/content/Intent;

    #@39
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3c
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@3f
    .line 972
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
