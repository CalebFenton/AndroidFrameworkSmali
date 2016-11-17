.class public final enum Landroid/graphics/PorterDuff$Mode;
.super Ljava/lang/Enum;
.source "PorterDuff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PorterDuff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/PorterDuff$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/PorterDuff$Mode;

.field public static final enum ADD:Landroid/graphics/PorterDuff$Mode;

.field public static final enum CLEAR:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DARKEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum LIGHTEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum MULTIPLY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum OVERLAY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SCREEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum XOR:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 23
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@7
    const-string/jumbo v1, "CLEAR"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@d
    .line 24
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 25
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@11
    const-string/jumbo v1, "SRC"

    #@14
    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@17
    .line 26
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@19
    .line 27
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@1b
    const-string/jumbo v1, "DST"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@21
    .line 28
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    #@23
    .line 29
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@25
    const-string/jumbo v1, "SRC_OVER"

    #@28
    invoke-direct {v0, v1, v7, v7}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 30
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@2d
    .line 31
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@2f
    const-string/jumbo v1, "DST_OVER"

    #@32
    invoke-direct {v0, v1, v8, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@35
    .line 32
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    #@37
    .line 33
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@39
    const-string/jumbo v1, "SRC_IN"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 34
    const/4 v3, 0x5

    #@3e
    .line 33
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@41
    .line 34
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@43
    .line 35
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@45
    const-string/jumbo v1, "DST_IN"

    #@48
    const/4 v2, 0x6

    #@49
    .line 36
    const/4 v3, 0x6

    #@4a
    .line 35
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@4d
    .line 36
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    #@4f
    .line 37
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@51
    const-string/jumbo v1, "SRC_OUT"

    #@54
    const/4 v2, 0x7

    #@55
    .line 38
    const/4 v3, 0x7

    #@56
    .line 37
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@59
    .line 38
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    #@5b
    .line 39
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@5d
    const-string/jumbo v1, "DST_OUT"

    #@60
    const/16 v2, 0x8

    #@62
    .line 40
    const/16 v3, 0x8

    #@64
    .line 39
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@67
    .line 40
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@69
    .line 41
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@6b
    const-string/jumbo v1, "SRC_ATOP"

    #@6e
    const/16 v2, 0x9

    #@70
    .line 42
    const/16 v3, 0x9

    #@72
    .line 41
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@75
    .line 42
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@77
    .line 43
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@79
    const-string/jumbo v1, "DST_ATOP"

    #@7c
    const/16 v2, 0xa

    #@7e
    .line 44
    const/16 v3, 0xa

    #@80
    .line 43
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@83
    .line 44
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@85
    .line 45
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@87
    const-string/jumbo v1, "XOR"

    #@8a
    const/16 v2, 0xb

    #@8c
    .line 46
    const/16 v3, 0xb

    #@8e
    .line 45
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@91
    .line 46
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    #@93
    .line 47
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@95
    const-string/jumbo v1, "DARKEN"

    #@98
    const/16 v2, 0xc

    #@9a
    .line 49
    const/16 v3, 0x10

    #@9c
    .line 47
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@9f
    .line 49
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    #@a1
    .line 50
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@a3
    const-string/jumbo v1, "LIGHTEN"

    #@a6
    const/16 v2, 0xd

    #@a8
    .line 52
    const/16 v3, 0x11

    #@aa
    .line 50
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@ad
    .line 52
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    #@af
    .line 53
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@b1
    const-string/jumbo v1, "MULTIPLY"

    #@b4
    const/16 v2, 0xe

    #@b6
    .line 54
    const/16 v3, 0xd

    #@b8
    .line 53
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@bb
    .line 54
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@bd
    .line 55
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@bf
    const-string/jumbo v1, "SCREEN"

    #@c2
    const/16 v2, 0xf

    #@c4
    .line 56
    const/16 v3, 0xe

    #@c6
    .line 55
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@c9
    .line 56
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@cb
    .line 57
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@cd
    const-string/jumbo v1, "ADD"

    #@d0
    const/16 v2, 0x10

    #@d2
    .line 58
    const/16 v3, 0xc

    #@d4
    .line 57
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@d7
    .line 58
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@d9
    .line 59
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    #@db
    const-string/jumbo v1, "OVERLAY"

    #@de
    const/16 v2, 0x11

    #@e0
    const/16 v3, 0xf

    #@e2
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    #@e5
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    #@e7
    .line 22
    const/16 v0, 0x12

    #@e9
    new-array v0, v0, [Landroid/graphics/PorterDuff$Mode;

    #@eb
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@ed
    aput-object v1, v0, v4

    #@ef
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@f1
    aput-object v1, v0, v5

    #@f3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    #@f5
    aput-object v1, v0, v6

    #@f7
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@f9
    aput-object v1, v0, v7

    #@fb
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    #@fd
    aput-object v1, v0, v8

    #@ff
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@101
    const/4 v2, 0x5

    #@102
    aput-object v1, v0, v2

    #@104
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    #@106
    const/4 v2, 0x6

    #@107
    aput-object v1, v0, v2

    #@109
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    #@10b
    const/4 v2, 0x7

    #@10c
    aput-object v1, v0, v2

    #@10e
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@110
    const/16 v2, 0x8

    #@112
    aput-object v1, v0, v2

    #@114
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@116
    const/16 v2, 0x9

    #@118
    aput-object v1, v0, v2

    #@11a
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@11c
    const/16 v2, 0xa

    #@11e
    aput-object v1, v0, v2

    #@120
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    #@122
    const/16 v2, 0xb

    #@124
    aput-object v1, v0, v2

    #@126
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    #@128
    const/16 v2, 0xc

    #@12a
    aput-object v1, v0, v2

    #@12c
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    #@12e
    const/16 v2, 0xd

    #@130
    aput-object v1, v0, v2

    #@132
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@134
    const/16 v2, 0xe

    #@136
    aput-object v1, v0, v2

    #@138
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@13a
    const/16 v2, 0xf

    #@13c
    aput-object v1, v0, v2

    #@13e
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@140
    const/16 v2, 0x10

    #@142
    aput-object v1, v0, v2

    #@144
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    #@146
    const/16 v2, 0x11

    #@148
    aput-object v1, v0, v2

    #@14a
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    #@14c
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 62
    iput p3, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@5
    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 22
    const-class v0, Landroid/graphics/PorterDuff$Mode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 22
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method
