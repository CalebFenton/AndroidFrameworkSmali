.class Landroid/service/dreams/DreamService$DreamServiceWrapper$2;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$DreamServiceWrapper;->detach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/dreams/DreamService$DreamServiceWrapper;

    #@0
    .prologue
    .line 1117
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 1120
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$2;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    #@2
    iget-object v0, v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    #@4
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-wrap1(Landroid/service/dreams/DreamService;)V

    #@7
    .line 1119
    return-void
.end method
