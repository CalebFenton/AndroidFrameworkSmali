.class Lcom/android/server/EntropyMixer$1;
.super Landroid/os/Handler;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method constructor <init>(Lcom/android/server/EntropyMixer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/EntropyMixer;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 77
    const-string/jumbo v0, "EntropyMixer"

    #@8
    const-string/jumbo v1, "Will not process invalid message"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 78
    return-void

    #@f
    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    #@11
    invoke-static {v0}, Lcom/android/server/EntropyMixer;->-wrap0(Lcom/android/server/EntropyMixer;)V

    #@14
    .line 81
    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    #@16
    invoke-static {v0}, Lcom/android/server/EntropyMixer;->-wrap2(Lcom/android/server/EntropyMixer;)V

    #@19
    .line 82
    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    #@1b
    invoke-static {v0}, Lcom/android/server/EntropyMixer;->-wrap1(Lcom/android/server/EntropyMixer;)V

    #@1e
    .line 75
    return-void
.end method
