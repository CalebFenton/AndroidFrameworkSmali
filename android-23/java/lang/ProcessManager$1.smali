.class Ljava/lang/ProcessManager$1;
.super Ljava/lang/Thread;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/lang/ProcessManager;


# direct methods
.method constructor <init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljava/lang/ProcessManager;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Ljava/lang/ProcessManager$1;->this$0:Ljava/lang/ProcessManager;

    #@2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Ljava/lang/ProcessManager$1;->this$0:Ljava/lang/ProcessManager;

    #@2
    invoke-static {v0}, Ljava/lang/ProcessManager;->-wrap0(Ljava/lang/ProcessManager;)V

    #@5
    .line 57
    return-void
.end method
