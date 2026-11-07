.class public Landroid/net/wifi/WifiScanner$BssidInfo;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BssidInfo"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist bssid:Ljava/lang/String;

.field public whitelist frequencyHint:I

.field public whitelist high:I

.field public whitelist low:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
