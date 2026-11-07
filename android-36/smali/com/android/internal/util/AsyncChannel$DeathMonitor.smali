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
.field final synthetic blacklist this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/AsyncChannel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 947
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$DeathMonitor;->this$0:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 951
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$DeathMonitor;->this$0:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-$$Nest$mreplyDisconnected(Lcom/android/internal/util/AsyncChannel;I)V

    .line 952
    return-void
.end method
