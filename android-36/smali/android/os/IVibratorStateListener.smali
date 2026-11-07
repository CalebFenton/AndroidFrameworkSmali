.class public interface abstract Landroid/os/IVibratorStateListener;
.super Ljava/lang/Object;
.source "IVibratorStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorStateListener$Stub;,
        Landroid/os/IVibratorStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorStateListener"


# virtual methods
.method public abstract blacklist onVibrating(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
