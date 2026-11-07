.class public interface abstract Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;
.super Ljava/lang/Object;
.source "TelephonyCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LinkCapacityEstimateChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onLinkCapacityEstimateChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation
.end method
