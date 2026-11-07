.class Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
.super Lcom/android/internal/telephony/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStart"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V
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
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->-$$Nest$mdecodeMessageParams(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-static {p0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->-$$Nest$fgetmStateCmdParamsReady(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_31

    .line 154
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateStart unexpected expecting START=1 got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_31
    :goto_31
    return v1
.end method
