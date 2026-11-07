.class final Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
.super Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollationKeyByteSink"
.end annotation


# instance fields
.field private greylist-max-o key_:Landroid/icu/text/RawCollationKey;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetkey_(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/icu/text/RawCollationKey;)V
    .registers 3
    .param p1, "key"    # Landroid/icu/text/RawCollationKey;

    .line 1088
    iget-object v0, p1, Landroid/icu/text/RawCollationKey;->bytes:[B

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;-><init>([B)V

    .line 1089
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    .line 1090
    return-void
.end method


# virtual methods
.method protected blacklist AppendBeyondCapacity([BIII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I
    .param p4, "length"    # I

    .line 1095
    invoke-virtual {p0, p3, p4}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Resize(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1096
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    invoke-static {p1, p2, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1098
    :cond_b
    return-void
.end method

.method protected blacklist Resize(II)Z
    .registers 8
    .param p1, "appendCapacity"    # I
    .param p2, "length"    # I

    .line 1102
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1103
    .local v0, "newCapacity":I
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    .line 1104
    .local v1, "altCapacity":I
    if-ge v0, v1, :cond_b

    .line 1105
    move v0, v1

    .line 1107
    :cond_b
    const/16 v2, 0xc8

    if-ge v0, v2, :cond_11

    .line 1108
    const/16 v0, 0xc8

    .line 1113
    :cond_11
    new-array v2, v0, [B

    .line 1114
    .local v2, "newBytes":[B
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1115
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    iput-object v2, v3, Landroid/icu/text/RawCollationKey;->bytes:[B

    iput-object v2, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    .line 1116
    const/4 v3, 0x1

    return v3
.end method
