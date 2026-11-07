.class Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;
.super Ljava/lang/Object;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadRequest"
.end annotation


# instance fields
.field blacklist mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;

.field blacklist mForceDeactivateSim:Z

.field blacklist mPortIndex:I

.field blacklist mResolvedBundle:Landroid/os/Bundle;

.field blacklist mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field blacklist mSwitchAfterDownload:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
