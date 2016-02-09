.class final Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/impl/Trie2$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter$UCharacterTypeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaskType"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public map(I)I
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5516
    and-int/lit8 v0, p1, 0x1f

    #@2
    return v0
.end method
