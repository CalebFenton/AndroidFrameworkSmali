.class public interface abstract Landroid/security/advancedprotection/IAdvancedProtectionCallback;
.super Ljava/lang/Object;
.source "IAdvancedProtectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/advancedprotection/IAdvancedProtectionCallback$Stub;,
        Landroid/security/advancedprotection/IAdvancedProtectionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.advancedprotection.IAdvancedProtectionCallback"


# virtual methods
.method public abstract blacklist onAdvancedProtectionChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
