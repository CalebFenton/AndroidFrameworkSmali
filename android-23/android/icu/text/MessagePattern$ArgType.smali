.class public final enum Landroid/icu/text/MessagePattern$ArgType;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePattern$ArgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum CHOICE:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum NONE:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum PLURAL:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum SELECT:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum SIMPLE:Landroid/icu/text/MessagePattern$ArgType;


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
    .line 806
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    #@7
    const-string/jumbo v1, "NONE"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    #@d
    .line 810
    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@f
    .line 811
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    #@11
    const-string/jumbo v1, "SIMPLE"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    #@17
    .line 816
    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@19
    .line 817
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    #@1b
    const-string/jumbo v1, "CHOICE"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    #@21
    .line 822
    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@23
    .line 823
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    #@25
    const-string/jumbo v1, "PLURAL"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 832
    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@2d
    .line 833
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    #@2f
    const-string/jumbo v1, "SELECT"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    #@35
    .line 837
    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@37
    .line 838
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    #@39
    const-string/jumbo v1, "SELECTORDINAL"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    #@40
    .line 843
    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    #@42
    .line 805
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/icu/text/MessagePattern$ArgType;

    #@45
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->$VALUES:[Landroid/icu/text/MessagePattern$ArgType;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 805
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ArgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 805
    const-class v0, Landroid/icu/text/MessagePattern$ArgType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$ArgType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    #@0
    .prologue
    .line 805
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->$VALUES:[Landroid/icu/text/MessagePattern$ArgType;

    #@2
    return-object v0
.end method


# virtual methods
.method public hasPluralStyle()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 851
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

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
