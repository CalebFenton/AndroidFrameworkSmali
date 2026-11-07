.class public interface abstract Landroid/os/incremental/IIncrementalServiceConnector;
.super Ljava/lang/Object;
.source "IIncrementalServiceConnector.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IIncrementalServiceConnector$Stub;,
        Landroid/os/incremental/IIncrementalServiceConnector$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.incremental.IIncrementalServiceConnector"


# virtual methods
.method public abstract blacklist setStorageParams(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
