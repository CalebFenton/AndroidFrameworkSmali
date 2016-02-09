.class final Lcom/android/internal/util/AsyncChannel$DeathMonitor;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/util/AsyncChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$DeathMonitor;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$DeathMonitor;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-wrap0(Lcom/android/internal/util/AsyncChannel;I)V

    #@6
    .line 915
    return-void
.end method
