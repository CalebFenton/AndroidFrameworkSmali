.class public interface abstract Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;
.super Ljava/lang/Object;
.source "EuiccConnector.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetDefaultListCommandCallback"
.end annotation


# virtual methods
.method public abstract blacklist onGetDefaultListComplete(ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
.end method
