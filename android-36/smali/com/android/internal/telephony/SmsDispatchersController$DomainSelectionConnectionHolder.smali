.class public Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;
.super Ljava/lang/Object;
.source "SmsDispatchersController.java"

# interfaces
.implements Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DomainSelectionConnectionHolder"
.end annotation


# instance fields
.field private blacklist mConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

.field private final blacklist mEmergency:Z

.field private final blacklist mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsDispatchersController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsDispatchersController;Z)V
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

    .line 307
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    .line 308
    iput-boolean p2, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mEmergency:Z

    return-void
.end method


# virtual methods
.method public blacklist addRequest(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 2

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist clearAllRequests()V
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public blacklist getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    return-object p0
.end method

.method public blacklist getPendingRequests()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    return-object p0
.end method

.method public blacklist isDomainSelectionRequested()Z
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isEmergency()Z
    .registers 1

    .line 339
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mEmergency:Z

    return p0
.end method

.method public blacklist onSelectionTerminated(I)V
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectionTerminated: emergency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mEmergency:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mlogd(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    const/16 v0, 0x14

    .line 370
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 369
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->mConnection:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    return-void
.end method
