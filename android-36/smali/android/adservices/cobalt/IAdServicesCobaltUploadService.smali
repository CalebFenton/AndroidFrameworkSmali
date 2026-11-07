.class public interface abstract Landroid/adservices/cobalt/IAdServicesCobaltUploadService;
.super Ljava/lang/Object;
.source "IAdServicesCobaltUploadService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub;,
        Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.cobalt.IAdServicesCobaltUploadService"


# virtual methods
.method public abstract blacklist uploadEncryptedCobaltEnvelope(Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
