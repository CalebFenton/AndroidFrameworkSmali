.class public abstract Landroid/icu/text/UnicodeSet$XSymbolTable;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "XSymbolTable"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 4107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z
    .registers 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/icu/text/UnicodeSet;

    .line 4136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api lookup(Ljava/lang/String;)[C
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 4144
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .registers 3
    .param p1, "i"    # I

    .line 4114
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "limit"    # I

    .line 4152
    const/4 v0, 0x0

    return-object v0
.end method
