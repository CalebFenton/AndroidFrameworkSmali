.class Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;
.super Lcom/android/internal/telephony/State;
.source "DemoSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/DemoSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerOffState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/DemoSimulator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/DemoSimulator;Lcom/android/internal/telephony/satellite/DemoSimulator-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;-><init>(Lcom/android/internal/telephony/satellite/DemoSimulator;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    const-string v0, "Entering PowerOffState"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$000(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    const-string v0, "Exiting PowerOffState"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$100(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerOffState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/DemoSimulator;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$200(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    .line 115
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    goto :goto_2d

    .line 117
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :goto_2d
    return v0
.end method
