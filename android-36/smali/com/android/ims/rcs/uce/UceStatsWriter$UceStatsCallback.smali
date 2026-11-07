.class public interface abstract Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;
.super Ljava/lang/Object;
.source "UceStatsWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceStatsWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UceStatsCallback"
.end annotation


# virtual methods
.method public abstract blacklist onImsRegistrationFeatureTagStats(ILjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist onImsRegistrationServiceDescStats(ILjava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist onPresenceNotifyEvent(IJLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onStoreCompleteImsRegistrationFeatureTagStats(I)V
.end method

.method public abstract blacklist onStoreCompleteImsRegistrationServiceDescStats(I)V
.end method

.method public abstract blacklist onSubscribeResponse(IJI)V
.end method

.method public abstract blacklist onSubscribeTerminated(IJLjava/lang/String;)V
.end method

.method public abstract blacklist onUceEvent(IIZII)V
.end method
