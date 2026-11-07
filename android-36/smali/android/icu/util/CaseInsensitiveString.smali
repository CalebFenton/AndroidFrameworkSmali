.class public Landroid/icu/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "CaseInsensitiveString.java"


# instance fields
.field private greylist-max-o folded:Ljava/lang/String;

.field private greylist-max-o hash:I

.field private greylist-max-o string:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private static greylist-max-o foldCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "foldee"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getFolded()V
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 36
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/CaseInsensitiveString;->foldCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    .line 38
    :cond_c
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 61
    return v0

    .line 63
    :cond_4
    if-ne p0, p1, :cond_8

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_8
    instance-of v1, p1, Landroid/icu/util/CaseInsensitiveString;

    if-eqz v1, :cond_1e

    .line 67
    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/icu/util/CaseInsensitiveString;

    .line 69
    .local v0, "cis":Landroid/icu/util/CaseInsensitiveString;
    invoke-direct {v0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    .line 70
    iget-object v1, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 72
    .end local v0    # "cis":Landroid/icu/util/CaseInsensitiveString;
    :cond_1e
    return v0
.end method

.method public greylist-max-o getString()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    .line 83
    iget v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    if-nez v0, :cond_f

    .line 84
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    .line 87
    :cond_f
    iget v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object v0
.end method
