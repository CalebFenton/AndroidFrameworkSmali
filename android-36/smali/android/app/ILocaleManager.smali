.class public interface abstract Landroid/app/ILocaleManager;
.super Ljava/lang/Object;
.source "ILocaleManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ILocaleManager$Stub;,
        Landroid/app/ILocaleManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ILocaleManager"


# virtual methods
.method public abstract blacklist getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSystemLocales()Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
