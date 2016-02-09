.class Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeState"
.end annotation


# static fields
.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4


# instance fields
.field private mLoopDetectCount:I

.field private mLoopDetectIndex:I

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    #@0
    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 323
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "SupplicantStateTracker"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "\n"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 324
    :cond_0
    iput v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    #@27
    .line 325
    iput v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    #@29
    .line 322
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 329
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    const-string/jumbo v2, "SupplicantStateTracker"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->getName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "\n"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 330
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    #@2f
    packed-switch v2, :pswitch_data_0

    #@32
    .line 353
    return v5

    #@33
    .line 332
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@35
    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    #@37
    .line 333
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@39
    .line 334
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_3

    #@3f
    .line 335
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    #@41
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@44
    move-result v3

    #@45
    if-le v2, v3, :cond_1

    #@47
    .line 336
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    #@49
    add-int/lit8 v2, v2, 0x1

    #@4b
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    #@4d
    .line 338
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    #@4f
    const/4 v3, 0x4

    #@50
    if-le v2, v3, :cond_2

    #@52
    .line 339
    const-string/jumbo v2, "SupplicantStateTracker"

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v4, "Supplicant loop detected, disabling network "

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 340
    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    #@63
    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 341
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@70
    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    #@72
    .line 342
    const/4 v4, 0x3

    #@73
    .line 341
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap1(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    #@76
    .line 344
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@79
    move-result v2

    #@7a
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    #@7c
    .line 345
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@7e
    .line 346
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@80
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-get2(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    #@83
    move-result v3

    #@84
    .line 345
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap2(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    #@87
    .line 355
    const/4 v2, 0x1

    #@88
    return v2

    #@89
    .line 349
    :cond_3
    return v5

    #@8a
    .line 330
    :pswitch_data_0
    .packed-switch 0x24006
        :pswitch_0
    .end packed-switch
.end method
