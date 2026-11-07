.class final Landroid/icu/text/UnicodeSet$VersionFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VersionFilter"
.end annotation


# instance fields
.field greylist-max-o version:Landroid/icu/util/VersionInfo;


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/util/VersionInfo;)V
    .registers 2
    .param p1, "version"    # Landroid/icu/util/VersionInfo;

    .line 3332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 4
    .param p1, "ch"    # I

    .line 3335
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    .line 3338
    .local v0, "v":Landroid/icu/util/VersionInfo;
    invoke-static {}, Landroid/icu/text/UnicodeSet;->-$$Nest$sfgetNO_VERSION()Landroid/icu/util/VersionInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    .line 3339
    invoke-virtual {v0, v1}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v1

    if-gtz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 3338
    :goto_19
    return v1
.end method
