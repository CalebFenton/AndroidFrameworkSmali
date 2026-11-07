.class public interface abstract Lcom/android/internal/policy/IShortcutService;
.super Ljava/lang/Object;
.source "IShortcutService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IShortcutService$Stub;,
        Lcom/android/internal/policy/IShortcutService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o notifyShortcutKeyPressed(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
