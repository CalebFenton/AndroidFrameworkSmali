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
.method private constructor blacklist <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 69
    .local v1, "c":C
    const/16 v2, 0x41

    if-gt v2, v1, :cond_43

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_43

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x20

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :goto_27
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_3e

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 74
    if-gt v2, v1, :cond_3a

    if-gt v1, v3, :cond_3a

    add-int/lit8 v5, v1, 0x20

    int-to-char v1, v5

    .line 75
    :cond_3a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 77
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    .end local v1    # "c":C
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_46
    return-object p0
.end method
