.class public interface abstract Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;
.super Ljava/lang/Object;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DomainSelectionResolverProxy"
.end annotation


# virtual methods
.method public abstract blacklist getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.end method

.method public abstract blacklist isDomainSelectionSupported()Z
.end method
