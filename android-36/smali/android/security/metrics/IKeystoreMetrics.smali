.class public interface abstract Landroid/security/metrics/IKeystoreMetrics;
.super Ljava/lang/Object;
.source "IKeystoreMetrics.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/metrics/IKeystoreMetrics$Stub;,
        Landroid/security/metrics/IKeystoreMetrics$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.metrics.IKeystoreMetrics"


# virtual methods
.method public abstract blacklist pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
