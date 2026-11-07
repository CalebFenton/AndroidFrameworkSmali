.class public interface abstract Landroid/app/ondeviceintelligence/IProcessingSignal;
.super Ljava/lang/Object;
.source "IProcessingSignal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;,
        Landroid/app/ondeviceintelligence/IProcessingSignal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ondeviceintelligence.IProcessingSignal"


# virtual methods
.method public abstract blacklist sendSignal(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
