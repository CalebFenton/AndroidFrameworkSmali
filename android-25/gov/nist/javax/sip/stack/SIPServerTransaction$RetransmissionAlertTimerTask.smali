.class Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetransmissionAlertTimerTask"
.end annotation


# instance fields
.field dialogId:Ljava/lang/String;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field ticks:I

.field ticksLeft:I


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 219
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 221
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    #@8
    .line 222
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    #@a
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    #@c
    .line 219
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 3

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    .line 227
    .local v0, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    #@8
    .line 228
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 229
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireRetransmissionTimer()V

    #@10
    .line 230
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    #@12
    mul-int/lit8 v1, v1, 0x2

    #@14
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    #@16
    .line 225
    :cond_0
    return-void
.end method
