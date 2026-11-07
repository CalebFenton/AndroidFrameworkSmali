.class public interface abstract Landroid/net/wifi/ITwtStatsListener;
.super Ljava/lang/Object;
.source "ITwtStatsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ITwtStatsListener$Stub;,
        Landroid/net/wifi/ITwtStatsListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ITwtStatsListener"


# virtual methods
.method public abstract blacklist onResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
