.class public interface abstract Landroid/app/admin/IKeyguardClient;
.super Ljava/lang/Object;
.source "IKeyguardClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IKeyguardClient$Stub;,
        Landroid/app/admin/IKeyguardClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IKeyguardClient"


# virtual methods
.method public abstract blacklist onCreateKeyguardSurface(Landroid/os/IBinder;Landroid/app/admin/IKeyguardCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
