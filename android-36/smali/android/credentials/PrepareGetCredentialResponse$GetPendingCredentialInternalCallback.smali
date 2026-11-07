.class public interface abstract Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/PrepareGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "GetPendingCredentialInternalCallback"
.end annotation


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist onPendingIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract blacklist onResponse(Landroid/credentials/GetCredentialResponse;)V
.end method
