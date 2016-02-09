.class public Lcom/android/dex/TableOfContents$Section;
.super Ljava/lang/Object;
.source "TableOfContents.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/TableOfContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/TableOfContents$Section;",
        ">;"
    }
.end annotation


# instance fields
.field public byteCount:I

.field public off:I

.field public size:I

.field public final type:S


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 213
    iput v1, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    .line 214
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@9
    .line 215
    iput v1, p0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    #@b
    .line 218
    int-to-short v0, p1

    #@c
    iput-short v0, p0, Lcom/android/dex/TableOfContents$Section;->type:S

    #@e
    .line 217
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/TableOfContents$Section;)I
    .locals 2
    .param p1, "section"    # Lcom/android/dex/TableOfContents$Section;

    #@0
    .prologue
    .line 226
    iget v0, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@2
    iget v1, p1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 227
    iget v0, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@8
    iget v1, p1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    const/4 v0, -0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 229
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "section"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 225
    check-cast p1, Lcom/android/dex/TableOfContents$Section;

    #@2
    .end local p1    # "section":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dex/TableOfContents$Section;->compareTo(Lcom/android/dex/TableOfContents$Section;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public exists()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 222
    iget v1, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 233
    const-string/jumbo v0, "Section[type=%#x,off=%#x,size=%#x]"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-short v2, p0, Lcom/android/dex/TableOfContents$Section;->type:S

    #@8
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
