.class public interface abstract Landroid/net/wifi/IScanDataListener;
.super Ljava/lang/Object;
.source "IScanDataListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IScanDataListener$Stub;,
        Landroid/net/wifi/IScanDataListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IScanDataListener"


# virtual methods
.method public abstract blacklist onResult(Landroid/net/wifi/WifiScanner$ScanData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
