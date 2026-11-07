.class public abstract Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;
.super Lcom/android/internal/net/ipsec/ike/utils/State;
.source "AbstractSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ExceptionHandlerBase"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/State;-><init>()V

    return-void
.end method

.method private blacklist getCmdStr(I)Ljava/lang/String;
    .registers 4
    .param p1, "cmd"    # I

    .line 137
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 139
    return-object v0

    .line 142
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->getCmdString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_12

    .line 144
    return-object v0

    .line 148
    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected abstract blacklist cleanUpAndQuit(Ljava/lang/RuntimeException;)V
.end method

.method public final blacklist enter()V
    .registers 2

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->enterState()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 133
    goto :goto_8

    .line 131
    :catch_4
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 134
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    return-void
.end method

.method protected blacklist enterState()V
    .registers 1

    .line 181
    return-void
.end method

.method public final blacklist exit()V
    .registers 2

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->exitState()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 176
    goto :goto_8

    .line 174
    :catch_4
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 177
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    return-void
.end method

.method protected blacklist exitState()V
    .registers 1

    .line 189
    return-void
.end method

.method protected abstract blacklist getCmdString(I)Ljava/lang/String;
.end method

.method protected abstract blacklist getMetricsStateCode()I
.end method

.method public final blacklist processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 154
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;

    iget-boolean v1, v1, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIsClosing:Z

    if-eqz v1, :cond_32

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xca

    if-eq v1, v2, :cond_32

    .line 155
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    .line 157
    invoke-direct {p0, v3}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->getCmdStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " since this session is going to be closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 159
    return v0

    .line 161
    :cond_32
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->this$0:Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processStateMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->getCmdStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_54} :catch_55

    return v0

    .line 164
    :catch_55
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 166
    return v0
.end method

.method protected blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .line 184
    const/4 v0, 0x0

    return v0
.end method
