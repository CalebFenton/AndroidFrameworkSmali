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
.field private greylist-max-o _c:C


# direct methods
.method constructor greylist-max-o <init>(C)V
    .registers 2
    .param p1, "c"    # C

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-char p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    .line 673
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 686
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 687
    return v0

    .line 689
    :cond_4
    instance-of v1, p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 690
    return v2

    .line 692
    :cond_a
    iget-char v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    move-object v3, p1

    check-cast v3, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    if-ne v1, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 681
    iget-char v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v0

    return v0
.end method

.method public greylist-max-o value()C
    .registers 2

    .line 676
    iget-char v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    return v0
.end method
