.class public final Landroid/hardware/contexthub/V1_2/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static final blacklist AIRPLANE_MODE:B = 0x2t

.field public static final blacklist LOCATION:B = 0x0t

.field public static final blacklist MICROPHONE:B = 0x3t

.field public static final blacklist WIFI_AVAILABLE:B = 0x1t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # B

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 41
    .local v1, "flipped":B
    const-string v2, "LOCATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 43
    const-string v2, "WIFI_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 46
    :cond_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 47
    const-string v2, "AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 50
    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 51
    const-string v2, "MICROPHONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 54
    :cond_32
    if-eq p0, v1, :cond_55

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_55
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 23
    if-nez p0, :cond_5

    .line 24
    const-string v0, "LOCATION"

    return-object v0

    .line 26
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 27
    const-string v0, "WIFI_AVAILABLE"

    return-object v0

    .line 29
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 30
    const-string v0, "AIRPLANE_MODE"

    return-object v0

    .line 32
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 33
    const-string v0, "MICROPHONE"

    return-object v0

    .line 35
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
