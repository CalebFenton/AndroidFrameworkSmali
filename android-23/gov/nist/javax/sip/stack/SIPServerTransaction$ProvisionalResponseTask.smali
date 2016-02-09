.class Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionalResponseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field ticks:I

.field ticksLeft:I


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 243
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 244
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    #@8
    .line 245
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    #@a
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    #@c
    .line 243
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 3

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    .line 262
    .local v0, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 264
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    #@b
    .line 248
    :cond_0
    :goto_0
    return-void

    #@c
    .line 267
    :cond_1
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    #@12
    .line 268
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    #@14
    const/4 v2, -0x1

    #@15
    if-ne v1, v2, :cond_0

    #@17
    .line 269
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->-wrap1(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@1a
    .line 270
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    #@1c
    mul-int/lit8 v1, v1, 0x2

    #@1e
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    #@20
    .line 271
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    #@22
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    #@24
    .line 275
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    #@26
    const/16 v2, 0x40

    #@28
    if-lt v1, v2, :cond_0

    #@2a
    .line 276
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    #@2d
    .line 277
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2f
    sget-object v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    #@31
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@34
    .line 278
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@36
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimeoutTimer()V

    #@39
    goto :goto_0
.end method
