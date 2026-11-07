.class Landroid/net/CaptivePortal$2;
.super Landroid/net/IIntResultListener$Stub;
.source "CaptivePortal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/CaptivePortal;->setDelegateUid(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/net/CaptivePortal;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/CaptivePortal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 222
    iput p2, p0, Landroid/net/CaptivePortal$2;->val$uid:I

    iput-object p3, p0, Landroid/net/CaptivePortal$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/net/CaptivePortal$2;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/net/IIntResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V
    .registers 4
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 229
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-direct {v0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method static synthetic blacklist lambda$onResult$1(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 232
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 6
    .param p1, "resultCode"    # I

    .line 225
    if-eqz p1, :cond_32

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to set the delegate UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/CaptivePortal$2;->val$uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    invoke-static {p1}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/CaptivePortal$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/net/CaptivePortal$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/net/CaptivePortal$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1, v0}, Landroid/net/CaptivePortal$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 231
    .end local v0    # "msg":Ljava/lang/String;
    goto :goto_3e

    .line 232
    :cond_32
    iget-object v0, p0, Landroid/net/CaptivePortal$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/CaptivePortal$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/net/CaptivePortal$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/net/CaptivePortal$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 234
    :goto_3e
    return-void
.end method
