.class public final Landroid/hardware/gnss/V1_0/IGnssNiCallback$GnssNiEncodingType;
.super Ljava/lang/Object;
.source "IGnssNiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssNiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssNiEncodingType"
.end annotation


# static fields
.field public static final blacklist ENC_NONE:I = 0x0

.field public static final blacklist ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final blacklist ENC_SUPL_UCS2:I = 0x3

.field public static final blacklist ENC_SUPL_UTF8:I = 0x2

.field public static final blacklist ENC_UNKNOWN:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 268
    .local v1, "flipped":I
    const-string v2, "ENC_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 270
    const-string v2, "ENC_SUPL_GSM_DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    or-int/lit8 v1, v1, 0x1

    .line 273
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 274
    const-string v2, "ENC_SUPL_UTF8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    or-int/lit8 v1, v1, 0x2

    .line 277
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 278
    const-string v2, "ENC_SUPL_UCS2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    or-int/lit8 v1, v1, 0x3

    .line 281
    :cond_2f
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3b

    .line 282
    const-string v2, "ENC_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    or-int/lit8 v1, v1, -0x1

    .line 285
    :cond_3b
    if-eq p0, v1, :cond_59

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_59
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 247
    if-nez p0, :cond_5

    .line 248
    const-string v0, "ENC_NONE"

    return-object v0

    .line 250
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 251
    const-string v0, "ENC_SUPL_GSM_DEFAULT"

    return-object v0

    .line 253
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 254
    const-string v0, "ENC_SUPL_UTF8"

    return-object v0

    .line 256
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 257
    const-string v0, "ENC_SUPL_UCS2"

    return-object v0

    .line 259
    :cond_17
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1d

    .line 260
    const-string v0, "ENC_UNKNOWN"

    return-object v0

    .line 262
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
