.class Ljava/util/EnumSet$SerializationProxy;
.super Ljava/lang/Object;
.source "EnumSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x507d3db7654cad1L


# instance fields
.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final elements:[Ljava/lang/Enum;


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 418
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet<TE;>.SerializationProxy<TE;>;"
    .local p1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 419
    iget-object v0, p1, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    #@5
    iput-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    #@7
    .line 420
    invoke-static {}, Ljava/util/EnumSet;->-get0()[Ljava/lang/Enum;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [Ljava/lang/Enum;

    #@11
    iput-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    #@13
    .line 418
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 424
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet<TE;>.SerializationProxy<TE;>;"
    iget-object v2, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    #@2
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@5
    move-result-object v1

    #@6
    .line 425
    .local v1, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    iget-object v3, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    #@8
    const/4 v2, 0x0

    #@9
    array-length v4, v3

    #@a
    :goto_0
    if-ge v2, v4, :cond_0

    #@c
    aget-object v0, v3, v2

    #@e
    .line 426
    .local v0, "e":Ljava/lang/Enum;
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@11
    .line 425
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 427
    .end local v0    # "e":Ljava/lang/Enum;
    :cond_0
    return-object v1
.end method
