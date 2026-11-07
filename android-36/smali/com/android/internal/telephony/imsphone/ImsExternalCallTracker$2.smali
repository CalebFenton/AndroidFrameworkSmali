.class Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyPreciseCallStateChanged()V
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public blacklist notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method
