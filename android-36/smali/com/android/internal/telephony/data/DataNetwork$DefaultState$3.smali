.class Lcom/android/internal/telephony/data/DataNetwork$DefaultState$3;
.super Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/concurrent/Executor;)V
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

    .line 1254
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$3;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onPreferredDataPhoneIdChanged(I)V
    .registers 4

    .line 1257
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$3;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    return-void
.end method
