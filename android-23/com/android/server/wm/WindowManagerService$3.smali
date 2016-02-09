.class final Lcom/android/server/wm/WindowManagerService$3;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$haveInputMethods:Z

.field final synthetic val$holder:[Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$im:Lcom/android/server/input/InputManagerService;

.field final synthetic val$onlyCore:Z

.field final synthetic val$showBootMsgs:Z


# direct methods
.method constructor <init>([Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 0
    .param p1, "val$holder"    # [Lcom/android/server/wm/WindowManagerService;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$im"    # Lcom/android/server/input/InputManagerService;
    .param p4, "val$haveInputMethods"    # Z
    .param p5, "val$showBootMsgs"    # Z
    .param p6, "val$onlyCore"    # Z

    #@0
    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$3;->val$context:Landroid/content/Context;

    #@4
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$3;->val$im:Lcom/android/server/input/InputManagerService;

    #@6
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$3;->val$haveInputMethods:Z

    #@8
    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService$3;->val$showBootMsgs:Z

    #@a
    iput-boolean p6, p0, Lcom/android/server/wm/WindowManagerService$3;->val$onlyCore:Z

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 873
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    #@2
    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$3;->val$context:Landroid/content/Context;

    #@6
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$3;->val$im:Lcom/android/server/input/InputManagerService;

    #@8
    .line 874
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$3;->val$haveInputMethods:Z

    #@a
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$3;->val$showBootMsgs:Z

    #@c
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService$3;->val$onlyCore:Z

    #@e
    .line 873
    const/4 v6, 0x0

    #@f
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/wm/WindowManagerService;)V

    #@12
    const/4 v1, 0x0

    #@13
    aput-object v0, v7, v1

    #@15
    .line 872
    return-void
.end method
