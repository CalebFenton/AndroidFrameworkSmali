.class Ljava/lang/UNIXProcess$3;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/UNIXProcess;->initStreams([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/lang/UNIXProcess;


# direct methods
.method constructor <init>(Ljava/lang/UNIXProcess;)V
    .locals 0
    .param p1, "this$0"    # Ljava/lang/UNIXProcess;

    #@0
    .prologue
    .line 170
    iput-object p1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 172
    iget-object v1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    #@2
    iget-object v2, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    #@4
    invoke-static {v2}, Ljava/lang/UNIXProcess;->-get0(Ljava/lang/UNIXProcess;)I

    #@7
    move-result v2

    #@8
    invoke-static {v1, v2}, Ljava/lang/UNIXProcess;->-wrap0(Ljava/lang/UNIXProcess;I)I

    #@b
    move-result v0

    #@c
    .line 173
    .local v0, "exitcode":I
    iget-object v1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    #@e
    invoke-virtual {v1, v0}, Ljava/lang/UNIXProcess;->processExited(I)V

    #@11
    .line 171
    return-void
.end method
