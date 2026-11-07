.class final Lcom/android/internal/telephony/AsyncChannel$DeathMonitor;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/AsyncChannel;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/AsyncChannel;)V
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
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncChannel$DeathMonitor;->this$0:Lcom/android/internal/telephony/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 2

    .line 951
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncChannel$DeathMonitor;->this$0:Lcom/android/internal/telephony/AsyncChannel;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/AsyncChannel;->-$$Nest$mreplyDisconnected(Lcom/android/internal/telephony/AsyncChannel;I)V

    return-void
.end method
