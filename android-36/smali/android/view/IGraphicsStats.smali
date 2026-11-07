.class public interface abstract Landroid/view/IGraphicsStats;
.super Ljava/lang/Object;
.source "IGraphicsStats.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IGraphicsStats$Stub;,
        Landroid/view/IGraphicsStats$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
