.class Ljava/lang/String$CaseInsensitiveComparator;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseInsensitiveComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77035c7d5c50e5ceL


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String$CaseInsensitiveComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/String$CaseInsensitiveComparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1103
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "s1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "s2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String$CaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 1105
    .local v4, "n1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@7
    move-result v5

    #@8
    .line 1106
    .local v5, "n2":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v3

    #@c
    .line 1107
    .local v3, "min":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@f
    .line 1108
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 1109
    .local v0, "c1":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 1110
    .local v1, "c2":C
    if-eq v0, v1, :cond_0

    #@19
    .line 1111
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    #@1c
    move-result v0

    #@1d
    .line 1112
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    #@20
    move-result v1

    #@21
    .line 1113
    if-eq v0, v1, :cond_0

    #@23
    .line 1114
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@26
    move-result v0

    #@27
    .line 1115
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    #@2a
    move-result v1

    #@2b
    .line 1116
    if-eq v0, v1, :cond_0

    #@2d
    .line 1118
    sub-int v6, v0, v1

    #@2f
    return v6

    #@30
    .line 1107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1123
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_1
    sub-int v6, v4, v5

    #@35
    return v6
.end method
