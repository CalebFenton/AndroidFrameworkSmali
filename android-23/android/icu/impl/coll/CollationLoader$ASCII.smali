.class final Landroid/icu/impl/coll/CollationLoader$ASCII;
.super Ljava/lang/Object;
.source "CollationLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ASCII"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x5a

    #@2
    const/16 v5, 0x41

    #@4
    .line 62
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    if-ge v1, v3, :cond_3

    #@b
    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 64
    .local v0, "c":C
    if-gt v5, v0, :cond_2

    #@11
    if-gt v0, v6, :cond_2

    #@13
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1c
    .line 66
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@1d
    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    add-int/lit8 v4, v0, 0x20

    #@23
    int-to-char v4, v4

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2c
    move-result v3

    #@2d
    if-ge v1, v3, :cond_1

    #@2f
    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v0

    #@33
    .line 69
    if-gt v5, v0, :cond_0

    #@35
    if-gt v0, v6, :cond_0

    #@37
    add-int/lit8 v3, v0, 0x20

    #@39
    int-to-char v0, v3

    #@3a
    .line 70
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_1

    #@3e
    .line 72
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3

    #@43
    .line 62
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .line 75
    .end local v0    # "c":C
    :cond_3
    return-object p0
.end method
