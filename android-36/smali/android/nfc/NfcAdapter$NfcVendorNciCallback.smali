.class public interface abstract Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NfcVendorNciCallback"
.end annotation


# virtual methods
.method public abstract whitelist onVendorNciNotification(II[B)V
.end method

.method public abstract whitelist onVendorNciResponse(II[B)V
.end method
