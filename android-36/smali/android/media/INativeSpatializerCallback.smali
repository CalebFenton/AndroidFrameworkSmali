.class public interface abstract Landroid/media/INativeSpatializerCallback;
.super Ljava/lang/Object;
.source "INativeSpatializerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/INativeSpatializerCallback$Stub;,
        Landroid/media/INativeSpatializerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.INativeSpatializerCallback"


# virtual methods
.method public abstract blacklist onLevelChanged(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOutputChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
