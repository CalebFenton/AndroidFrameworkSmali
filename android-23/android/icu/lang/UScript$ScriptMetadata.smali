.class final Landroid/icu/lang/UScript$ScriptMetadata;
.super Ljava/lang/Object;
.source "UScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScriptMetadata"
.end annotation


# static fields
.field private static final ASPIRATIONAL:I = 0x800000

.field private static final CASED:I = 0x4000000

.field private static final EXCLUSION:I = 0x400000

.field private static final LB_LETTERS:I = 0x2000000

.field private static final LIMITED_USE:I = 0x600000

.field private static final RECOMMENDED:I = 0xa00000

.field private static final RTL:I = 0x1000000

.field private static final SCRIPT_PROPS:[I

.field private static final UNKNOWN:I = 0x200000


# direct methods
.method static synthetic -wrap0(I)I
    .locals 1
    .param p0, "script"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/lang/UScript$ScriptMetadata;->getScriptProps(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1247
    const/16 v0, 0xa7

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/lang/UScript$ScriptMetadata;->SCRIPT_PROPS:[I

    #@9
    .line 1231
    return-void

    #@a
    .line 1247
    :array_0
    .array-data 4
        0xa00040
        0x200308
        0x1a00628
        0x4a00531
        0xa00995
        0x2a03105
        0x6013c4
        0x44003e2
        0x4a0042f
        0x4410414
        0xa00905
        0xa012a0
        0xa010d3
        0x410330
        0x4a003a9
        0xa00a95
        0xa00a15
        0x2a05b57
        0xa0ac00
        0x1a005d0
        0x2a0304b
        0xa00c95
        0x2a030ab
        0x2a01780
        0x2a00ea5
        0x4a0004c
        0xa00d15
        0x801826
        0x2a01000
        0x40168f
        0x410300
        0xa00b15
        0x4016a0
        0xa00d85
        0x1600710
        0xa00b95
        0xa00c15
        0x1a0078c
        0x2a00e17
        0xa00f40
        0x8014c0
        0x280a288
        0x401703
        0x401723
        0x401743
        0x401763
        0x202800
        0x1410800
        0x601900
        0x410000
        0x410480
        0x410450
        0x2601950
        0x410380
        0x0
        0x401a00
        0x4402c00
        0x1410a00
        0x60a800
        0x2601980
        0x802d30
        0x4103a0
        0x601b05
        0x601bc0
        0x0
        0x411005
        0x60aa00
        0x0
        0x0
        0x0
        0x0
        0x413153
        0x0
        0x2a05b57
        0x2a05b57
        0x416b1c
        0x0
        0x0
        0x60a984
        0x60a90a
        0x0
        0x0
        0x601c00
        0x410647
        0x1600840
        0x0
        0x1410980
        0x16007ca
        0x1410c00
        0x41036b
        0x40a840
        0x1410900
        0x816f00
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x60a549
        0x0
        0x412000
        0x0
        0x20fdd0
        0x4102a0
        0x2a0304b
        0x2601a20
        0x410280
        0x1410920
        0x601c5a
        0x40a930
        0x60a882
        0x0
        0x601b83
        0x0
        0x60abc0
        0x1410840
        0x1410b00
        0x611103
        0xa0ac00
        0x411083
        0x1410ad8
        0x1410b60
        0x1410b8f
        0x0
        0x1410b40
        0x1400800
        0x260aa80
        0x0
        0x0
        0x60a6a0
        0x60a4d0
        0x0
        0x1410a60
        0x416ae6
        0x41bc20
        0x410500
        0x411315
        0x0
        0x0
        0x141e802
        0x14109a0
        0x1410a95
        0x1410896
        0x1410873
        0x4112be
        0x44118b4
        0x0
        0x0
        0x416a4f
        0x0
        0x411183
        0x4110d0
        0x411680
        0x0
        0x0
        0x0
        0x411208
        0x411484
        0x410537
        0x411152
        0x0
        0x0
        0x41160e
        0x0
        0x411ac0
        0x41158e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static final getScriptProps(I)I
    .locals 2
    .param p0, "script"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1422
    if-ltz p0, :cond_0

    #@3
    sget-object v0, Landroid/icu/lang/UScript$ScriptMetadata;->SCRIPT_PROPS:[I

    #@5
    array-length v0, v0

    #@6
    if-ge p0, v0, :cond_0

    #@8
    .line 1423
    sget-object v0, Landroid/icu/lang/UScript$ScriptMetadata;->SCRIPT_PROPS:[I

    #@a
    aget v0, v0, p0

    #@c
    return v0

    #@d
    .line 1425
    :cond_0
    return v1
.end method
