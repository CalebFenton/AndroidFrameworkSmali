.class public interface abstract Landroid/app/ondeviceintelligence/ICancellationSignal;
.super Ljava/lang/Object;
.source "ICancellationSignal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/ICancellationSignal$Stub;,
        Landroid/app/ondeviceintelligence/ICancellationSignal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ondeviceintelligence.ICancellationSignal"


# virtual methods
.method public abstract blacklist cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
