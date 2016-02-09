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
.field private elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private elements:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Ljava/util/EnumSet$SerializationProxy;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/util/EnumSet$SerializationProxy;[Ljava/lang/Enum;)[Ljava/lang/Enum;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    #@2
    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 318
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet<TE;>.SerializationProxy<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet$SerializationProxy;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet<TE;>.SerializationProxy<TE;>;"
    invoke-direct {p0}, Ljava/util/EnumSet$SerializationProxy;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 328
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet<TE;>.SerializationProxy<TE;>;"
    iget-object v2, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    #@2
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@5
    move-result-object v1

    #@6
    .line 329
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
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
    .line 330
    .local v0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@11
    .line 329
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 332
    .end local v0    # "e":Ljava/lang/Enum;, "TE;"
    :cond_0
    return-object v1
.end method
