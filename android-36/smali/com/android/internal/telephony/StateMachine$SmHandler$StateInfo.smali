.class Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateInfo"
.end annotation


# instance fields
.field blacklist active:Z

.field final blacklist parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

.field final blacklist state:Lcom/android/internal/telephony/State;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)V
    .registers 4

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->active:Z

    .line 742
    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    .line 743
    iput-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-nez p0, :cond_29

    const-string p0, "null"

    goto :goto_2f

    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_2f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
