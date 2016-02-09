.class public Landroid/icu/text/AlphabeticIndex$Record;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 847
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex<TV;>.Record<TV;>;"
    .local p2, "data":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 848
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    #@5
    .line 849
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    #@7
    .line 847
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;Landroid/icu/text/AlphabeticIndex$Record;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex<TV;>.Record<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    #@3
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 869
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex<TV;>.Record<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 859
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex<TV;>.Record<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 877
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex<TV;>.Record<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
