.class public Lcom/android/server/wifi/WifiNative$TdlsStatus;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TdlsStatus"
.end annotation


# instance fields
.field channel:I

.field global_operating_class:I

.field reason:I

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
