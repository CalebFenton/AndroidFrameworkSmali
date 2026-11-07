.class public interface abstract Landroid/app/IUidFrozenStateChangedCallback;
.super Ljava/lang/Object;
.source "IUidFrozenStateChangedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUidFrozenStateChangedCallback$Stub;,
        Landroid/app/IUidFrozenStateChangedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IUidFrozenStateChangedCallback"


# virtual methods
.method public abstract blacklist onUidFrozenStateChanged([I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
