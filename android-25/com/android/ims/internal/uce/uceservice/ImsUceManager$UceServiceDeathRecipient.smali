.class Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsUceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UceServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V

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
    .line 178
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@3
    invoke-static {v1, v2}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-set0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@6
    .line 180
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@8
    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-get0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 181
    new-instance v0, Landroid/content/Intent;

    #@10
    const-string/jumbo v1, "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

    #@13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:phone_id"

    #@19
    iget-object v2, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@1b
    invoke-static {v2}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-get1(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@22
    .line 183
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    #@24
    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-get0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    #@27
    move-result-object v1

    #@28
    new-instance v2, Landroid/content/Intent;

    #@2a
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@2d
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@30
    .line 176
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
