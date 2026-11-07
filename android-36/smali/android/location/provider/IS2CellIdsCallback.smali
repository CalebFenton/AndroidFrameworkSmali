.class public interface abstract Landroid/location/provider/IS2CellIdsCallback;
.super Ljava/lang/Object;
.source "IS2CellIdsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IS2CellIdsCallback$Stub;,
        Landroid/location/provider/IS2CellIdsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.provider.IS2CellIdsCallback"


# virtual methods
.method public abstract blacklist onError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult([J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
