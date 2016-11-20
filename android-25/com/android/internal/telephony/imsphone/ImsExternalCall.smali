.class public Lcom/android/internal/telephony/imsphone/ImsExternalCall;
.super Lcom/android/internal/telephony/Call;
.source "ImsExternalCall.java"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "connection"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mPhone:Lcom/android/internal/telephony/Phone;

    #@5
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 34
    return-void
.end method


# virtual methods
.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    return-void
.end method

.method public isMultiparty()Z
    .locals 1

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setActive()V
    .locals 1

    #@0
    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Call;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@5
    .line 62
    return-void
.end method

.method public setTerminated()V
    .locals 1

    #@0
    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Call;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@5
    .line 69
    return-void
.end method
