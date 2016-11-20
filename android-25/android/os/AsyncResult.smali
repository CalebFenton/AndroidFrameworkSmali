.class public Landroid/os/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# instance fields
.field public exception:Ljava/lang/Throwable;

.field public result:Ljava/lang/Object;

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "uo"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@5
    .line 65
    iput-object p2, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@7
    .line 66
    iput-object p3, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@9
    .line 62
    return-void
.end method

.method public static forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
    .locals 3
    .param p0, "m"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 53
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5
    invoke-direct {v0, v1, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 55
    .local v0, "ret":Landroid/os/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    .line 57
    return-object v0
.end method

.method public static forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    .locals 2
    .param p0, "m"    # Landroid/os/Message;
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/os/AsyncResult;

    #@2
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7
    .line 42
    .local v0, "ret":Landroid/os/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 44
    return-object v0
.end method
