.class public interface abstract Landroid/content/res/IResourcesManager;
.super Ljava/lang/Object;
.source "IResourcesManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/IResourcesManager$Stub;,
        Landroid/content/res/IResourcesManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.res.IResourcesManager"


# virtual methods
.method public abstract blacklist dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
