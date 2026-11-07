.class Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;
.super Ljava/lang/Object;
.source "DatagramDispatcher.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventWaitForSimulatedPollDatagramsDelayTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/DatagramDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/DatagramDispatcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1100
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;->this$0:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Integer;)V
    .registers 4

    .line 1103
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;->this$0:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pollPendingSatelliteDatagrams result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/DatagramDispatcher;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1100
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
