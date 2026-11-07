.class public interface abstract Landroid/os/IThermalHeadroomListener;
.super Ljava/lang/Object;
.source "IThermalHeadroomListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalHeadroomListener$Stub;,
        Landroid/os/IThermalHeadroomListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IThermalHeadroomListener"


# virtual methods
.method public abstract blacklist onHeadroomChange(FFI[F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
