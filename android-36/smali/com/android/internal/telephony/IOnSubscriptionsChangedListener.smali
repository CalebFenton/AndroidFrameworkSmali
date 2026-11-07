.class public interface abstract Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "IOnSubscriptionsChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;,
        Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onSubscriptionsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
