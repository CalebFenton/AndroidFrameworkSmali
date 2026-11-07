.class public interface abstract Landroid/app/contextualsearch/IContextualSearchManager;
.super Ljava/lang/Object;
.source "IContextualSearchManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/IContextualSearchManager$Stub;,
        Landroid/app/contextualsearch/IContextualSearchManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.contextualsearch.IContextualSearchManager"


# virtual methods
.method public abstract blacklist getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startContextualSearch(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startContextualSearchForForegroundApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
