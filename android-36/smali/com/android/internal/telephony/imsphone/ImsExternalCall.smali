.class public Lcom/android/internal/telephony/imsphone/ImsExternalCall;
.super Lcom/android/internal/telephony/Call;
.source "ImsExternalCall.java"


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor greylist-max-r <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 38
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Call;->addConnection(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method


# virtual methods
.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public blacklist hangup()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist hangup(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist isMultiparty()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setActive()V
    .registers 2

    .line 66
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Call;->setState(Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist setTerminated()V
    .registers 2

    .line 73
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Call;->setState(Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method
