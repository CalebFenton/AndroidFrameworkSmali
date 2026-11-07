.class public interface abstract Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
.super Ljava/lang/Object;
.source "IWeakEscrowTokenRemovedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;,
        Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IWeakEscrowTokenRemovedListener"


# virtual methods
.method public abstract blacklist onWeakEscrowTokenRemoved(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
