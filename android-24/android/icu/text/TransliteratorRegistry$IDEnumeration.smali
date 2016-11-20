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
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field en:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 397
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Landroid/icu/util/CaseInsensitiveString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 398
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    #@5
    .line 397
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    #@6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/CaseInsensitiveString;

    #@8
    invoke-virtual {v0}, Landroid/icu/util/CaseInsensitiveString;->getString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
