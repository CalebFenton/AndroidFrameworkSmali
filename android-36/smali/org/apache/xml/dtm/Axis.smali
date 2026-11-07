.class public final Lorg/apache/xml/dtm/Axis;
.super Ljava/lang/Object;
.source "Axis.java"


# static fields
.field public static final greylist ALL:I = 0x10

.field public static final greylist ALLFROMNODE:I = 0xe

.field public static final greylist ANCESTOR:I = 0x0

.field public static final greylist ANCESTORORSELF:I = 0x1

.field public static final greylist ATTRIBUTE:I = 0x2

.field public static final greylist CHILD:I = 0x3

.field public static final greylist DESCENDANT:I = 0x4

.field public static final greylist DESCENDANTORSELF:I = 0x5

.field public static final greylist DESCENDANTSFROMROOT:I = 0x11

.field public static final greylist DESCENDANTSORSELFFROMROOT:I = 0x12

.field public static final greylist FILTEREDLIST:I = 0x14

.field public static final greylist FOLLOWING:I = 0x6

.field public static final greylist FOLLOWINGSIBLING:I = 0x7

.field public static final greylist NAMESPACE:I = 0x9

.field public static final greylist NAMESPACEDECLS:I = 0x8

.field public static final greylist PARENT:I = 0xa

.field public static final greylist PRECEDING:I = 0xb

.field public static final greylist PRECEDINGANDANCESTOR:I = 0xf

.field public static final greylist PRECEDINGSIBLING:I = 0xc

.field public static final greylist ROOT:I = 0x13

.field public static final greylist SELF:I = 0xd

.field private static final greylist isReverse:[Z

.field private static final greylist names:[Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 22

    const/16 v0, 0xe

    .line 165
    new-array v0, v0, [Z

    fill-array-data v0, :array_3a

    sput-object v0, Lorg/apache/xml/dtm/Axis;->isReverse:[Z

    .line 183
    const-string v20, "root"

    const-string v21, "filtered-list"

    const-string v1, "ancestor"

    const-string v2, "ancestor-or-self"

    const-string v3, "attribute"

    const-string v4, "child"

    const-string v5, "descendant"

    const-string v6, "descendant-or-self"

    const-string v7, "following"

    const-string v8, "following-sibling"

    const-string v9, "namespace-decls"

    const-string v10, "namespace"

    const-string v11, "parent"

    const-string v12, "preceding"

    const-string v13, "preceding-sibling"

    const-string v14, "self"

    const-string v15, "all-from-node"

    const-string v16, "preceding-and-ancestor"

    const-string v17, "all"

    const-string v18, "descendants-from-root"

    const-string v19, "descendants-or-self-from-root"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    return-void

    :array_3a
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getNames(I)Ljava/lang/String;
    .registers 2

    .line 213
    sget-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static greylist getNamesLength()I
    .registers 1

    .line 217
    sget-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static greylist isReverse(I)Z
    .registers 2

    .line 209
    sget-object v0, Lorg/apache/xml/dtm/Axis;->isReverse:[Z

    aget-boolean p0, v0, p0

    return p0
.end method
