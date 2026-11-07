.class public interface abstract Lcom/android/internal/app/IAppOpsNotedCallback;
.super Ljava/lang/Object;
.source "IAppOpsNotedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsNotedCallback$Stub;,
        Lcom/android/internal/app/IAppOpsNotedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsNotedCallback"


# virtual methods
.method public abstract blacklist opNoted(IILjava/lang/String;Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
