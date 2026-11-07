.class public final synthetic Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/GsmCdmaPhone;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;ZLandroid/os/Message;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iput-boolean p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;->f$2:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;->f$1:Z

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;->f$2:Landroid/os/Message;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->$r8$lambda$ZdLqlaV3LPWXwF1E197ZecWFvYY(Lcom/android/internal/telephony/GsmCdmaPhone;ZLandroid/os/Message;)V

    return-void
.end method
