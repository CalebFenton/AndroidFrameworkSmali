.class Lcom/android/server/dreams/DreamController$2;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;

    #@0
    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$2;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "DreamController"

    #@3
    const-string/jumbo v1, "Stubborn dream did not finish itself in the time allotted"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 87
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$2;->this$0:Lcom/android/server/dreams/DreamController;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    #@f
    .line 85
    return-void
.end method
