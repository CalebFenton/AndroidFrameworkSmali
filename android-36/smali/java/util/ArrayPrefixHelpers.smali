.class Ljava/util/ArrayPrefixHelpers;
.super Ljava/lang/Object;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayPrefixHelpers$IntCumulateTask;,
        Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;,
        Ljava/util/ArrayPrefixHelpers$LongCumulateTask;,
        Ljava/util/ArrayPrefixHelpers$CumulateTask;
    }
.end annotation


# static fields
.field static final blacklist CUMULATE:I = 0x1

.field static final blacklist FINISHED:I = 0x4

.field static final blacklist MIN_PARTITION:I = 0x10

.field static final blacklist SUMMED:I = 0x2


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
