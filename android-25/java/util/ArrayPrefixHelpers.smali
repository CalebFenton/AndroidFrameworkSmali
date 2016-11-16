.class Ljava/util/ArrayPrefixHelpers;
.super Ljava/lang/Object;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayPrefixHelpers$CumulateTask;,
        Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;,
        Ljava/util/ArrayPrefixHelpers$IntCumulateTask;,
        Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    }
.end annotation


# static fields
.field static final CUMULATE:I = 0x1

.field static final FINISHED:I = 0x4

.field static final MIN_PARTITION:I = 0x10

.field static final SUMMED:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
