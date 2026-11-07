.class public interface abstract Landroid/net/wifi/IScanResultsCallback;
.super Ljava/lang/Object;
.source "IScanResultsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IScanResultsCallback$Stub;,
        Landroid/net/wifi/IScanResultsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IScanResultsCallback"


# virtual methods
.method public abstract blacklist onScanResultsAvailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
