.class final Landroid/icu/text/BreakCTDictionary$CompactTrieNodeFlags;
.super Ljava/lang/Object;
.source "BreakCTDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakCTDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompactTrieNodeFlags"
.end annotation


# static fields
.field static final kCountMask:I = 0xfff

.field static final kFlagMask:I = 0xf000

.field static final kParentEndsWord:I = 0x2000

.field static final kReservedFlag1:I = 0x4000

.field static final kReservedFlag2:I = 0x8000

.field static final kVerticalNode:I = 0x1000


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
