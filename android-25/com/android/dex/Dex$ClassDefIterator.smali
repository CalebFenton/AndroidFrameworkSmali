.class final Lcom/android/dex/Dex$ClassDefIterator;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassDefIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/dex/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private final in:Lcom/android/dex/Dex$Section;

.field final synthetic this$0:Lcom/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/android/dex/Dex;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/dex/Dex$ClassDefIterator;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 955
    iget-object v0, p0, Lcom/android/dex/Dex$ClassDefIterator;->this$0:Lcom/android/dex/Dex;

    #@7
    iget-object v1, p0, Lcom/android/dex/Dex$ClassDefIterator;->this$0:Lcom/android/dex/Dex;

    #@9
    invoke-static {v1}, Lcom/android/dex/Dex;->-get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    #@c
    move-result-object v1

    #@d
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@f
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@11
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/dex/Dex$ClassDefIterator;->in:Lcom/android/dex/Dex$Section;

    #@17
    .line 956
    const/4 v0, 0x0

    #@18
    iput v0, p0, Lcom/android/dex/Dex$ClassDefIterator;->count:I

    #@1a
    .line 954
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ClassDefIterator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/dex/Dex$ClassDefIterator;-><init>(Lcom/android/dex/Dex;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 960
    iget v0, p0, Lcom/android/dex/Dex$ClassDefIterator;->count:I

    #@2
    iget-object v1, p0, Lcom/android/dex/Dex$ClassDefIterator;->this$0:Lcom/android/dex/Dex;

    #@4
    invoke-static {v1}, Lcom/android/dex/Dex;->-get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@a
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@c
    if-ge v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public next()Lcom/android/dex/ClassDef;
    .locals 1

    #@0
    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/dex/Dex$ClassDefIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 965
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 967
    :cond_0
    iget v0, p0, Lcom/android/dex/Dex$ClassDefIterator;->count:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Lcom/android/dex/Dex$ClassDefIterator;->count:I

    #@12
    .line 968
    iget-object v0, p0, Lcom/android/dex/Dex$ClassDefIterator;->in:Lcom/android/dex/Dex$Section;

    #@14
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->readClassDef()Lcom/android/dex/ClassDef;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/android/dex/Dex$ClassDefIterator;->next()Lcom/android/dex/ClassDef;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 972
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
