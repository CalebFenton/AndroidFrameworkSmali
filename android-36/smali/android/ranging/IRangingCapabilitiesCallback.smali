.class public interface abstract Landroid/ranging/IRangingCapabilitiesCallback;
.super Ljava/lang/Object;
.source "IRangingCapabilitiesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/IRangingCapabilitiesCallback$Stub;,
        Landroid/ranging/IRangingCapabilitiesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.ranging.IRangingCapabilitiesCallback"


# virtual methods
.method public abstract blacklist onRangingCapabilities(Landroid/ranging/RangingCapabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
