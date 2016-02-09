.class public Lcom/android/internal/util/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private mDstState:Lcom/android/internal/util/IState;

.field private mInfo:Ljava/lang/String;

.field private mOrgState:Lcom/android/internal/util/IState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mState:Lcom/android/internal/util/IState;

.field private mTime:J

.field private mWhat:I


# direct methods
.method constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 469
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    #@6
    .line 468
    return-void
.end method


# virtual methods
.method public getDestState()Lcom/android/internal/util/IState;
    .locals 1

    #@0
    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    #@2
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOriginalState()Lcom/android/internal/util/IState;
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/util/IState;
    .locals 1

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    #@2
    return-object v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 493
    iget-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    #@2
    return-wide v0
.end method

.method public getWhat()J
    .locals 2

    #@0
    .prologue
    .line 500
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 534
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "time="

    #@8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 535
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@e
    move-result-object v0

    #@f
    .line 536
    .local v0, "c":Ljava/util/Calendar;
    iget-wide v4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    #@11
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@14
    .line 537
    const-string/jumbo v3, "%tm-%td %tH:%tM:%tS.%tL"

    #@17
    const/4 v4, 0x6

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    const/4 v5, 0x0

    #@1b
    aput-object v0, v4, v5

    #@1d
    const/4 v5, 0x1

    #@1e
    aput-object v0, v4, v5

    #@20
    const/4 v5, 0x2

    #@21
    aput-object v0, v4, v5

    #@23
    const/4 v5, 0x3

    #@24
    aput-object v0, v4, v5

    #@26
    const/4 v5, 0x4

    #@27
    aput-object v0, v4, v5

    #@29
    const/4 v5, 0x5

    #@2a
    aput-object v0, v4, v5

    #@2c
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 538
    const-string/jumbo v3, " processed="

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 539
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    #@3b
    if-nez v3, :cond_1

    #@3d
    const-string/jumbo v3, "<null>"

    #@40
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 540
    const-string/jumbo v3, " org="

    #@46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 541
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    #@4b
    if-nez v3, :cond_2

    #@4d
    const-string/jumbo v3, "<null>"

    #@50
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 542
    const-string/jumbo v3, " dest="

    #@56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 543
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    #@5b
    if-nez v3, :cond_3

    #@5d
    const-string/jumbo v3, "<null>"

    #@60
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 544
    const-string/jumbo v3, " what="

    #@66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 545
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    #@6b
    if-eqz v3, :cond_4

    #@6d
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    #@6f
    iget v4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    #@71
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    .line 546
    .local v2, "what":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_5

    #@7b
    .line 547
    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    #@7d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    .line 548
    const-string/jumbo v3, "(0x"

    #@83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 549
    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    #@88
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    .line 550
    const-string/jumbo v3, ")"

    #@92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    .line 554
    :goto_4
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    #@97
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9a
    move-result v3

    #@9b
    if-nez v3, :cond_0

    #@9d
    .line 555
    const-string/jumbo v3, " "

    #@a0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 556
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    #@a5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 558
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    return-object v3

    #@ad
    .line 539
    .end local v2    # "what":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    #@af
    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    goto :goto_0

    #@b4
    .line 541
    :cond_2
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    #@b6
    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    goto :goto_1

    #@bb
    .line 543
    :cond_3
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    #@bd
    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    goto :goto_2

    #@c2
    .line 545
    :cond_4
    const-string/jumbo v2, ""

    #@c5
    .restart local v2    # "what":Ljava/lang/String;
    goto :goto_3

    #@c6
    .line 552
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    goto :goto_4
.end method

.method public update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .locals 2
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "dstState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    #@2
    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    #@8
    .line 482
    if-eqz p2, :cond_0

    #@a
    iget v0, p2, Landroid/os/Message;->what:I

    #@c
    :goto_0
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    #@e
    .line 483
    iput-object p3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    #@10
    .line 484
    iput-object p4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    #@12
    .line 485
    iput-object p5, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    #@14
    .line 486
    iput-object p6, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    #@16
    .line 479
    return-void

    #@17
    .line 482
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method
