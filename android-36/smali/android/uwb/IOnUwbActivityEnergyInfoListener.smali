.class public interface abstract Landroid/uwb/IOnUwbActivityEnergyInfoListener;
.super Ljava/lang/Object;
.source "IOnUwbActivityEnergyInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IOnUwbActivityEnergyInfoListener$Stub;,
        Landroid/uwb/IOnUwbActivityEnergyInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.uwb.IOnUwbActivityEnergyInfoListener"


# virtual methods
.method public abstract blacklist onUwbActivityEnergyInfo(Landroid/uwb/UwbActivityEnergyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
