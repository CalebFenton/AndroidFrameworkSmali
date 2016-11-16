.class public final Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;
.super Ljava/lang/Object;
.source "GmsFusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GmsFusedBatchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceTechnologies"
.end annotation


# static fields
.field public static BLUETOOTH:I

.field public static CELL:I

.field public static GNSS:I

.field public static SENSORS:I

.field public static WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x1

    #@1
    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->GNSS:I

    #@3
    .line 93
    const/4 v0, 0x2

    #@4
    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->WIFI:I

    #@6
    .line 94
    const/4 v0, 0x4

    #@7
    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->SENSORS:I

    #@9
    .line 95
    const/16 v0, 0x8

    #@b
    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->CELL:I

    #@d
    .line 96
    const/16 v0, 0x10

    #@f
    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->BLUETOOTH:I

    #@11
    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
