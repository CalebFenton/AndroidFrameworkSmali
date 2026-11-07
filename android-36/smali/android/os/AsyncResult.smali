.class public Landroid/os/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# instance fields
.field public greylist exception:Ljava/lang/Throwable;

.field public greylist result:Ljava/lang/Object;

.field public greylist userObj:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "uo"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 72
    iput-object p3, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 73
    return-void
.end method

.method public static greylist forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
    .registers 4
    .param p0, "m"    # Landroid/os/Message;

    .line 58
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 60
    .local v0, "ret":Landroid/os/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method public static greylist forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    .registers 5
    .param p0, "m"    # Landroid/os/Message;
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 44
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 46
    .local v0, "ret":Landroid/os/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    return-object v0
.end method
