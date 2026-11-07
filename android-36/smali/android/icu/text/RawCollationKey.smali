.class public final Landroid/icu/text/RawCollationKey;
.super Landroid/icu/util/ByteArrayWrapper;
.source "RawCollationKey.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    .line 54
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 62
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    .line 64
    return-void
.end method

.method public constructor greylist-max-o <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 72
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    .line 74
    return-void
.end method

.method public constructor greylist-max-o <init>([BI)V
    .registers 3
    .param p1, "bytesToAdopt"    # [B
    .param p2, "size"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ByteArrayWrapper;-><init>([BI)V

    .line 86
    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/icu/text/RawCollationKey;)I
    .registers 4
    .param p1, "rhs"    # Landroid/icu/text/RawCollationKey;

    .line 97
    invoke-super {p0, p1}, Landroid/icu/util/ByteArrayWrapper;->compareTo(Landroid/icu/util/ByteArrayWrapper;)I

    move-result v0

    .line 98
    .local v0, "result":I
    if-gez v0, :cond_8

    const/4 v1, -0x1

    goto :goto_d

    :cond_8
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method
