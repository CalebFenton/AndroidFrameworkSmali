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
.field final synthetic blacklist this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-$$Nest$fputmUceService(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)V

    .line 151
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-$$Nest$fgetmContext(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-$$Nest$fgetmContext(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_23
    return-void
.end method
