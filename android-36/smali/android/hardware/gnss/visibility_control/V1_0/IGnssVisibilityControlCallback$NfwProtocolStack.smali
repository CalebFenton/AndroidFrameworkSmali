.class public final Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback$NfwProtocolStack;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NfwProtocolStack"
.end annotation


# static fields
.field public static final blacklist CTRL_PLANE:B = 0x0t

.field public static final blacklist IMS:B = 0xat

.field public static final blacklist OTHER_PROTOCOL_STACK:B = 0x64t

.field public static final blacklist SIM:B = 0xbt

.field public static final blacklist SUPL:B = 0x1t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # B

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 136
    .local v1, "flipped":B
    const-string v2, "CTRL_PLANE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 138
    const-string v2, "SUPL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 141
    :cond_18
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_26

    .line 142
    const-string v2, "IMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v2, v1, 0xa

    int-to-byte v1, v2

    .line 145
    :cond_26
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_34

    .line 146
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v2, v1, 0xb

    int-to-byte v1, v2

    .line 149
    :cond_34
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_42

    .line 150
    const-string v2, "OTHER_PROTOCOL_STACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v2, v1, 0x64

    int-to-byte v1, v2

    .line 153
    :cond_42
    if-eq p0, v1, :cond_65

    .line 154
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

    .line 156
    :cond_65
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 115
    if-nez p0, :cond_5

    .line 116
    const-string v0, "CTRL_PLANE"

    return-object v0

    .line 118
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 119
    const-string v0, "SUPL"

    return-object v0

    .line 121
    :cond_b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_12

    .line 122
    const-string v0, "IMS"

    return-object v0

    .line 124
    :cond_12
    const/16 v0, 0xb

    if-ne p0, v0, :cond_19

    .line 125
    const-string v0, "SIM"

    return-object v0

    .line 127
    :cond_19
    const/16 v0, 0x64

    if-ne p0, v0, :cond_20

    .line 128
    const-string v0, "OTHER_PROTOCOL_STACK"

    return-object v0

    .line 130
    :cond_20
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
