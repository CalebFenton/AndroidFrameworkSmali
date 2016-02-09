.class Landroid/text/Layout$Ellipsizer;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ellipsizer"
.end annotation


# instance fields
.field mLayout:Landroid/text/Layout;

.field mMethod:Landroid/text/TextUtils$TruncateAt;

.field mText:Ljava/lang/CharSequence;

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1911
    iput-object p1, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    #@5
    .line 1910
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4
    .param p1, "off"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1915
    const/4 v2, 0x1

    #@2
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    #@5
    move-result-object v0

    #@6
    .line 1916
    .local v0, "buf":[C
    add-int/lit8 v2, p1, 0x1

    #@8
    invoke-virtual {p0, p1, v2, v0, v3}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    #@b
    .line 1917
    aget-char v1, v0, v3

    #@d
    .line 1919
    .local v1, "ret":C
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    #@10
    .line 1920
    return v1
.end method

.method public getChars(II[CI)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    #@0
    .prologue
    .line 1924
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@5
    move-result v7

    #@6
    .line 1925
    .local v7, "line1":I
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@8
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@b
    move-result v8

    #@c
    .line 1927
    .local v8, "line2":I
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    #@e
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@11
    .line 1929
    move v3, v7

    #@12
    .local v3, "i":I
    :goto_0
    if-gt v3, v8, :cond_0

    #@14
    .line 1930
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@16
    iget-object v6, p0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    #@18
    move v1, p1

    #@19
    move v2, p2

    #@1a
    move-object v4, p3

    #@1b
    move v5, p4

    #@1c
    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->-wrap0(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V

    #@1f
    .line 1929
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1923
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 1935
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1939
    sub-int v1, p2, p1

    #@2
    new-array v0, v1, [C

    #@4
    .line 1940
    .local v0, "s":[C
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    #@8
    .line 1941
    new-instance v1, Ljava/lang/String;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@d
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1946
    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    #@4
    move-result v1

    #@5
    new-array v0, v1, [C

    #@7
    .line 1947
    .local v0, "s":[C
    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    #@e
    .line 1948
    new-instance v1, Ljava/lang/String;

    #@10
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@13
    return-object v1
.end method
