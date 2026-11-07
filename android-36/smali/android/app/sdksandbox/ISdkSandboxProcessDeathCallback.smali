.class public interface abstract Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
.super Ljava/lang/Object;
.source "ISdkSandboxProcessDeathCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback$Stub;,
        Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.sdksandbox.ISdkSandboxProcessDeathCallback"


# virtual methods
.method public abstract blacklist onSdkSandboxDied()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
