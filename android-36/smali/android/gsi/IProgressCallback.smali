.class public interface abstract Landroid/gsi/IProgressCallback;
.super Ljava/lang/Object;
.source "IProgressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IProgressCallback$Stub;,
        Landroid/gsi/IProgressCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.gsi.IProgressCallback"


# virtual methods
.method public abstract blacklist onProgress(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
