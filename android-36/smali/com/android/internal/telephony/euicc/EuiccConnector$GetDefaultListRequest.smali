.class Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;
.super Ljava/lang/Object;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetDefaultListRequest"
.end annotation


# instance fields
.field blacklist mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;

.field blacklist mForceDeactivateSim:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
