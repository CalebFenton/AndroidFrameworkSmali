.class public interface abstract Landroid/window/IDisplayAreaOrganizerController;
.super Ljava/lang/Object;
.source "IDisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDisplayAreaOrganizerController$Stub;,
        Landroid/window/IDisplayAreaOrganizerController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IDisplayAreaOrganizerController"


# virtual methods
.method public abstract blacklist createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/IDisplayAreaOrganizer;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
