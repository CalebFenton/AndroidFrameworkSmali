.class public interface abstract Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
.super Ljava/lang/Object;
.source "IUndoMediaTransferCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;,
        Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IUndoMediaTransferCallback"


# virtual methods
.method public abstract blacklist onUndoTriggered()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
