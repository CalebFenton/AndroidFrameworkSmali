.class Landroid/icu/text/TransliteratorRegistry$IDEnumeration;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o en:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/Enumeration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Landroid/icu/util/CaseInsensitiveString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    .line 437
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 432
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/util/CaseInsensitiveString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
