.class public final Landroid/icu/text/RawCollationKey;
.super Landroid/icu/util/ByteArrayWrapper;
.source "RawCollationKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    #@3
    .line 62
    new-array v0, p1, [B

    #@5
    iput-object v0, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    #@7
    .line 60
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    #@5
    .line 71
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "bytesToAdopt"    # [B
    .param p2, "size"    # I

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ByteArrayWrapper;-><init>([BI)V

    #@3
    .line 84
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/RawCollationKey;)I
    .locals 2
    .param p1, "rhs"    # Landroid/icu/text/RawCollationKey;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 99
    invoke-super {p0, p1}, Landroid/icu/util/ByteArrayWrapper;->compareTo(Landroid/icu/util/ByteArrayWrapper;)I

    #@4
    move-result v0

    #@5
    .line 100
    .local v0, "result":I
    if-gez v0, :cond_1

    #@7
    const/4 v1, -0x1

    #@8
    :cond_0
    :goto_0
    return v1

    #@9
    :cond_1
    if-eqz v0, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    goto :goto_0
.end method
