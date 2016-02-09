.class public final Landroid/icu/util/CharsTrie$State;
.super Ljava/lang/Object;
.source "CharsTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private chars:Ljava/lang/CharSequence;

.field private pos:I

.field private remainingMatchLength:I

.field private root:I


# direct methods
.method static synthetic -get0(Landroid/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/util/CharsTrie$State;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/util/CharsTrie$State;->pos:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/icu/util/CharsTrie$State;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/util/CharsTrie$State;->remainingMatchLength:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/icu/util/CharsTrie$State;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/util/CharsTrie$State;->root:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/util/CharsTrie$State;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/util/CharsTrie$State;->pos:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/icu/util/CharsTrie$State;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/util/CharsTrie$State;->remainingMatchLength:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/icu/util/CharsTrie$State;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/util/CharsTrie$State;->root:I

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
