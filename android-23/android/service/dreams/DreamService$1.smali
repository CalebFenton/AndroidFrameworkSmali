.class Landroid/service/dreams/DreamService$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    #@0
    .prologue
    .line 1013
    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    #@2
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-get3(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    #@a
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-get4(Landroid/service/dreams/DreamService;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 1017
    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    #@12
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-get1(Landroid/service/dreams/DreamService;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    #@1a
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-get0(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "Calling onDreamingStarted()"

    #@21
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1018
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    #@26
    const/4 v1, 0x1

    #@27
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-set0(Landroid/service/dreams/DreamService;Z)Z

    #@2a
    .line 1019
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    #@2c
    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    #@2f
    .line 1015
    :cond_2
    return-void
.end method
