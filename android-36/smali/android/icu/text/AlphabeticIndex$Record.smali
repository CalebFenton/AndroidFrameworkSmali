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
.field private final greylist-max-o data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final greylist-max-o name:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetname(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)V"
        }
    .end annotation

    .line 818
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    .local p2, "data":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    .line 820
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    .line 821
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/Object;Landroid/icu/text/AlphabeticIndex-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 838
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/CharSequence;
    .registers 2

    .line 829
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 846
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Record;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Record;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
