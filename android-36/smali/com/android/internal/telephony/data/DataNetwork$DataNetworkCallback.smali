.class public abstract Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataNetworkCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 876
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public abstract blacklist onAttachFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
.end method

.method public abstract blacklist onConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
.end method

.method public abstract blacklist onDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V
.end method

.method public abstract blacklist onHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V
.end method

.method public abstract blacklist onHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V
.end method

.method public abstract blacklist onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V
.end method

.method public abstract blacklist onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
.end method

.method public abstract blacklist onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
.end method

.method public abstract blacklist onQosSessionsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
.end method

.method public abstract blacklist onSetupDataFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
.end method

.method public abstract blacklist onSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V
.end method

.method public abstract blacklist onTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetwork;)V
.end method

.method public abstract blacklist onValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
.end method
