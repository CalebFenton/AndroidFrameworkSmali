.class public Landroid/icu/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "CaseInsensitiveString.java"


# instance fields
.field private folded:Ljava/lang/String;

.field private hash:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    #@6
    .line 23
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    #@9
    .line 43
    iput-object p1, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    #@b
    .line 42
    return-void
.end method

.method private static foldCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "foldee"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private getFolded()V
    .locals 1

    #@0
    .prologue
    .line 32
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 33
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    #@6
    invoke-static {v0}, Landroid/icu/util/CaseInsensitiveString;->foldCase(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    #@c
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 59
    if-nez p1, :cond_0

    #@3
    .line 60
    return v2

    #@4
    .line 62
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 63
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 65
    :cond_1
    instance-of v1, p1, Landroid/icu/util/CaseInsensitiveString;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 66
    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    #@f
    move-object v0, p1

    #@10
    .line 67
    check-cast v0, Landroid/icu/util/CaseInsensitiveString;

    #@12
    .line 68
    .local v0, "cis":Landroid/icu/util/CaseInsensitiveString;
    invoke-direct {v0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    #@15
    .line 69
    iget-object v1, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    #@17
    iget-object v2, v0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    return v1

    #@1e
    .line 71
    .end local v0    # "cis":Landroid/icu/util/CaseInsensitiveString;
    :cond_2
    return v2
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    #@3
    .line 82
    iget v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 83
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    #@f
    .line 86
    :cond_0
    iget v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    #@2
    return-object v0
.end method
