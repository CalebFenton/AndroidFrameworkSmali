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
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@0
    .prologue
    .line 58
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
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@1c
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-get0(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getAddress()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    #@27
    move-result v2

    #@28
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPullCall;->pullExternalCall(Ljava/lang/String;I)V

    #@2b
    .line 57
    return-void
.end method
