.class Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateInfo"
.end annotation


# instance fields
.field blacklist active:Z

.field final blacklist parentStateInfo:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

.field final blacklist state:Lcom/android/wifi/x/com/android/internal/util/State;


# direct methods
.method constructor blacklist <init>(Lcom/android/wifi/x/com/android/internal/util/State;Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .registers 4
    .param p1, "state"    # Lcom/android/wifi/x/com/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 742
    iput-object p1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/wifi/x/com/android/internal/util/State;

    .line 743
    iput-object p2, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 744
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

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/wifi/x/com/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/wifi/x/com/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_2e

    const-string v1, "null"

    goto :goto_36

    :cond_2e
    iget-object v1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v1, v1, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/wifi/x/com/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/wifi/x/com/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    return-object v0
.end method
