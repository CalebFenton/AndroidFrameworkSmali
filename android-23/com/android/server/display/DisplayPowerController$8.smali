.class Lcom/android/server/display/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "val$pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$8;->val$pw:Ljava/io/PrintWriter;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$8;->val$pw:Ljava/io/PrintWriter;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->-wrap1(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    #@7
    .line 1085
    return-void
.end method
