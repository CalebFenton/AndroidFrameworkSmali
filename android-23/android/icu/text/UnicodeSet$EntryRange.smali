.class public Landroid/icu/text/UnicodeSet$EntryRange;
.super Ljava/lang/Object;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryRange"
.end annotation


# instance fields
.field public codepoint:I

.field public codepointEnd:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4195
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 4197
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    #@8
    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    #@a
    if-ne v1, v2, :cond_0

    #@c
    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    #@e
    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->-wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/StringBuilder;

    #@14
    .line 4196
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 4198
    :cond_0
    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    #@1b
    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->-wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/lang/StringBuilder;

    #@21
    const/16 v2, 0x2d

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    #@29
    invoke-static {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->-wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/lang/StringBuilder;

    #@2f
    goto :goto_0
.end method
