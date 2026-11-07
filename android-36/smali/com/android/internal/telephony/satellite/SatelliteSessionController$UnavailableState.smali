.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 712
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering UnavailableState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 718
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnavailableState: receive msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " unexpectedly"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
