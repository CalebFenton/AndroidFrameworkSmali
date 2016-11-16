.class public final Landroid/icu/impl/UResource$Key;
.super Ljava/lang/Object;
.source "UResource.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/UResource$Key;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private length:I

.field private offset:I

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/UResource$Key;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    #@b
    .line 29
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0
    .param p1, "keyBytes"    # [B
    .param p2, "keyOffset"    # I
    .param p3, "keyLength"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@5
    .line 47
    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@7
    .line 48
    iput p3, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@9
    .line 45
    return-void
.end method

.method private internalSubString(II)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    sub-int v2, p2, p1

    #@4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 120
    .local v1, "sb":Ljava/lang/StringBuilder;
    move v0, p1

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@a
    .line 121
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@c
    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@e
    add-int/2addr v3, v0

    #@f
    aget-byte v2, v2, v3

    #@11
    int-to-char v2, v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 120
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method private regionMatches(ILjava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "n"    # I

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@3
    .line 154
    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@5
    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@7
    add-int/2addr v2, p1

    #@8
    add-int/2addr v2, v0

    #@9
    aget-byte v1, v1, v2

    #@b
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@e
    move-result v2

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 155
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 158
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method private regionMatches([BII)Z
    .locals 3
    .param p1, "otherBytes"    # [B
    .param p2, "otherOffset"    # I
    .param p3, "n"    # I

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@3
    .line 145
    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@5
    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@7
    add-int/2addr v2, v0

    #@8
    aget-byte v1, v1, v2

    #@a
    add-int v2, p2, v0

    #@c
    aget-byte v2, p1, v2

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 146
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 149
    :cond_1
    const/4 v1, 0x1

    #@16
    return v1
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    sget-boolean v1, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    if-ltz p1, :cond_0

    #@7
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@9
    if-ge p1, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    .line 93
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@16
    iget v1, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@18
    add-int/2addr v1, p1

    #@19
    aget-byte v0, v0, v1

    #@1b
    int-to-char v0, v0

    #@1c
    return v0
.end method

.method public clone()Landroid/icu/impl/UResource$Key;
    .locals 2

    #@0
    .prologue
    .line 84
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/impl/UResource$Key;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 85
    :catch_0
    move-exception v0

    #@8
    .line 86
    .local v0, "cannotOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compareTo(Landroid/icu/impl/UResource$Key;)I
    .locals 1
    .param p1, "other"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public compareTo(Ljava/lang/CharSequence;)I
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 223
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    .line 224
    .local v0, "csLength":I
    iget v4, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@6
    if-gt v4, v0, :cond_0

    #@8
    iget v3, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@a
    .line 225
    .local v3, "minLength":I
    :goto_0
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@d
    .line 226
    invoke-virtual {p0, v2}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    #@10
    move-result v4

    #@11
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@14
    move-result v5

    #@15
    sub-int v1, v4, v5

    #@17
    .line 227
    .local v1, "diff":I
    if-eqz v1, :cond_1

    #@19
    .line 228
    return v1

    #@1a
    .line 224
    .end local v1    # "diff":I
    .end local v2    # "i":I
    .end local v3    # "minLength":I
    :cond_0
    move v3, v0

    #@1b
    .restart local v3    # "minLength":I
    goto :goto_0

    #@1c
    .line 225
    .restart local v1    # "diff":I
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 231
    .end local v1    # "diff":I
    :cond_2
    iget v4, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@21
    sub-int/2addr v4, v0

    #@22
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 218
    check-cast p1, Landroid/icu/impl/UResource$Key;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Landroid/icu/impl/UResource$Key;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 177
    if-nez p1, :cond_0

    #@3
    .line 178
    return v0

    #@4
    .line 180
    :cond_0
    if-eq p0, p1, :cond_2

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v1

    #@a
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@10
    invoke-direct {p0, v0, p1, v1}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    #@13
    move-result v0

    #@14
    :cond_1
    :goto_0
    return v0

    #@15
    :cond_2
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public endsWith(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 189
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    .line 190
    .local v0, "csLength":I
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@6
    if-gt v0, v1, :cond_0

    #@8
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@a
    sub-int/2addr v1, v0

    #@b
    invoke-direct {p0, v1, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    #@e
    move-result v1

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 163
    if-nez p1, :cond_0

    #@3
    .line 164
    return v1

    #@4
    .line 165
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 166
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 167
    :cond_1
    instance-of v2, p1, Landroid/icu/impl/UResource$Key;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 168
    check-cast v0, Landroid/icu/impl/UResource$Key;

    #@f
    .line 169
    .local v0, "otherKey":Landroid/icu/impl/UResource$Key;
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@11
    iget v3, v0, Landroid/icu/impl/UResource$Key;->length:I

    #@13
    if-ne v2, v3, :cond_2

    #@15
    .line 170
    iget-object v1, v0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@17
    iget v2, v0, Landroid/icu/impl/UResource$Key;->offset:I

    #@19
    iget v3, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@1b
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/UResource$Key;->regionMatches([BII)Z

    #@1e
    move-result v1

    #@1f
    .line 169
    :cond_2
    return v1

    #@20
    .line 172
    .end local v0    # "otherKey":Landroid/icu/impl/UResource$Key;
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 206
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 207
    return v3

    #@6
    .line 210
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@8
    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@a
    aget-byte v0, v2, v3

    #@c
    .line 211
    .local v0, "h":I
    const/4 v1, 0x1

    #@d
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@f
    if-ge v1, v2, :cond_1

    #@11
    .line 212
    mul-int/lit8 v2, v0, 0x25

    #@13
    iget-object v3, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@15
    iget v4, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@17
    aget-byte v3, v3, v4

    #@19
    add-int v0, v2, v3

    #@1b
    .line 211
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 214
    :cond_1
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@2
    return v0
.end method

.method public regionMatches(ILjava/lang/CharSequence;)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 198
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    .line 199
    .local v0, "csLength":I
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@6
    sub-int/2addr v1, p1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    #@c
    move-result v1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public setBytes([BI)V
    .locals 1
    .param p1, "keyBytes"    # [B
    .param p2, "keyOffset"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 62
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@3
    .line 63
    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@5
    .line 64
    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@7
    :goto_0
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@9
    add-int/2addr v0, p2

    #@a
    aget-byte v0, p1, v0

    #@c
    if-eqz v0, :cond_0

    #@e
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@14
    goto :goto_0

    #@15
    .line 65
    :cond_0
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    #@18
    .line 61
    return-void
.end method

.method public setToEmpty()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 72
    iput-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@4
    .line 73
    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@6
    iput v0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@8
    .line 74
    iput-object v1, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    #@a
    .line 71
    return-void
.end method

.method public startsWith(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 184
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v0

    #@5
    .line 185
    .local v0, "csLength":I
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@7
    if-gt v0, v2, :cond_0

    #@9
    invoke-direct {p0, v1, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    #@c
    move-result v1

    #@d
    :cond_0
    return v1
.end method

.method public subSequence(II)Landroid/icu/impl/UResource$Key;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 103
    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_1

    #@6
    if-ltz p1, :cond_0

    #@8
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@a
    if-ge p1, v2, :cond_0

    #@c
    move v2, v0

    #@d
    :goto_0
    if-nez v2, :cond_1

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    :cond_0
    move v2, v1

    #@16
    goto :goto_0

    #@17
    .line 104
    :cond_1
    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    #@19
    if-nez v2, :cond_3

    #@1b
    if-gt p1, p2, :cond_2

    #@1d
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@1f
    if-gt p2, v2, :cond_2

    #@21
    :goto_1
    if-nez v0, :cond_3

    #@23
    new-instance v0, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v0

    #@29
    :cond_2
    move v0, v1

    #@2a
    goto :goto_1

    #@2b
    .line 105
    :cond_3
    new-instance v0, Landroid/icu/impl/UResource$Key;

    #@2d
    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    #@2f
    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    #@31
    add-int/2addr v2, p1

    #@32
    sub-int v3, p2, p1

    #@34
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/UResource$Key;-><init>([BII)V

    #@37
    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->subSequence(II)Landroid/icu/impl/UResource$Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 2
    .param p1, "start"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    sget-boolean v1, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    if-ltz p1, :cond_0

    #@7
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@9
    if-ge p1, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    .line 131
    :cond_1
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@16
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 138
    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_1

    #@6
    if-ltz p1, :cond_0

    #@8
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@a
    if-ge p1, v2, :cond_0

    #@c
    move v2, v0

    #@d
    :goto_0
    if-nez v2, :cond_1

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    :cond_0
    move v2, v1

    #@16
    goto :goto_0

    #@17
    .line 139
    :cond_1
    sget-boolean v2, Landroid/icu/impl/UResource$Key;->-assertionsDisabled:Z

    #@19
    if-nez v2, :cond_3

    #@1b
    if-gt p1, p2, :cond_2

    #@1d
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@1f
    if-gt p2, v2, :cond_2

    #@21
    :goto_1
    if-nez v0, :cond_3

    #@23
    new-instance v0, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v0

    #@29
    :cond_2
    move v0, v1

    #@2a
    goto :goto_1

    #@2b
    .line 140
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 113
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    #@d
    .line 115
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    #@f
    return-object v0
.end method
