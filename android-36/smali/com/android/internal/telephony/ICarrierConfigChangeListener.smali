.class public interface abstract Lcom/android/internal/telephony/ICarrierConfigChangeListener;
.super Ljava/lang/Object;
.source "ICarrierConfigChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierConfigChangeListener$Stub;,
        Lcom/android/internal/telephony/ICarrierConfigChangeListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ICarrierConfigChangeListener"


# virtual methods
.method public abstract blacklist onCarrierConfigChanged(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
