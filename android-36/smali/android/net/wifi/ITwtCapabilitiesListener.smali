.class public interface abstract Landroid/net/wifi/ITwtCapabilitiesListener;
.super Ljava/lang/Object;
.source "ITwtCapabilitiesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ITwtCapabilitiesListener$Stub;,
        Landroid/net/wifi/ITwtCapabilitiesListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ITwtCapabilitiesListener"


# virtual methods
.method public abstract blacklist onResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
