.class public interface abstract Landroid/os/IThermalStatusListener;
.super Ljava/lang/Object;
.source "IThermalStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalStatusListener$Stub;,
        Landroid/os/IThermalStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IThermalStatusListener"


# virtual methods
.method public abstract blacklist onStatusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
