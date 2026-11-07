.class Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaseInsensitiveString"
.end annotation


# instance fields
.field private greylist-max-o _s:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    .line 645
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 658
    if-ne p0, p1, :cond_4

    .line 659
    const/4 v0, 0x1

    return v0

    .line 661
    :cond_4
    instance-of v0, p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    if-nez v0, :cond_a

    .line 662
    const/4 v0, 0x0

    return v0

    .line 664
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 653
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o value()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    return-object v0
.end method
