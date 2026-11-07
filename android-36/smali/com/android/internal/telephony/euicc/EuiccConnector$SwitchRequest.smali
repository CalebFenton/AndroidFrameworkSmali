.class Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;
.super Ljava/lang/Object;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchRequest"
.end annotation


# instance fields
.field blacklist mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;

.field blacklist mForceDeactivateSim:Z

.field blacklist mIccid:Ljava/lang/String;

.field blacklist mUsePortIndex:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
