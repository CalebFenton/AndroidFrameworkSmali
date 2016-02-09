.class public final enum Landroid/icu/text/MessagePattern$Part$Type;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePattern$Part$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 627
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@7
    const-string/jumbo v1, "MSG_START"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@d
    .line 636
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@f
    .line 637
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@11
    const-string/jumbo v1, "MSG_LIMIT"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@17
    .line 645
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@19
    .line 646
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@1b
    const-string/jumbo v1, "SKIP_SYNTAX"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@21
    .line 653
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@23
    .line 654
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@25
    const-string/jumbo v1, "INSERT_CHAR"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 660
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@2d
    .line 661
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@2f
    const-string/jumbo v1, "REPLACE_NUMBER"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@35
    .line 668
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@37
    .line 669
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@39
    const-string/jumbo v1, "ARG_START"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@40
    .line 679
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@42
    .line 680
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@44
    const-string/jumbo v1, "ARG_LIMIT"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 686
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@4d
    .line 687
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@4f
    const-string/jumbo v1, "ARG_NUMBER"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@56
    .line 691
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@58
    .line 692
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@5a
    const-string/jumbo v1, "ARG_NAME"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@62
    .line 697
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    #@64
    .line 698
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@66
    const-string/jumbo v1, "ARG_TYPE"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 703
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    #@70
    .line 704
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@72
    const-string/jumbo v1, "ARG_STYLE"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 709
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@7c
    .line 710
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@7e
    const-string/jumbo v1, "ARG_SELECTOR"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@86
    .line 715
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@88
    .line 716
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@8a
    const-string/jumbo v1, "ARG_INT"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@92
    .line 722
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    #@94
    .line 723
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@96
    const-string/jumbo v1, "ARG_DOUBLE"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    #@9e
    .line 730
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@a0
    .line 626
    const/16 v0, 0xe

    #@a2
    new-array v0, v0, [Landroid/icu/text/MessagePattern$Part$Type;

    #@a4
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@a6
    aput-object v1, v0, v3

    #@a8
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@aa
    aput-object v1, v0, v4

    #@ac
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@ae
    aput-object v1, v0, v5

    #@b0
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@b2
    aput-object v1, v0, v6

    #@b4
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@b6
    aput-object v1, v0, v7

    #@b8
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@ba
    const/4 v2, 0x5

    #@bb
    aput-object v1, v0, v2

    #@bd
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@bf
    const/4 v2, 0x6

    #@c0
    aput-object v1, v0, v2

    #@c2
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@c4
    const/4 v2, 0x7

    #@c5
    aput-object v1, v0, v2

    #@c7
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    #@c9
    const/16 v2, 0x8

    #@cb
    aput-object v1, v0, v2

    #@cd
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    #@cf
    const/16 v2, 0x9

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@d5
    const/16 v2, 0xa

    #@d7
    aput-object v1, v0, v2

    #@d9
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@db
    const/16 v2, 0xb

    #@dd
    aput-object v1, v0, v2

    #@df
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    #@e1
    const/16 v2, 0xc

    #@e3
    aput-object v1, v0, v2

    #@e5
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@e7
    const/16 v2, 0xd

    #@e9
    aput-object v1, v0, v2

    #@eb
    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

    #@ed
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 626
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 626
    const-class v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$Part$Type;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    #@0
    .prologue
    .line 626
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

    #@2
    return-object v0
.end method


# virtual methods
.method public hasNumericValue()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 739
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
