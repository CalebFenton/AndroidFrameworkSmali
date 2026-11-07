.class public interface abstract Landroid/permission/IOnPermissionsChangeListener;
.super Ljava/lang/Object;
.source "IOnPermissionsChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IOnPermissionsChangeListener$Stub;,
        Landroid/permission/IOnPermissionsChangeListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.permission.IOnPermissionsChangeListener"


# virtual methods
.method public abstract blacklist onPermissionsChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
