.class public final enum Landroid/icu/util/StringTrieBuilder$Option;
.super Ljava/lang/Enum;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/StringTrieBuilder$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

.field public static final enum FAST:Landroid/icu/util/StringTrieBuilder$Option;

.field public static final enum SMALL:Landroid/icu/util/StringTrieBuilder$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 29
    new-instance v0, Landroid/icu/util/StringTrieBuilder$Option;

    #@4
    const-string/jumbo v1, "FAST"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$Option;-><init>(Ljava/lang/String;I)V

    #@a
    .line 33
    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    #@c
    .line 34
    new-instance v0, Landroid/icu/util/StringTrieBuilder$Option;

    #@e
    const-string/jumbo v1, "SMALL"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/util/StringTrieBuilder$Option;-><init>(Ljava/lang/String;I)V

    #@14
    .line 44
    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    #@16
    .line 28
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/util/StringTrieBuilder$Option;

    #@19
    sget-object v1, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->$VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/StringTrieBuilder$Option;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    const-class v0, Landroid/icu/util/StringTrieBuilder$Option;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/StringTrieBuilder$Option;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/StringTrieBuilder$Option;
    .locals 1

    #@0
    .prologue
    .line 28
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->$VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

    #@2
    return-object v0
.end method
