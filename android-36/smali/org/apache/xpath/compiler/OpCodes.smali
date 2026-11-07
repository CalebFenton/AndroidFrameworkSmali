.class public Lorg/apache/xpath/compiler/OpCodes;
.super Ljava/lang/Object;
.source "OpCodes.java"


# static fields
.field public static final greylist AXES_END_TYPES:I = 0x35

.field public static final greylist AXES_START_TYPES:I = 0x25

.field public static final greylist ELEMWILDCARD:I = -0x3

.field public static final greylist EMPTY:I = -0x2

.field public static final greylist ENDOP:I = -0x1

.field static final greylist FIRST_NODESET_OP:I = 0x16

.field public static final greylist FROM_ANCESTORS:I = 0x25

.field public static final greylist FROM_ANCESTORS_OR_SELF:I = 0x26

.field public static final greylist FROM_ATTRIBUTES:I = 0x27

.field public static final greylist FROM_CHILDREN:I = 0x28

.field public static final greylist FROM_DESCENDANTS:I = 0x29

.field public static final greylist FROM_DESCENDANTS_OR_SELF:I = 0x2a

.field public static final greylist FROM_FOLLOWING:I = 0x2b

.field public static final greylist FROM_FOLLOWING_SIBLINGS:I = 0x2c

.field public static final greylist FROM_NAMESPACE:I = 0x31

.field public static final greylist FROM_PARENT:I = 0x2d

.field public static final greylist FROM_PRECEDING:I = 0x2e

.field public static final greylist FROM_PRECEDING_SIBLINGS:I = 0x2f

.field public static final greylist FROM_ROOT:I = 0x32

.field public static final greylist FROM_SELF:I = 0x30

.field static final greylist LAST_NODESET_OP:I = 0x19

.field public static final greylist MATCH_ANY_ANCESTOR:I = 0x34

.field public static final greylist MATCH_ATTRIBUTE:I = 0x33

.field public static final greylist MATCH_IMMEDIATE_ANCESTOR:I = 0x35

.field private static final greylist NEXT_FREE_ID:I = 0x63

.field public static final greylist NODENAME:I = 0x22

.field public static final greylist NODETYPE_ANYELEMENT:I = 0x24

.field public static final greylist NODETYPE_COMMENT:I = 0x406

.field public static final greylist NODETYPE_FUNCTEST:I = 0x40a

.field public static final greylist NODETYPE_NODE:I = 0x409

.field public static final greylist NODETYPE_PI:I = 0x408

.field public static final greylist NODETYPE_ROOT:I = 0x23

.field public static final greylist NODETYPE_TEXT:I = 0x407

.field public static final greylist OP_AND:I = 0x3

.field public static final greylist OP_ARGUMENT:I = 0x1a

.field public static final greylist OP_BOOL:I = 0x12

.field public static final greylist OP_DIV:I = 0xd

.field public static final greylist OP_EQUALS:I = 0x5

.field public static final greylist OP_EXTFUNCTION:I = 0x18

.field public static final greylist OP_FUNCTION:I = 0x19

.field public static final greylist OP_GROUP:I = 0x17

.field public static final greylist OP_GT:I = 0x9

.field public static final greylist OP_GTE:I = 0x8

.field public static final greylist OP_LITERAL:I = 0x15

.field public static final greylist OP_LOCATIONPATH:I = 0x1c

.field public static final greylist OP_LOCATIONPATHPATTERN:I = 0x1f

.field public static final greylist OP_LT:I = 0x7

.field public static final greylist OP_LTE:I = 0x6

.field public static final greylist OP_MATCHPATTERN:I = 0x1e

.field public static final greylist OP_MINUS:I = 0xb

.field public static final greylist OP_MOD:I = 0xe

.field public static final greylist OP_MULT:I = 0xc

.field public static final greylist OP_NEG:I = 0x10

.field public static final greylist OP_NOTEQUALS:I = 0x4

.field public static final greylist OP_NUMBER:I = 0x13

.field public static final greylist OP_NUMBERLIT:I = 0x1b

.field public static final greylist OP_OR:I = 0x2

.field public static final greylist OP_PLUS:I = 0xa

.field public static final greylist OP_PREDICATE:I = 0x1d

.field public static final greylist OP_QUO:I = 0xf

.field public static final greylist OP_STRING:I = 0x11

.field public static final greylist OP_UNION:I = 0x14

.field public static final greylist OP_VARIABLE:I = 0x16

.field public static final greylist OP_XPATH:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
