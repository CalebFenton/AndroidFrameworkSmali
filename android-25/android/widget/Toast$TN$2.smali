.class Landroid/widget/Toast$TN$2;
.super Landroid/os/Handler;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Toast$TN;


# direct methods
.method constructor <init>(Landroid/widget/Toast$TN;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Toast$TN;

    #@0
    .prologue
    .line 341
    iput-object p1, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/os/IBinder;

    #@4
    .line 345
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    #@6
    invoke-virtual {v1, v0}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    #@9
    .line 343
    return-void
.end method
