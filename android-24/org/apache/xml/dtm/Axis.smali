.class public final Lorg/apache/xml/dtm/Axis;
.super Ljava/lang/Object;
.source "Axis.java"


# static fields
.field public static final ALL:I = 0x10

.field public static final ALLFROMNODE:I = 0xe

.field public static final ANCESTOR:I = 0x0

.field public static final ANCESTORORSELF:I = 0x1

.field public static final ATTRIBUTE:I = 0x2

.field public static final CHILD:I = 0x3

.field public static final DESCENDANT:I = 0x4

.field public static final DESCENDANTORSELF:I = 0x5

.field public static final DESCENDANTSFROMROOT:I = 0x11

.field public static final DESCENDANTSORSELFFROMROOT:I = 0x12

.field public static final FILTEREDLIST:I = 0x14

.field public static final FOLLOWING:I = 0x6

.field public static final FOLLOWINGSIBLING:I = 0x7

.field public static final NAMESPACE:I = 0x9

.field public static final NAMESPACEDECLS:I = 0x8

.field public static final PARENT:I = 0xa

.field public static final PRECEDING:I = 0xb

.field public static final PRECEDINGANDANCESTOR:I = 0xf

.field public static final PRECEDINGSIBLING:I = 0xc

.field public static final ROOT:I = 0x13

.field public static final SELF:I = 0xd

.field private static final isReverse:[Z

.field private static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xe

    #@2
    .line 165
    new-array v0, v3, [Z

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lorg/apache/xml/dtm/Axis;->isReverse:[Z

    #@9
    .line 184
    const/16 v0, 0x15

    #@b
    new-array v0, v0, [Ljava/lang/String;

    #@d
    .line 185
    const-string/jumbo v1, "ancestor"

    #@10
    const/4 v2, 0x0

    #@11
    aput-object v1, v0, v2

    #@13
    .line 186
    const-string/jumbo v1, "ancestor-or-self"

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    .line 187
    const-string/jumbo v1, "attribute"

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 188
    const-string/jumbo v1, "child"

    #@22
    const/4 v2, 0x3

    #@23
    aput-object v1, v0, v2

    #@25
    .line 189
    const-string/jumbo v1, "descendant"

    #@28
    const/4 v2, 0x4

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 190
    const-string/jumbo v1, "descendant-or-self"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 191
    const-string/jumbo v1, "following"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    .line 192
    const-string/jumbo v1, "following-sibling"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 193
    const-string/jumbo v1, "namespace-decls"

    #@40
    const/16 v2, 0x8

    #@42
    aput-object v1, v0, v2

    #@44
    .line 194
    const-string/jumbo v1, "namespace"

    #@47
    const/16 v2, 0x9

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 195
    const-string/jumbo v1, "parent"

    #@4e
    const/16 v2, 0xa

    #@50
    aput-object v1, v0, v2

    #@52
    .line 196
    const-string/jumbo v1, "preceding"

    #@55
    const/16 v2, 0xb

    #@57
    aput-object v1, v0, v2

    #@59
    .line 197
    const-string/jumbo v1, "preceding-sibling"

    #@5c
    const/16 v2, 0xc

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 198
    const-string/jumbo v1, "self"

    #@63
    const/16 v2, 0xd

    #@65
    aput-object v1, v0, v2

    #@67
    .line 199
    const-string/jumbo v1, "all-from-node"

    #@6a
    aput-object v1, v0, v3

    #@6c
    .line 200
    const-string/jumbo v1, "preceding-and-ancestor"

    #@6f
    const/16 v2, 0xf

    #@71
    aput-object v1, v0, v2

    #@73
    .line 201
    const-string/jumbo v1, "all"

    #@76
    const/16 v2, 0x10

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 202
    const-string/jumbo v1, "descendants-from-root"

    #@7d
    const/16 v2, 0x11

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 203
    const-string/jumbo v1, "descendants-or-self-from-root"

    #@84
    const/16 v2, 0x12

    #@86
    aput-object v1, v0, v2

    #@88
    .line 204
    const-string/jumbo v1, "root"

    #@8b
    const/16 v2, 0x13

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 205
    const-string/jumbo v1, "filtered-list"

    #@92
    const/16 v2, 0x14

    #@94
    aput-object v1, v0, v2

    #@96
    .line 183
    sput-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    #@98
    .line 30
    return-void

    #@99
    .line 165
    nop

    #@9a
    :array_0
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

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getNames(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    .line 213
    sget-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p0

    #@4
    return-object v0
.end method

.method public static getNamesLength()I
    .locals 1

    #@0
    .prologue
    .line 217
    sget-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public static isReverse(I)Z
    .locals 1
    .param p0, "axis"    # I

    #@0
    .prologue
    .line 209
    sget-object v0, Lorg/apache/xml/dtm/Axis;->isReverse:[Z

    #@2
    aget-boolean v0, v0, p0

    #@4
    return v0
.end method
