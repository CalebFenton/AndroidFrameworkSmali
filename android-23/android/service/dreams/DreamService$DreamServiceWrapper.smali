.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method private constructor <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    #@0
    .prologue
    .line 1092
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    #@2
    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;)V

    #@3
    return-void
.end method


# virtual methods
.method public attach(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    #@2
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-get2(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;

    #@8
    invoke-direct {v1, p0, p1, p2}, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;Z)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 1094
    return-void
.end method

.method public detach()V
    .locals 2

    #@0
    .prologue
    .line 1105
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    #@2
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-get2(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;

    #@8
    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 1104
    return-void
.end method

.method public wakeUp()V
    .locals 2

    #@0
    .prologue
    .line 1115
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    #@2
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-get2(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$3;

    #@8
    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$3;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 1114
    return-void
.end method
