.class public interface abstract Landroid/provider/IMPCancellationSignal;
.super Ljava/lang/Object;
.source "IMPCancellationSignal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/IMPCancellationSignal$Stub;,
        Landroid/provider/IMPCancellationSignal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.IMPCancellationSignal"


# virtual methods
.method public abstract blacklist cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
