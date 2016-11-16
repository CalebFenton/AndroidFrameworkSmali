.class public final Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptivePortalProbeResult"
.end annotation


# static fields
.field static final FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;


# instance fields
.field final detectUrl:Ljava/lang/String;

.field private final mHttpResponseCode:I

.field final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 429
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2
    const/16 v1, 0x257

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    #@7
    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@9
    .line 428
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpResponseCode"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 444
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@4
    .line 443
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "detectUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 438
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    #@5
    .line 439
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    #@7
    .line 440
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    #@9
    .line 437
    return-void
.end method


# virtual methods
.method isPortal()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 449
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    #@9
    const/16 v2, 0xc8

    #@b
    if-lt v1, v2, :cond_0

    #@d
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    #@f
    const/16 v2, 0x18f

    #@11
    if-gt v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method isSuccessful()Z
    .locals 2

    #@0
    .prologue
    .line 447
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    #@2
    const/16 v1, 0xcc

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method
