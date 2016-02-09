.class Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaseInsensitiveChar"
.end annotation


# instance fields
.field private _c:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 662
    iput-char p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    #@5
    .line 661
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 674
    if-ne p0, p1, :cond_0

    #@4
    .line 675
    return v0

    #@5
    .line 677
    :cond_0
    instance-of v2, p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 678
    return v1

    #@a
    .line 680
    :cond_1
    iget-char v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    #@c
    check-cast p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@e
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@11
    move-result v3

    #@12
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@15
    move-result v3

    #@16
    if-ne v2, v3, :cond_2

    #@18
    :goto_0
    return v0

    #@19
    :cond_2
    move v0, v1

    #@1a
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 670
    iget-char v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    #@2
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public value()C
    .locals 1

    #@0
    .prologue
    .line 666
    iget-char v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    #@2
    return v0
.end method
