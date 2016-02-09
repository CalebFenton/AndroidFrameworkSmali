.class Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Landroid/icu/impl/Trie$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/PropsVectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGetFoldingOffset"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getFoldingOffset(I)I
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 522
    return p1
.end method
