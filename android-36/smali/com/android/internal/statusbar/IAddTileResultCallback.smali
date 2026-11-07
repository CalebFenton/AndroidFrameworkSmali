.class public interface abstract Lcom/android/internal/statusbar/IAddTileResultCallback;
.super Ljava/lang/Object;
.source "IAddTileResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;,
        Lcom/android/internal/statusbar/IAddTileResultCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IAddTileResultCallback"


# virtual methods
.method public abstract blacklist onTileRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
