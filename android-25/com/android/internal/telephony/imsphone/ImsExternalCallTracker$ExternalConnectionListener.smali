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
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@0
    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "ImsExternalCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onPullExternalCall: connection = "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@1c
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-get0(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@1f
    move-result-object v0

    #@20
    if-nez v0, :cond_0

    #@22
    .line 88
    const-string/jumbo v0, "ImsExternalCallTracker"

    #@25
    const-string/jumbo v1, "onPullExternalCall : No call puller defined"

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 89
    return-void

    #@2c
    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@2e
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-get0(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getAddress()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    #@39
    move-result v2

    #@3a
    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@3d
    move-result v3

    #@3e
    .line 91
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPullCall;->pullExternalCall(Ljava/lang/String;II)V

    #@41
    .line 85
    return-void
.end method
