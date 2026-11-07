.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalConnectionListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPullExternalCall: connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-$$Nest$fgetmCallPuller(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;

    move-result-object v0

    if-nez v0, :cond_24

    .line 95
    const-string p0, "onPullExternalCall : No call puller defined"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-$$Nest$fgetmCallPuller(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v1

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result p1

    .line 98
    invoke-interface {p0, v0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPullCall;->pullExternalCall(Ljava/lang/String;II)V

    return-void
.end method
