.class public Lsun/misc/CompoundEnumeration;
.super Ljava/lang/Object;
.source "CompoundEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private enums:[Ljava/util/Enumeration;

.field private index:I


# direct methods
.method public constructor <init>([Ljava/util/Enumeration;)V
    .locals 1
    .param p1, "enums"    # [Ljava/util/Enumeration;

    #@0
    .prologue
    .line 39
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    #@6
    .line 40
    iput-object p1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    #@8
    .line 39
    return-void
.end method

.method private next()Z
    .locals 2

    #@0
    .prologue
    .line 44
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    :goto_0
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    #@2
    iget-object v1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 45
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    #@9
    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    #@b
    aget-object v0, v0, v1

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    #@11
    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    #@13
    aget-object v0, v0, v1

    #@15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 46
    const/4 v0, 0x1

    #@1c
    return v0

    #@1d
    .line 48
    :cond_0
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    #@23
    goto :goto_0

    #@24
    .line 50
    :cond_1
    const/4 v0, 0x0

    #@25
    return v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 54
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 59
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 61
    :cond_0
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    #@e
    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    #@10
    aget-object v0, v0, v1

    #@12
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
