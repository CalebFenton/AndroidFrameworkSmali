.class public interface abstract Landroid/net/wifi/WifiScanner$BssidListener;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BssidListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract whitelist onFound([Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract whitelist onLost([Landroid/net/wifi/ScanResult;)V
.end method
