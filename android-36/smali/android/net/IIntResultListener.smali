.class public interface abstract Landroid/net/IIntResultListener;
.super Ljava/lang/Object;
.source "IIntResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIntResultListener$Stub;,
        Landroid/net/IIntResultListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.IIntResultListener"


# virtual methods
.method public abstract blacklist onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
