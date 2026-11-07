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
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/lang/UCharacter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/lang/UCharacter$DummyValueIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api next(Landroid/icu/util/ValueIterator$Element;)Z
    .registers 3
    .param p1, "element"    # Landroid/icu/util/ValueIterator$Element;

    .line 5451
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 1

    .line 5453
    return-void
.end method

.method public whitelist test-api setRange(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 5455
    return-void
.end method
