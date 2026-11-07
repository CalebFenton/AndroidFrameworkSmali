.class public interface abstract Landroid/app/contextualsearch/IContextualSearchCallback;
.super Ljava/lang/Object;
.source "IContextualSearchCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/IContextualSearchCallback$Stub;,
        Landroid/app/contextualsearch/IContextualSearchCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.contextualsearch.IContextualSearchCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/os/ParcelableException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/app/contextualsearch/ContextualSearchState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
