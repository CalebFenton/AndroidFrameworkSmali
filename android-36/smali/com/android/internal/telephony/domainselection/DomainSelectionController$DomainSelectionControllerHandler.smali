.class final Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;
.super Landroid/os/Handler;
.source "DomainSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DomainSelectionControllerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    .line 216
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mloge(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 229
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/BarringInfo;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mupdateBarringInfo(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V

    return-void

    .line 224
    :cond_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionControllerHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mupdateServiceState(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    return-void
.end method
