.class public interface abstract Landroid/content/pm/IPackageLoadingProgressCallback;
.super Ljava/lang/Object;
.source "IPackageLoadingProgressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageLoadingProgressCallback$Stub;,
        Landroid/content/pm/IPackageLoadingProgressCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageLoadingProgressCallback"


# virtual methods
.method public abstract blacklist onPackageLoadingProgressChanged(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
