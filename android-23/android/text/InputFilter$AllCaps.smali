.class public Landroid/text/InputFilter$AllCaps;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCaps"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 52
    move v6, p2

    #@3
    .local v6, "i":I
    :goto_0
    if-ge v6, p3, :cond_2

    #@5
    .line 53
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 54
    sub-int v0, p3, p2

    #@11
    new-array v8, v0, [C

    #@13
    .line 55
    .local v8, "v":[C
    invoke-static {p1, p2, p3, v8, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@16
    .line 56
    new-instance v0, Ljava/lang/String;

    #@18
    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    #@1b
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    .line 58
    .local v7, "s":Ljava/lang/String;
    instance-of v0, p1, Landroid/text/Spanned;

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 59
    new-instance v4, Landroid/text/SpannableString;

    #@25
    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@28
    .local v4, "sp":Landroid/text/SpannableString;
    move-object v0, p1

    #@29
    .line 60
    check-cast v0, Landroid/text/Spanned;

    #@2b
    move v1, p2

    #@2c
    move v2, p3

    #@2d
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    #@30
    .line 62
    return-object v4

    #@31
    .line 64
    .end local v4    # "sp":Landroid/text/SpannableString;
    :cond_0
    return-object v7

    #@32
    .line 52
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "v":[C
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@34
    goto :goto_0

    #@35
    .line 69
    :cond_2
    return-object v3
.end method
