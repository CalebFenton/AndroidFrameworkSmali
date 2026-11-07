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
.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field greylist ticks:I

.field greylist ticksLeft:I


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    .line 245
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    .line 246
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 4

    .line 249
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 262
    .local v0, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 264
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    goto :goto_39

    .line 267
    :cond_c
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    .line 268
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 269
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->-$$Nest$mfireReliableResponseRetransmissionTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 270
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    .line 271
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    .line 275
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    const/16 v2, 0x40

    if-lt v1, v2, :cond_39

    .line 276
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    .line 277
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    sget-object v2, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 278
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimeoutTimer()V

    .line 284
    :cond_39
    :goto_39
    return-void
.end method
