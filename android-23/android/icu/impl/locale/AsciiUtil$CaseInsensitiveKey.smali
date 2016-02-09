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
.field private _hash:I

.field private _key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 165
    iput-object p1, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    #@5
    .line 166
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_hash:I

    #@f
    .line 164
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 170
    if-ne p0, p1, :cond_0

    #@2
    .line 171
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 173
    :cond_0
    instance-of v0, p1, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 174
    iget-object v0, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    #@a
    check-cast p1, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    #@c
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    #@e
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 176
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 180
    iget v0, p0, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_hash:I

    #@2
    return v0
.end method
