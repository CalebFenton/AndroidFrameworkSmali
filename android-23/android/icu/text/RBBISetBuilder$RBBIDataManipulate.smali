.class Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"

# interfaces
.implements Landroid/icu/impl/TrieBuilder$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBISetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBBIDataManipulate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/RBBISetBuilder;


# direct methods
.method constructor <init>(Landroid/icu/text/RBBISetBuilder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/RBBISetBuilder;

    #@0
    .prologue
    .line 304
    iput-object p1, p0, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;->this$0:Landroid/icu/text/RBBISetBuilder;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getFoldedValue(II)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 308
    const/4 v3, 0x1

    #@2
    new-array v0, v3, [Z

    #@4
    .line 310
    .local v0, "inBlockZero":[Z
    add-int/lit16 v1, p1, 0x400

    #@6
    .line 311
    .local v1, "limit":I
    :goto_0
    if-ge p1, v1, :cond_2

    #@8
    .line 312
    iget-object v3, p0, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;->this$0:Landroid/icu/text/RBBISetBuilder;

    #@a
    iget-object v3, v3, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    #@c
    invoke-virtual {v3, p1, v0}, Landroid/icu/impl/IntTrieBuilder;->getValue(I[Z)I

    #@f
    move-result v2

    #@10
    .line 313
    .local v2, "value":I
    aget-boolean v3, v0, v4

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 314
    add-int/lit8 p1, p1, 0x20

    #@16
    goto :goto_0

    #@17
    .line 315
    :cond_0
    if-eqz v2, :cond_1

    #@19
    .line 316
    const v3, 0x8000

    #@1c
    or-int/2addr v3, p2

    #@1d
    return v3

    #@1e
    .line 318
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 321
    .end local v2    # "value":I
    :cond_2
    return v4
.end method
