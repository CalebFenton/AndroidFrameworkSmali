.class public interface abstract Landroid/net/wifi/WifiManager$TrafficStateCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrafficStateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$TrafficStateCallback$DataActivity;
    }
.end annotation


# static fields
.field public static final whitelist DATA_ACTIVITY_IN:I = 0x1

.field public static final whitelist DATA_ACTIVITY_INOUT:I = 0x3

.field public static final whitelist DATA_ACTIVITY_NONE:I = 0x0

.field public static final whitelist DATA_ACTIVITY_OUT:I = 0x2


# virtual methods
.method public abstract whitelist onStateChanged(I)V
.end method
