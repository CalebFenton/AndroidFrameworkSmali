.class Landroid/telephony/ims/ImsService$2;
.super Ljava/lang/Object;
.source "ImsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsService;


# direct methods
.method public static synthetic blacklist $r8$lambda$QI6tvxESqai8PKdmmoyt5oe5zdY(Landroid/telephony/ims/ImsService$2;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsService$2;->lambda$binderDied$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/ImsService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/ImsService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 437
    iput-object p1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$binderDied$0()V
    .registers 2

    .line 442
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0}, Landroid/telephony/ims/ImsService;->-$$Nest$mreleaseResource(Landroid/telephony/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 440
    const-string v0, "ImsService"

    const-string v1, "IImsServiceControllerListener binder to framework has died. Cleaning up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    new-instance v1, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsService$2;)V

    const-string/jumbo v2, "releaseResource"

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/ImsService;->-$$Nest$mexecuteMethodAsync(Landroid/telephony/ims/ImsService;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 443
    return-void
.end method
