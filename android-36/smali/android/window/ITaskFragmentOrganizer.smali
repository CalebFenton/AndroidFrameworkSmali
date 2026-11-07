.class public interface abstract Landroid/window/ITaskFragmentOrganizer;
.super Ljava/lang/Object;
.source "ITaskFragmentOrganizer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizer$Stub;,
        Landroid/window/ITaskFragmentOrganizer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITaskFragmentOrganizer"


# virtual methods
.method public abstract blacklist onTransactionReady(Landroid/window/TaskFragmentTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
