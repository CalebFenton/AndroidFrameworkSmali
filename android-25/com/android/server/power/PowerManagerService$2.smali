.class Lcom/android/server/power/PowerManagerService$2;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    .line 3080
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3083
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/4 v2, 0x7

    #@6
    invoke-static {v1, v2, v0}, Lcom/android/server/power/PowerManagerService;->-wrap21(Lcom/android/server/power/PowerManagerService;II)V

    #@9
    .line 3082
    return-void

    #@a
    .line 3083
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
