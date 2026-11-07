.class Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "RadioOnStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onRetryTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 413
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 417
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
