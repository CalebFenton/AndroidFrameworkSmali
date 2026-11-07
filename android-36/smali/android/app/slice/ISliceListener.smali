.class public interface abstract Landroid/app/slice/ISliceListener;
.super Ljava/lang/Object;
.source "ISliceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/ISliceListener$Stub;,
        Landroid/app/slice/ISliceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onSliceUpdated(Landroid/app/slice/Slice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
