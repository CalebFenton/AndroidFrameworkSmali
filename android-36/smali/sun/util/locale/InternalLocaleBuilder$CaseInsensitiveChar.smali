.class final Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaseInsensitiveChar"
.end annotation


# instance fields
.field private final greylist-max-o ch:C

.field private final greylist-max-o lowerCh:C


# direct methods
.method constructor greylist-max-o <init>(C)V
    .registers 3
    .param p1, "c"    # C

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput-char p1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    .line 711
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v0

    iput-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    .line 712
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 707
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 725
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 726
    return v0

    .line 728
    :cond_4
    instance-of v1, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 729
    return v2

    .line 731
    :cond_a
    iget-char v1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    move-object v3, p1

    check-cast v3, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    iget-char v3, v3, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 720
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    return v0
.end method

.method public greylist-max-o value()C
    .registers 2

    .line 715
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    return v0
.end method
