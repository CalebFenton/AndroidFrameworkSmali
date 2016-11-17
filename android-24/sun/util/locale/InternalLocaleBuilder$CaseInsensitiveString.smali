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
.field private final lowerStr:Ljava/lang/String;

.field private final str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 672
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->str:Ljava/lang/String;

    #@5
    .line 673
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    #@b
    .line 671
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 687
    if-ne p0, p1, :cond_0

    #@2
    .line 688
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 690
    :cond_0
    instance-of v0, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 691
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 693
    :cond_1
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    #@c
    nop

    #@d
    nop

    #@e
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->str:Ljava/lang/String;

    #@2
    return-object v0
.end method
