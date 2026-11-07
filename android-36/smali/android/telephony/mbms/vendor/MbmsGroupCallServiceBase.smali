.class public Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;
.super Landroid/app/Service;
.source "MbmsGroupCallServiceBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mInterface:Landroid/os/IBinder;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;)V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->mInterface:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist dispose(I)V
    .registers 4
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist initialize(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;I)I
    .registers 5
    .param p1, "callback"    # Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onAppCallbackDied(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "subscriptionId"    # I

    .line 269
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->mInterface:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/GroupCallCallback;)I
    .registers 9
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .param p6, "callback"    # Landroid/telephony/mbms/GroupCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/mbms/GroupCallCallback;",
            ")I"
        }
    .end annotation

    .line 219
    .local p4, "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopGroupCall(IJ)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p4, "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
