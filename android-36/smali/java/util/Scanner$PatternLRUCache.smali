.class Ljava/util/Scanner$PatternLRUCache;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternLRUCache"
.end annotation


# instance fields
.field private blacklist oa:[Ljava/util/regex/Pattern;

.field private final blacklist size:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 3035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3032
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    .line 3036
    iput p1, p0, Ljava/util/Scanner$PatternLRUCache;->size:I

    .line 3037
    return-void
.end method


# virtual methods
.method blacklist forName(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 3051
    iget-object v0, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    if-nez v0, :cond_b

    .line 3052
    iget v0, p0, Ljava/util/Scanner$PatternLRUCache;->size:I

    new-array v0, v0, [Ljava/util/regex/Pattern;

    .line 3053
    .local v0, "temp":[Ljava/util/regex/Pattern;
    iput-object v0, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    .line 3054
    .end local v0    # "temp":[Ljava/util/regex/Pattern;
    goto :goto_29

    .line 3055
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 3056
    iget-object v1, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    aget-object v1, v1, v0

    .line 3057
    .local v1, "ob":Ljava/util/regex/Pattern;
    if-nez v1, :cond_18

    .line 3058
    goto :goto_26

    .line 3059
    :cond_18
    invoke-virtual {p0, v1, p1}, Ljava/util/Scanner$PatternLRUCache;->hasName(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3060
    if-lez v0, :cond_25

    .line 3061
    iget-object v2, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2, v0}, Ljava/util/Scanner$PatternLRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 3062
    :cond_25
    return-object v1

    .line 3055
    .end local v1    # "ob":Ljava/util/regex/Pattern;
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3068
    .end local v0    # "i":I
    :cond_29
    :goto_29
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3069
    .local v0, "ob":Ljava/util/regex/Pattern;
    iget-object v1, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    iget-object v2, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 3070
    iget-object v1, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    iget-object v2, p0, Ljava/util/Scanner$PatternLRUCache;->oa:[Ljava/util/regex/Pattern;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/Scanner$PatternLRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 3071
    return-object v0
.end method

.method blacklist hasName(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 4
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "s"    # Ljava/lang/String;

    .line 3040
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist moveToFront([Ljava/lang/Object;I)V
    .registers 6
    .param p1, "oa"    # [Ljava/lang/Object;
    .param p2, "i"    # I

    .line 3044
    aget-object v0, p1, p2

    .line 3045
    .local v0, "ob":Ljava/lang/Object;
    move v1, p2

    .local v1, "j":I
    :goto_3
    if-lez v1, :cond_e

    .line 3046
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v1

    .line 3045
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 3047
    .end local v1    # "j":I
    :cond_e
    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 3048
    return-void
.end method
