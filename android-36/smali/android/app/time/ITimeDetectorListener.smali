.class public interface abstract Landroid/app/time/ITimeDetectorListener;
.super Ljava/lang/Object;
.source "ITimeDetectorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/ITimeDetectorListener$Stub;,
        Landroid/app/time/ITimeDetectorListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.time.ITimeDetectorListener"


# virtual methods
.method public abstract blacklist onChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
