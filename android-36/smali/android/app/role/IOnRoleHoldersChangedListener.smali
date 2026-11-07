.class public interface abstract Landroid/app/role/IOnRoleHoldersChangedListener;
.super Ljava/lang/Object;
.source "IOnRoleHoldersChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/role/IOnRoleHoldersChangedListener$Stub;,
        Landroid/app/role/IOnRoleHoldersChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.role.IOnRoleHoldersChangedListener"


# virtual methods
.method public abstract blacklist onRoleHoldersChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
