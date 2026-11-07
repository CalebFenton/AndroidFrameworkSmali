.class final Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;
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
    name = "ScriptExtensionsFilter"
.end annotation


# instance fields
.field greylist-max-o script:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "script"    # I

    .line 3311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 3314
    iget v0, p0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;->script:I

    invoke-static {p1, v0}, Landroid/icu/lang/UScript;->hasScript(II)Z

    move-result v0

    return v0
.end method
