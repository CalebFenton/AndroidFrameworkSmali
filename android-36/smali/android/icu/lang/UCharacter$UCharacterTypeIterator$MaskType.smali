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
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/lang/UCharacter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist map(I)I
    .registers 3
    .param p1, "value"    # I

    .line 5406
    and-int/lit8 v0, p1, 0x1f

    return v0
.end method
