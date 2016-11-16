.class public final Landroid/location/FusedBatchOptions$BatchFlags;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/FusedBatchOptions;
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
    .line 109
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/location/FusedBatchOptions$BatchFlags;->WAKEUP_ON_FIFO_FULL:I

    #@3
    .line 110
    const/4 v0, 0x2

    #@4
    sput v0, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    #@6
    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
