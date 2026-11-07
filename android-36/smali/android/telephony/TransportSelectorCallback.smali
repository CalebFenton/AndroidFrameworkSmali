.class public interface abstract Landroid/telephony/TransportSelectorCallback;
.super Ljava/lang/Object;
.source "TransportSelectorCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onCreated(Landroid/telephony/DomainSelector;)V
.end method

.method public abstract whitelist onSelectionTerminated(I)V
.end method

.method public abstract whitelist onWlanSelected(Z)V
.end method

.method public abstract whitelist onWwanSelected(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/WwanSelectorCallback;",
            ">;)V"
        }
    .end annotation
.end method
