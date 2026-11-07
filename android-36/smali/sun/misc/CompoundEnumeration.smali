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
        "Ljava/util/Enumeration<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist enums:[Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Enumeration<",
            "TE;>;"
        }
    .end annotation
.end field

.field private blacklist index:I


# direct methods
.method public constructor blacklist <init>([Ljava/util/Enumeration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Enumeration<",
            "TE;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    .local p1, "enums":[Ljava/util/Enumeration;, "[Ljava/util/Enumeration<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    .line 40
    iput-object p1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    .line 41
    return-void
.end method

.method private blacklist next()Z
    .registers 4

    .line 44
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    nop

    :goto_1
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    iget-object v1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 45
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v2, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 46
    return v1

    .line 48
    :cond_1e
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    goto :goto_1

    .line 50
    :cond_24
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 54
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
