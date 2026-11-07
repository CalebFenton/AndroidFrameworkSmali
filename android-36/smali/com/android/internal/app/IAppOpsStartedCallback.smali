.class public interface abstract Lcom/android/internal/app/IAppOpsStartedCallback;
.super Ljava/lang/Object;
.source "IAppOpsStartedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsStartedCallback$Stub;,
        Lcom/android/internal/app/IAppOpsStartedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsStartedCallback"


# virtual methods
.method public abstract blacklist opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
