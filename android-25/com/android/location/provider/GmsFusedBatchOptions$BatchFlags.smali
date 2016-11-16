.class public final Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;
.super Ljava/lang/Object;
.source "GmsFusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GmsFusedBatchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchFlags"
.end annotation


# static fields
.field public static CALLBACK_ON_LOCATION_FIX:I

.field public static WAKEUP_ON_FIFO_FULL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 100
    const/4 v0, 0x1

    #@1
    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;->WAKEUP_ON_FIFO_FULL:I

    #@3
    .line 101
    const/4 v0, 0x2

    #@4
    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    #@6
    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
