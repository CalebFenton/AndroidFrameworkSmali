.class public final Landroid/icu/util/BytesTrie$State;
.super Ljava/lang/Object;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private bytes:[B

.field private pos:I

.field private remainingMatchLength:I

.field private root:I


# direct methods
.method static synthetic -get0(Landroid/icu/util/BytesTrie$State;)[B
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/util/BytesTrie$State;->bytes:[B

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/util/BytesTrie$State;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/util/BytesTrie$State;->pos:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/icu/util/BytesTrie$State;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/util/BytesTrie$State;->remainingMatchLength:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/icu/util/BytesTrie$State;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/util/BytesTrie$State;->root:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/icu/util/BytesTrie$State;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/util/BytesTrie$State;->bytes:[B

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/util/BytesTrie$State;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/util/BytesTrie$State;->pos:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/icu/util/BytesTrie$State;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/util/BytesTrie$State;->remainingMatchLength:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/icu/util/BytesTrie$State;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/util/BytesTrie$State;->root:I

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
