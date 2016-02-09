.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Thread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2299
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$4;->val$message:Ljava/lang/String;

    #@4
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 2302
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$message:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method
