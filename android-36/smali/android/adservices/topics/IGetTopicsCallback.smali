.class public interface abstract Landroid/adservices/topics/IGetTopicsCallback;
.super Ljava/lang/Object;
.source "IGetTopicsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/topics/IGetTopicsCallback$Stub;,
        Landroid/adservices/topics/IGetTopicsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.topics.IGetTopicsCallback"


# virtual methods
.method public abstract blacklist onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/adservices/topics/GetTopicsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
