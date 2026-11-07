.class Lcom/android/internal/telephony/imsphone/ImsPhone$2;
.super Lcom/android/ims/ImsEcbmStateListener;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method public static synthetic blacklist $r8$lambda$0lorBTuqBDK62e-u1RRAmhQKx-c(Lcom/android/internal/telephony/imsphone/ImsPhone$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->lambda$onECBMExited$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HojycdmSDQFrVJFV8UR8SSDvdYA(Lcom/android/internal/telephony/imsphone/ImsPhone$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->lambda$onECBMEntered$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2054
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0, p2}, Lcom/android/ims/ImsEcbmStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onECBMEntered$0()V
    .registers 1

    .line 2060
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mhandleEnterEmergencyCallbackMode(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    return-void
.end method

.method private synthetic blacklist lambda$onECBMExited$1()V
    .registers 1

    .line 2069
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleExitEmergencyCallbackMode()V

    return-void
.end method


# virtual methods
.method public blacklist onECBMEntered(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 2057
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const-string v1, "onECBMEntered"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 2059
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone$2;)V

    invoke-static {v0, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist onECBMExited(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const-string v1, "onECBMExited"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 2068
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone$2;)V

    invoke-static {v0, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
