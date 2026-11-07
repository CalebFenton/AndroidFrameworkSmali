.class public interface abstract Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;
.super Ljava/lang/Object;
.source "IAndroidFuture.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture$Stub;,
        Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.permission.jarjar.com.android.internal.infra.IAndroidFuture"


# virtual methods
.method public abstract blacklist complete(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
