.class public interface abstract Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;
.super Ljava/lang/Object;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/CellularNetworkValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValidationCallback"
.end annotation


# virtual methods
.method public abstract blacklist onNetworkAvailable(Landroid/net/Network;I)V
.end method

.method public abstract blacklist onValidationDone(ZI)V
.end method
