.class public interface abstract Landroid/net/wifi/IScanResultsListener;
.super Ljava/lang/Object;
.source "IScanResultsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IScanResultsListener$Stub;,
        Landroid/net/wifi/IScanResultsListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IScanResultsListener"


# virtual methods
.method public abstract blacklist onScanResultsAvailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
