.class public Landroid/net/wifi/BatchedScanSettings;
.super Ljava/lang/Object;
.source "BatchedScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/BatchedScanSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/BatchedScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AP_FOR_DISTANCE:I = 0x0

.field public static final DEFAULT_AP_PER_SCAN:I = 0x10

.field public static final DEFAULT_INTERVAL_SEC:I = 0x1e

.field public static final DEFAULT_SCANS_PER_BATCH:I = 0x14

.field public static final MAX_AP_FOR_DISTANCE:I = 0x10

.field public static final MAX_AP_PER_SCAN:I = 0x10

.field public static final MAX_INTERVAL_SEC:I = 0x1f4

.field public static final MAX_SCANS_PER_BATCH:I = 0x14

.field public static final MAX_WIFI_CHANNEL:I = 0xc4

.field public static final MIN_AP_FOR_DISTANCE:I = 0x0

.field public static final MIN_AP_PER_SCAN:I = 0x2

.field public static final MIN_INTERVAL_SEC:I = 0xa

.field public static final MIN_SCANS_PER_BATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BatchedScanSettings"

.field public static final UNSPECIFIED:I = 0x7fffffff


# instance fields
.field public channelSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxApForDistance:I

.field public maxApPerScan:I

.field public maxScansPerBatch:I

.field public scanIntervalSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 242
    new-instance v0, Landroid/net/wifi/BatchedScanSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/BatchedScanSettings$1;-><init>()V

    #@5
    .line 241
    sput-object v0, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    invoke-virtual {p0}, Landroid/net/wifi/BatchedScanSettings;->clear()V

    #@6
    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/BatchedScanSettings;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@5
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@7
    .line 104
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@9
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@b
    .line 105
    iget-object v0, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    #@11
    iget-object v1, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@18
    .line 108
    :cond_0
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@1a
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@1c
    .line 109
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@1e
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@20
    .line 102
    return-void
.end method

.method private channelSetIsValid()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 113
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@4
    if-eqz v4, :cond_0

    #@6
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@8
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    :cond_0
    return v6

    #@f
    .line 114
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_4

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    .line 116
    .local v0, "channel":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result v3

    #@25
    .line 117
    .local v3, "i":I
    if-lez v3, :cond_3

    #@27
    const/16 v4, 0xc4

    #@29
    if-le v3, v4, :cond_2

    #@2b
    .line 119
    .end local v3    # "i":I
    :cond_3
    :goto_0
    const-string/jumbo v4, "A"

    #@2e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_2

    #@34
    const-string/jumbo v4, "B"

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 120
    return v5

    #@3e
    .line 118
    :catch_0
    move-exception v2

    #@3f
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@40
    .line 122
    .end local v0    # "channel":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return v6
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const v1, 0x7fffffff

    #@3
    .line 95
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@5
    .line 96
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@7
    .line 97
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@a
    .line 98
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@c
    .line 99
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@e
    .line 94
    return-void
.end method

.method public constrain()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x14

    #@2
    const/4 v5, 0x0

    #@3
    const v4, 0x7fffffff

    #@6
    const/4 v3, 0x2

    #@7
    const/16 v2, 0x10

    #@9
    .line 140
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@b
    if-ne v0, v4, :cond_4

    #@d
    .line 141
    const/16 v0, 0x1e

    #@f
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@11
    .line 148
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@13
    if-ne v0, v4, :cond_6

    #@15
    .line 149
    iput v6, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@17
    .line 156
    :cond_1
    :goto_1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@19
    if-ne v0, v4, :cond_8

    #@1b
    .line 157
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@1d
    .line 164
    :cond_2
    :goto_2
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@1f
    if-ne v0, v4, :cond_a

    #@21
    .line 165
    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@23
    .line 139
    :cond_3
    :goto_3
    return-void

    #@24
    .line 142
    :cond_4
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@26
    const/16 v1, 0xa

    #@28
    if-ge v0, v1, :cond_5

    #@2a
    .line 143
    const/16 v0, 0xa

    #@2c
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@2e
    goto :goto_0

    #@2f
    .line 144
    :cond_5
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@31
    const/16 v1, 0x1f4

    #@33
    if-le v0, v1, :cond_0

    #@35
    .line 145
    const/16 v0, 0x1f4

    #@37
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@39
    goto :goto_0

    #@3a
    .line 150
    :cond_6
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@3c
    if-ge v0, v3, :cond_7

    #@3e
    .line 151
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@40
    goto :goto_1

    #@41
    .line 152
    :cond_7
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@43
    if-le v0, v6, :cond_1

    #@45
    .line 153
    iput v6, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@47
    goto :goto_1

    #@48
    .line 158
    :cond_8
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@4a
    if-ge v0, v3, :cond_9

    #@4c
    .line 159
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@4e
    goto :goto_2

    #@4f
    .line 160
    :cond_9
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@51
    if-le v0, v2, :cond_2

    #@53
    .line 161
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@55
    goto :goto_2

    #@56
    .line 166
    :cond_a
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@58
    if-gez v0, :cond_b

    #@5a
    .line 167
    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@5c
    goto :goto_3

    #@5d
    .line 168
    :cond_b
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@5f
    if-le v0, v2, :cond_3

    #@61
    .line 169
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@63
    goto :goto_3
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 176
    instance-of v2, p1, Landroid/net/wifi/BatchedScanSettings;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 177
    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    #@9
    .line 178
    .local v0, "o":Landroid/net/wifi/BatchedScanSettings;
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@b
    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 179
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@11
    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@13
    if-eq v2, v3, :cond_2

    #@15
    .line 181
    :cond_1
    return v1

    #@16
    .line 180
    :cond_2
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@18
    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@1a
    if-ne v2, v3, :cond_1

    #@1c
    .line 181
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@1e
    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@20
    if-ne v2, v3, :cond_1

    #@22
    .line 182
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@24
    if-nez v2, :cond_4

    #@26
    .line 183
    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@28
    if-nez v2, :cond_3

    #@2a
    const/4 v1, 0x1

    #@2b
    :cond_3
    return v1

    #@2c
    .line 185
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@2e
    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@30
    invoke-interface {v1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 190
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@2
    .line 191
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@4
    mul-int/lit8 v1, v1, 0x3

    #@6
    .line 190
    add-int/2addr v0, v1

    #@7
    .line 192
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@9
    mul-int/lit8 v1, v1, 0x5

    #@b
    .line 190
    add-int/2addr v0, v1

    #@c
    .line 193
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@e
    mul-int/lit8 v1, v1, 0x7

    #@10
    .line 190
    add-int/2addr v0, v1

    #@11
    .line 194
    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@13
    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    #@16
    move-result v1

    #@17
    mul-int/lit8 v1, v1, 0xb

    #@19
    .line 190
    add-int/2addr v0, v1

    #@1a
    return v0
.end method

.method public isInvalid()Z
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    const v3, 0x7fffffff

    #@7
    const/4 v2, 0x1

    #@8
    .line 126
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@a
    if-eq v0, v3, :cond_1

    #@c
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@e
    if-lt v0, v5, :cond_0

    #@10
    .line 127
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@12
    const/16 v1, 0x14

    #@14
    if-le v0, v1, :cond_1

    #@16
    :cond_0
    return v2

    #@17
    .line 128
    :cond_1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@19
    if-eq v0, v3, :cond_3

    #@1b
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@1d
    if-lt v0, v5, :cond_2

    #@1f
    .line 129
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@21
    if-le v0, v6, :cond_3

    #@23
    :cond_2
    return v2

    #@24
    .line 130
    :cond_3
    invoke-direct {p0}, Landroid/net/wifi/BatchedScanSettings;->channelSetIsValid()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_4

    #@2a
    return v2

    #@2b
    .line 131
    :cond_4
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@2d
    if-eq v0, v3, :cond_6

    #@2f
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@31
    const/16 v1, 0xa

    #@33
    if-lt v0, v1, :cond_5

    #@35
    .line 132
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@37
    const/16 v1, 0x1f4

    #@39
    if-le v0, v1, :cond_6

    #@3b
    :cond_5
    return v2

    #@3c
    .line 133
    :cond_6
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@3e
    if-eq v0, v3, :cond_8

    #@40
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@42
    if-ltz v0, :cond_7

    #@44
    .line 134
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@46
    if-le v0, v6, :cond_8

    #@48
    :cond_7
    return v2

    #@49
    .line 135
    :cond_8
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    .line 199
    new-instance v3, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 200
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "<none>"

    #@b
    .line 202
    .local v2, "none":Ljava/lang/String;
    const-string/jumbo v4, "BatchScanSettings [maxScansPerBatch: "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v5

    #@12
    .line 203
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@14
    if-ne v4, v6, :cond_0

    #@16
    move-object v4, v2

    #@17
    .line 202
    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1a
    move-result-object v4

    #@1b
    .line 204
    const-string/jumbo v5, ", maxApPerScan: "

    #@1e
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    move-result-object v5

    #@22
    .line 204
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@24
    if-ne v4, v6, :cond_1

    #@26
    move-object v4, v2

    #@27
    .line 202
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v4

    #@2b
    .line 205
    const-string/jumbo v5, ", scanIntervalSec: "

    #@2e
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v5

    #@32
    .line 206
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@34
    if-ne v4, v6, :cond_2

    #@36
    move-object v4, v2

    #@37
    .line 202
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v4

    #@3b
    .line 207
    const-string/jumbo v5, ", maxApForDistance: "

    #@3e
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v4

    #@42
    .line 208
    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@44
    if-ne v5, v6, :cond_3

    #@46
    .line 202
    .end local v2    # "none":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@49
    move-result-object v4

    #@4a
    .line 209
    const-string/jumbo v5, ", channelSet: "

    #@4d
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 210
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@52
    if-nez v4, :cond_4

    #@54
    .line 211
    const-string/jumbo v4, "ALL"

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5a
    .line 219
    :goto_4
    const-string/jumbo v4, "]"

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@60
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    return-object v4

    #@65
    .line 203
    .restart local v2    # "none":Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a
    move-result-object v4

    #@6b
    goto :goto_0

    #@6c
    .line 204
    :cond_1
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@6e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v4

    #@72
    goto :goto_1

    #@73
    .line 206
    :cond_2
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v4

    #@79
    goto :goto_2

    #@7a
    .line 208
    :cond_3
    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@7c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f
    move-result-object v2

    #@80
    goto :goto_3

    #@81
    .line 213
    .end local v2    # "none":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "<"

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@87
    .line 214
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@89
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8c
    move-result-object v1

    #@8d
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@90
    move-result v4

    #@91
    if-eqz v4, :cond_5

    #@93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@96
    move-result-object v0

    #@97
    check-cast v0, Ljava/lang/String;

    #@99
    .line 215
    .local v0, "channel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v5, " "

    #@a1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b0
    goto :goto_5

    #@b1
    .line 217
    .end local v0    # "channel":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, ">"

    #@b4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 230
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 231
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 232
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 233
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 234
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@16
    if-nez v2, :cond_0

    #@18
    const/4 v2, 0x0

    #@19
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 235
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 236
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_1

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/String;

    #@32
    .local v0, "channel":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    goto :goto_1

    #@36
    .line 234
    .end local v0    # "channel":Ljava/lang/String;
    .end local v1    # "channel$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@38
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@3b
    move-result v2

    #@3c
    goto :goto_0

    #@3d
    .line 229
    :cond_1
    return-void
.end method
