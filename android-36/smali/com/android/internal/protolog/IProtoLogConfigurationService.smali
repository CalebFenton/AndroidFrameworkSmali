.class public interface abstract Lcom/android/internal/protolog/IProtoLogConfigurationService;
.super Ljava/lang/Object;
.source "IProtoLogConfigurationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;,
        Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;,
        Lcom/android/internal/protolog/IProtoLogConfigurationService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.protolog.IProtoLogConfigurationService"


# virtual methods
.method public abstract blacklist registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
