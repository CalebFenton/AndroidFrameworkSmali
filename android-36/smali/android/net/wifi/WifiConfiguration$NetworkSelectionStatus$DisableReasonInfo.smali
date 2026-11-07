.class public final Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableReasonInfo"
.end annotation


# static fields
.field public static final blacklist PERMANENT_DISABLE_TIMEOUT:I = -0x1


# instance fields
.field public final blacklist mDisableThreshold:I

.field public final blacklist mDisableTimeoutMillis:I

.field public final blacklist mReasonStr:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "reasonStr"    # Ljava/lang/String;
    .param p2, "disableThreshold"    # I
    .param p3, "disableTimeoutMillis"    # I

    .line 2323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2324
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mReasonStr:Ljava/lang/String;

    .line 2325
    iput p2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mDisableThreshold:I

    .line 2326
    iput p3, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mDisableTimeoutMillis:I

    .line 2327
    return-void
.end method
