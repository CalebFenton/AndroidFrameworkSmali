.class final Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaseInsensitiveString"
.end annotation


# instance fields
.field private final greylist-max-o lowerStr:Ljava/lang/String;

.field private final greylist-max-o str:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->str:Ljava/lang/String;

    .line 674
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    .line 675
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 688
    if-ne p0, p1, :cond_4

    .line 689
    const/4 v0, 0x1

    return v0

    .line 691
    :cond_4
    instance-of v0, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    if-nez v0, :cond_a

    .line 692
    const/4 v0, 0x0

    return v0

    .line 694
    :cond_a
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    iget-object v1, v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 683
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o value()Ljava/lang/String;
    .registers 2

    .line 678
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->str:Ljava/lang/String;

    return-object v0
.end method
