.class public Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;
.super Ljava/lang/Object;
.source "AsciiUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/AsciiUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitiveKey"
.end annotation


# instance fields
.field private greylist-max-o _hash:I

.field private greylist-max-o _key:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_hash:I

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 182
    if-ne p0, p1, :cond_4

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_4
    instance-of v0, p1, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    if-eqz v0, :cond_14

    .line 186
    iget-object v0, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    iget-object v1, v1, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 188
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_hash:I

    return v0
.end method
