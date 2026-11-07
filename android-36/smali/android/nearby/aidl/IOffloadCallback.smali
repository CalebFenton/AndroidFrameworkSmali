.class public interface abstract Landroid/nearby/aidl/IOffloadCallback;
.super Ljava/lang/Object;
.source "IOffloadCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/aidl/IOffloadCallback$Stub;,
        Landroid/nearby/aidl/IOffloadCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nearby.aidl.IOffloadCallback"


# virtual methods
.method public abstract blacklist onQueryComplete(Landroid/nearby/OffloadCapability;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
