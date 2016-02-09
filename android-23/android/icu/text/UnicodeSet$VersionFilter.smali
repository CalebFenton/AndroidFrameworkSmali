.class Landroid/icu/text/UnicodeSet$VersionFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionFilter"
.end annotation


# instance fields
.field version:Landroid/icu/util/VersionInfo;


# direct methods
.method constructor <init>(Landroid/icu/util/VersionInfo;)V
    .locals 0
    .param p1, "version"    # Landroid/icu/util/VersionInfo;

    #@0
    .prologue
    .line 3167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    #@5
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 3
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3169
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    #@4
    move-result-object v0

    #@5
    .line 3172
    .local v0, "v":Landroid/icu/util/VersionInfo;
    invoke-static {}, Landroid/icu/text/UnicodeSet;->-get0()Landroid/icu/util/VersionInfo;

    #@8
    move-result-object v2

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 3173
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    #@d
    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    #@10
    move-result v2

    #@11
    if-gtz v2, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    .line 3172
    :cond_0
    return v1
.end method
