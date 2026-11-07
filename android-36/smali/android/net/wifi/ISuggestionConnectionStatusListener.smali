.class public interface abstract Landroid/net/wifi/ISuggestionConnectionStatusListener;
.super Ljava/lang/Object;
.source "ISuggestionConnectionStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ISuggestionConnectionStatusListener$Stub;,
        Landroid/net/wifi/ISuggestionConnectionStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ISuggestionConnectionStatusListener"


# virtual methods
.method public abstract blacklist onConnectionStatus(Landroid/net/wifi/WifiNetworkSuggestion;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
