.class public final Landroid/ranging/uwb/UwbComplexChannel$Builder;
.super Ljava/lang/Object;
.source "UwbComplexChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/uwb/UwbComplexChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChannel:I

.field private blacklist mPreambleIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChannel(Landroid/ranging/uwb/UwbComplexChannel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/uwb/UwbComplexChannel$Builder;->mChannel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreambleIndex(Landroid/ranging/uwb/UwbComplexChannel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/uwb/UwbComplexChannel$Builder;->mPreambleIndex:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x5

    iput v0, p0, Landroid/ranging/uwb/UwbComplexChannel$Builder;->mChannel:I

    .line 222
    invoke-static {}, Landroid/ranging/uwb/UwbComplexChannel;->-$$Nest$sfgetPREAMBLE_INDEXES_BPRF()[I

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-static {}, Landroid/ranging/uwb/UwbComplexChannel;->-$$Nest$sfgetPREAMBLE_INDEXES_BPRF()[I

    move-result-object v2

    array-length v2, v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Landroid/ranging/uwb/UwbComplexChannel$Builder;->mPreambleIndex:I

    .line 222
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/uwb/UwbComplexChannel;
    .registers 3

    .line 266
    new-instance v0, Landroid/ranging/uwb/UwbComplexChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/uwb/UwbComplexChannel;-><init>(Landroid/ranging/uwb/UwbComplexChannel$Builder;Landroid/ranging/uwb/UwbComplexChannel-IA;)V

    return-object v0
.end method

.method public whitelist setChannel(I)Landroid/ranging/uwb/UwbComplexChannel$Builder;
    .registers 2
    .param p1, "channel"    # I

    .line 235
    iput p1, p0, Landroid/ranging/uwb/UwbComplexChannel$Builder;->mChannel:I

    .line 236
    return-object p0
.end method

.method public whitelist setPreambleIndex(I)Landroid/ranging/uwb/UwbComplexChannel$Builder;
    .registers 2
    .param p1, "preambleIndex"    # I

    .line 255
    iput p1, p0, Landroid/ranging/uwb/UwbComplexChannel$Builder;->mPreambleIndex:I

    .line 256
    return-object p0
.end method
