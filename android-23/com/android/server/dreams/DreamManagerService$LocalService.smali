.class final Lcom/android/server/dreams/DreamManagerService$LocalService;
.super Landroid/service/dreams/DreamManagerInternal;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    #@0
    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-direct {p0}, Landroid/service/dreams/DreamManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public isDreaming()Z
    .locals 1

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-wrap3(Lcom/android/server/dreams/DreamManagerService;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startDream(Z)V
    .locals 1
    .param p1, "doze"    # Z

    #@0
    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap12(Lcom/android/server/dreams/DreamManagerService;Z)V

    #@5
    .line 628
    return-void
.end method

.method public stopDream(Z)V
    .locals 1
    .param p1, "immediate"    # Z

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap14(Lcom/android/server/dreams/DreamManagerService;Z)V

    #@5
    .line 633
    return-void
.end method
