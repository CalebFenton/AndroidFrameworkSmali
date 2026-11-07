.class public interface abstract Lcom/android/internal/telephony/ISatelliteStateChangeListener;
.super Ljava/lang/Object;
.source "ISatelliteStateChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISatelliteStateChangeListener$Stub;,
        Lcom/android/internal/telephony/ISatelliteStateChangeListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISatelliteStateChangeListener"


# virtual methods
.method public abstract blacklist onSatelliteEnabledStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
