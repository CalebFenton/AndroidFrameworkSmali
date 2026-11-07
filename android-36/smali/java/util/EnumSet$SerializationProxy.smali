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
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x507d3db7654cad1L


# instance fields
.field private final greylist-max-o elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o elements:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 429
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    sput-object v0, Ljava/util/EnumSet$SerializationProxy;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 445
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet$SerializationProxy<TE;>;"
    .local p1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iget-object v0, p1, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    .line 447
    sget-object v0, Ljava/util/EnumSet$SerializationProxy;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    .line 448
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 6

    .line 463
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet$SerializationProxy<TE;>;"
    iget-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 464
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 465
    .local v4, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v4    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 466
    :cond_14
    return-object v0
.end method
