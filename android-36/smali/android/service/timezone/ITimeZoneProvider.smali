.class public interface abstract Landroid/service/timezone/ITimeZoneProvider;
.super Ljava/lang/Object;
.source "ITimeZoneProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/ITimeZoneProvider$Stub;,
        Landroid/service/timezone/ITimeZoneProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.timezone.ITimeZoneProvider"


# virtual methods
.method public abstract blacklist startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopUpdates()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
