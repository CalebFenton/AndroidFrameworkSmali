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
.field private key_:Landroid/icu/text/RawCollationKey;


# direct methods
.method static synthetic -get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/icu/text/RawCollationKey;)V
    .locals 1
    .param p1, "key"    # Landroid/icu/text/RawCollationKey;

    #@0
    .prologue
    .line 1121
    iget-object v0, p1, Landroid/icu/text/RawCollationKey;->bytes:[B

    #@2
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;-><init>([B)V

    #@5
    .line 1122
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    #@7
    .line 1120
    return-void
.end method


# virtual methods
.method protected AppendBeyondCapacity([BIII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1128
    invoke-virtual {p0, p3, p4}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Resize(II)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1129
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    #@8
    invoke-static {p1, p2, v0, p4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 1126
    :cond_0
    return-void
.end method

.method protected Resize(II)Z
    .locals 5
    .param p1, "appendCapacity"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1135
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    #@3
    array-length v3, v3

    #@4
    mul-int/lit8 v2, v3, 0x2

    #@6
    .line 1136
    .local v2, "newCapacity":I
    mul-int/lit8 v3, p1, 0x2

    #@8
    add-int v0, p2, v3

    #@a
    .line 1137
    .local v0, "altCapacity":I
    if-ge v2, v0, :cond_0

    #@c
    .line 1138
    move v2, v0

    #@d
    .line 1140
    :cond_0
    const/16 v3, 0xc8

    #@f
    if-ge v2, v3, :cond_1

    #@11
    .line 1141
    const/16 v2, 0xc8

    #@13
    .line 1146
    :cond_1
    new-array v1, v2, [B

    #@15
    .line 1147
    .local v1, "newBytes":[B
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    #@17
    invoke-static {v3, v4, v1, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 1148
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    #@1c
    iput-object v1, v3, Landroid/icu/text/RawCollationKey;->bytes:[B

    #@1e
    iput-object v1, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    #@20
    .line 1149
    const/4 v3, 0x1

    #@21
    return v3
.end method
