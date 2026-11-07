.class public interface abstract Landroid/os/IPullAtomCallback;
.super Ljava/lang/Object;
.source "IPullAtomCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPullAtomCallback$Stub;,
        Landroid/os/IPullAtomCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IPullAtomCallback"


# virtual methods
.method public abstract blacklist onPullAtom(ILandroid/os/IPullAtomResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
