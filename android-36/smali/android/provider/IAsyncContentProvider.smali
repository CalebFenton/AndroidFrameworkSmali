.class public interface abstract Landroid/provider/IAsyncContentProvider;
.super Ljava/lang/Object;
.source "IAsyncContentProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/IAsyncContentProvider$Stub;,
        Landroid/provider/IAsyncContentProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.IAsyncContentProvider"


# virtual methods
.method public abstract blacklist openMedia(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
