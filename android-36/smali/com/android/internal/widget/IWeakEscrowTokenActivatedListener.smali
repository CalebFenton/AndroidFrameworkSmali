.class public interface abstract Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
.super Ljava/lang/Object;
.source "IWeakEscrowTokenActivatedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;,
        Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IWeakEscrowTokenActivatedListener"


# virtual methods
.method public abstract blacklist onWeakEscrowTokenActivated(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
