.class public interface abstract Landroid/net/wifi/IInterfaceCreationInfoCallback;
.super Ljava/lang/Object;
.source "IInterfaceCreationInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub;,
        Landroid/net/wifi/IInterfaceCreationInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IInterfaceCreationInfoCallback"


# virtual methods
.method public abstract blacklist onResults(Z[I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
