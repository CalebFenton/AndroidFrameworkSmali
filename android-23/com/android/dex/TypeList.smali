.class public final Lcom/android/dex/TypeList;
.super Ljava/lang/Object;
.source "TypeList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/TypeList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dex/TypeList;


# instance fields
.field private final dex:Lcom/android/dex/Dex;

.field private final types:[S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 23
    new-instance v0, Lcom/android/dex/TypeList;

    #@2
    sget-object v1, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v2, v1}, Lcom/android/dex/TypeList;-><init>(Lcom/android/dex/Dex;[S)V

    #@8
    sput-object v0, Lcom/android/dex/TypeList;->EMPTY:Lcom/android/dex/TypeList;

    #@a
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/dex/Dex;[S)V
    .locals 0
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "types"    # [S

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lcom/android/dex/TypeList;->dex:Lcom/android/dex/Dex;

    #@5
    .line 30
    iput-object p2, p0, Lcom/android/dex/TypeList;->types:[S

    #@7
    .line 28
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/TypeList;)I
    .locals 3
    .param p1, "other"    # Lcom/android/dex/TypeList;

    #@0
    .prologue
    .line 38
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/dex/TypeList;->types:[S

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    iget-object v1, p1, Lcom/android/dex/TypeList;->types:[S

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 39
    iget-object v1, p0, Lcom/android/dex/TypeList;->types:[S

    #@d
    aget-short v1, v1, v0

    #@f
    iget-object v2, p1, Lcom/android/dex/TypeList;->types:[S

    #@11
    aget-short v2, v2, v0

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 40
    iget-object v1, p0, Lcom/android/dex/TypeList;->types:[S

    #@17
    aget-short v1, v1, v0

    #@19
    iget-object v2, p1, Lcom/android/dex/TypeList;->types:[S

    #@1b
    aget-short v2, v2, v0

    #@1d
    invoke-static {v1, v2}, Lcom/android/dex/util/Unsigned;->compare(SS)I

    #@20
    move-result v1

    #@21
    return v1

    #@22
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/dex/TypeList;->types:[S

    #@27
    array-length v1, v1

    #@28
    iget-object v2, p1, Lcom/android/dex/TypeList;->types:[S

    #@2a
    array-length v2, v2

    #@2b
    invoke-static {v1, v2}, Lcom/android/dex/util/Unsigned;->compare(II)I

    #@2e
    move-result v1

    #@2f
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 37
    check-cast p1, Lcom/android/dex/TypeList;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dex/TypeList;->compareTo(Lcom/android/dex/TypeList;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTypes()[S
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/dex/TypeList;->types:[S

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 48
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "("

    #@8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 49
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    iget-object v3, p0, Lcom/android/dex/TypeList;->types:[S

    #@e
    array-length v2, v3

    #@f
    .local v2, "typesLength":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@11
    .line 50
    iget-object v3, p0, Lcom/android/dex/TypeList;->dex:Lcom/android/dex/Dex;

    #@13
    if-eqz v3, :cond_0

    #@15
    iget-object v3, p0, Lcom/android/dex/TypeList;->dex:Lcom/android/dex/Dex;

    #@17
    invoke-virtual {v3}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Lcom/android/dex/TypeList;->types:[S

    #@1d
    aget-short v4, v4, v0

    #@1f
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/io/Serializable;

    #@25
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    .line 49
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 50
    :cond_0
    iget-object v3, p0, Lcom/android/dex/TypeList;->types:[S

    #@2d
    aget-short v3, v3, v0

    #@2f
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@32
    move-result-object v3

    #@33
    goto :goto_1

    #@34
    .line 52
    :cond_1
    const-string/jumbo v3, ")"

    #@37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    return-object v3
.end method
