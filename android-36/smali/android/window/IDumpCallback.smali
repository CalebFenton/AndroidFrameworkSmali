.class public interface abstract Landroid/window/IDumpCallback;
.super Ljava/lang/Object;
.source "IDumpCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDumpCallback$Stub;,
        Landroid/window/IDumpCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IDumpCallback"


# virtual methods
.method public abstract blacklist onDump(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
