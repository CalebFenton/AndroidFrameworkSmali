.class public interface abstract Landroid/telephony/WwanSelectorCallback;
.super Ljava/lang/Object;
.source "WwanSelectorCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onDomainSelected(IZ)V
.end method

.method public abstract whitelist onRequestEmergencyNetworkScan(Ljava/util/List;IZLandroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/EmergencyRegistrationResult;",
            ">;)V"
        }
    .end annotation
.end method
