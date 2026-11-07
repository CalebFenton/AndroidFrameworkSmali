.class public interface abstract Landroid/uwb/IUwbAdapterStateCallbacks;
.super Ljava/lang/Object;
.source "IUwbAdapterStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbAdapterStateCallbacks$Stub;,
        Landroid/uwb/IUwbAdapterStateCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.uwb.IUwbAdapterStateCallbacks"


# virtual methods
.method public abstract blacklist onAdapterStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
