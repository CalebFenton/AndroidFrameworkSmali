.class public interface abstract Lcom/android/internal/app/IEphemeralResolver;
.super Ljava/lang/Object;
.source "IEphemeralResolver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IEphemeralResolver$Stub;
    }
.end annotation


# virtual methods
.method public abstract getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
