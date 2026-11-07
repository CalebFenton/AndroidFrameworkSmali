.class public interface abstract Landroid/os/IStatsQueryCallback;
.super Ljava/lang/Object;
.source "IStatsQueryCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsQueryCallback$Stub;,
        Landroid/os/IStatsQueryCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IStatsQueryCallback"


# virtual methods
.method public abstract blacklist sendFailure(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendResults([Ljava/lang/String;[Ljava/lang/String;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
