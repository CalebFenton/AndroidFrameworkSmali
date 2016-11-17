.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    #@0
    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 6
    .param p1, "status"    # I

    #@0
    .prologue
    const/16 v1, 0x64

    #@2
    .line 677
    if-ltz p1, :cond_1

    #@4
    if-ge p1, v1, :cond_1

    #@6
    .line 679
    int-to-double v2, p1

    #@7
    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    #@9
    mul-double/2addr v2, v4

    #@a
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    #@c
    div-double/2addr v2, v4

    #@d
    double-to-int p1, v2

    #@e
    .line 680
    add-int/lit8 p1, p1, 0x14

    #@10
    .line 681
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    #@12
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    #@15
    move-result-object v1

    #@16
    .line 682
    const v2, 0x1040119

    #@19
    .line 681
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1c
    move-result-object v0

    #@1d
    .line 683
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    #@20
    move-result-object v1

    #@21
    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    #@24
    .line 676
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    #@25
    .line 684
    :cond_1
    if-ne p1, v1, :cond_0

    #@27
    .line 685
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    #@29
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    #@2c
    move-result-object v1

    #@2d
    .line 686
    const v2, 0x104011a

    #@30
    .line 685
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@33
    move-result-object v0

    #@34
    .line 687
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    #@37
    move-result-object v1

    #@38
    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    #@3b
    goto :goto_0
.end method
