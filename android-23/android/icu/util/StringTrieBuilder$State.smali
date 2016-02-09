.class final enum Landroid/icu/util/StringTrieBuilder$State;
.super Ljava/lang/Enum;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/StringTrieBuilder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum ADDING:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum BUILT:Landroid/icu/util/StringTrieBuilder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 875
    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    #@6
    const-string/jumbo v1, "ADDING"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    #@e
    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    #@10
    const-string/jumbo v1, "BUILDING_FAST"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    #@18
    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    #@1a
    const-string/jumbo v1, "BUILDING_SMALL"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    #@22
    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    #@24
    const-string/jumbo v1, "BUILT"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    #@2c
    .line 874
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/icu/util/StringTrieBuilder$State;

    #@2f
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->$VALUES:[Landroid/icu/util/StringTrieBuilder$State;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 874
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/StringTrieBuilder$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 874
    const-class v0, Landroid/icu/util/StringTrieBuilder$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/StringTrieBuilder$State;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/StringTrieBuilder$State;
    .locals 1

    #@0
    .prologue
    .line 874
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->$VALUES:[Landroid/icu/util/StringTrieBuilder$State;

    #@2
    return-object v0
.end method
