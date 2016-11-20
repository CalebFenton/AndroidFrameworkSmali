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
.field private final ch:C

.field private final lowerCh:C


# direct methods
.method constructor <init>(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 709
    iput-char p1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    #@5
    .line 710
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    #@7
    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@a
    move-result v0

    #@b
    iput-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    #@d
    .line 708
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 705
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v0

    #@5
    invoke-direct {p0, v0}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@8
    .line 704
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;)V

    #@3
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
    .line 724
    if-ne p0, p1, :cond_0

    #@4
    .line 725
    return v0

    #@5
    .line 727
    :cond_0
    instance-of v2, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 728
    return v1

    #@a
    .line 730
    :cond_1
    iget-char v2, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    #@c
    check-cast p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@e
    .end local p1    # "obj":Ljava/lang/Object;
    iget-char v3, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    #@10
    if-ne v2, v3, :cond_2

    #@12
    :goto_0
    return v0

    #@13
    :cond_2
    move v0, v1

    #@14
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 719
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    #@2
    return v0
.end method

.method public value()C
    .locals 1

    #@0
    .prologue
    .line 714
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    #@2
    return v0
.end method
