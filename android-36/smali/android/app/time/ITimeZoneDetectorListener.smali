.class public interface abstract Landroid/app/time/ITimeZoneDetectorListener;
.super Ljava/lang/Object;
.source "ITimeZoneDetectorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/ITimeZoneDetectorListener$Stub;,
        Landroid/app/time/ITimeZoneDetectorListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.time.ITimeZoneDetectorListener"


# virtual methods
.method public abstract blacklist onChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
