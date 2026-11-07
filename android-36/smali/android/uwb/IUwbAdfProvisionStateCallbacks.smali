.class public interface abstract Landroid/uwb/IUwbAdfProvisionStateCallbacks;
.super Ljava/lang/Object;
.source "IUwbAdfProvisionStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbAdfProvisionStateCallbacks$Stub;,
        Landroid/uwb/IUwbAdfProvisionStateCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.uwb.IUwbAdfProvisionStateCallbacks"


# virtual methods
.method public abstract blacklist onProfileAdfsProvisionFailed(ILandroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onProfileAdfsProvisioned(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
