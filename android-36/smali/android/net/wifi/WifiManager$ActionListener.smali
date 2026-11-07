.class public interface abstract Landroid/net/wifi/WifiManager$ActionListener;
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
    name = "ActionListener"
.end annotation


# static fields
.field public static final whitelist FAILURE_BUSY:I = 0x2

.field public static final whitelist FAILURE_INTERNAL_ERROR:I = 0x0

.field public static final whitelist FAILURE_INVALID_ARGS:I = 0x3

.field public static final whitelist FAILURE_IN_PROGRESS:I = 0x1

.field public static final whitelist FAILURE_NOT_AUTHORIZED:I = 0x4


# virtual methods
.method public abstract whitelist onFailure(I)V
.end method

.method public abstract whitelist onSuccess()V
.end method
