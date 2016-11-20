.class public final Landroid/location/FusedBatchOptions$SourceTechnologies;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/FusedBatchOptions;
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
    .line 100
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    #@3
    .line 101
    const/4 v0, 0x2

    #@4
    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->WIFI:I

    #@6
    .line 102
    const/4 v0, 0x4

    #@7
    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->SENSORS:I

    #@9
    .line 103
    const/16 v0, 0x8

    #@b
    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->CELL:I

    #@d
    .line 104
    const/16 v0, 0x10

    #@f
    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->BLUETOOTH:I

    #@11
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
