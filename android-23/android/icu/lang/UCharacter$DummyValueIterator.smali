.class final Landroid/icu/lang/UCharacter$DummyValueIterator;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/util/ValueIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyValueIterator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/lang/UCharacter$DummyValueIterator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/lang/UCharacter$DummyValueIterator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public next(Landroid/icu/util/ValueIterator$Element;)Z
    .locals 1
    .param p1, "element"    # Landroid/icu/util/ValueIterator$Element;

    #@0
    .prologue
    .line 5560
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 5561
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 5562
    return-void
.end method
