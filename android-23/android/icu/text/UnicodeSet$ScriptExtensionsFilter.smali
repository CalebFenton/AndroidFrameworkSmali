.class Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;
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
    name = "ScriptExtensionsFilter"
.end annotation


# instance fields
.field script:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "script"    # I

    #@0
    .prologue
    .line 3156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    #@5
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 3158
    iget v0, p0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    #@2
    invoke-static {p1, v0}, Landroid/icu/lang/UScript;->hasScript(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
