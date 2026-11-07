.class Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;
.super Landroid/telephony/IIntegerConsumer$Stub;
.source "SatelliteModemInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->pollPendingSatelliteDatagrams(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

.field final synthetic blacklist val$message:Landroid/os/Message;


# direct methods
.method public static synthetic blacklist $r8$lambda$FlWy53PkkTTeLisVjHObbjNuaJo(Landroid/os/Message;I)V
    .registers 3

    const/4 v0, 0x0

    .line 927
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 921
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Landroid/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .registers 5

    .line 924
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromSatelliteError(I)I

    move-result p1

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollPendingDatagrams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 926
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;->val$message:Landroid/os/Message;

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12$$ExternalSyntheticLambda0;-><init>(Landroid/os/Message;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
