.class public interface abstract Lcom/android/internal/protolog/IProtoLogClient;
.super Ljava/lang/Object;
.source "IProtoLogClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/IProtoLogClient$Stub;,
        Lcom/android/internal/protolog/IProtoLogClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.protolog.IProtoLogClient"


# virtual methods
.method public abstract blacklist toggleLogcat(Z[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
