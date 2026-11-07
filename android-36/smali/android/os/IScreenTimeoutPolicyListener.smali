.class public interface abstract Landroid/os/IScreenTimeoutPolicyListener;
.super Ljava/lang/Object;
.source "IScreenTimeoutPolicyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IScreenTimeoutPolicyListener$Stub;,
        Landroid/os/IScreenTimeoutPolicyListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IScreenTimeoutPolicyListener"


# virtual methods
.method public abstract blacklist onScreenTimeoutPolicyChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
