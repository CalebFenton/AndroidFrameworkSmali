.class public interface abstract Landroid/app/IRequestFinishCallback;
.super Ljava/lang/Object;
.source "IRequestFinishCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IRequestFinishCallback$Stub;,
        Landroid/app/IRequestFinishCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IRequestFinishCallback"


# virtual methods
.method public abstract blacklist requestFinish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
