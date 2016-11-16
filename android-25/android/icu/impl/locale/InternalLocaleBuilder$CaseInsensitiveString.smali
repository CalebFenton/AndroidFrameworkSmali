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
.field private _s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 640
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    #@5
    .line 639
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 652
    if-ne p0, p1, :cond_0

    #@2
    .line 653
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 655
    :cond_0
    instance-of v0, p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 656
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 658
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    #@c
    nop

    #@d
    nop

    #@e
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    #@2
    return-object v0
.end method
