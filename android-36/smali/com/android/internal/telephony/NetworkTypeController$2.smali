.class Lcom/android/internal/telephony/NetworkTypeController$2;
.super Ljava/lang/Object;
.source "NetworkTypeController.java"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$2;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCarrierConfigChanged(IIII)V
    .registers 5

    .line 168
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController$2;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_12

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$2;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_12
    return-void
.end method
