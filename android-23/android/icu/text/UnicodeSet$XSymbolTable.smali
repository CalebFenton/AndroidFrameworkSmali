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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 3901
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3909
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 3878
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 3917
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
