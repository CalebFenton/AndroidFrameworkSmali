.class public Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SentenceWordItem"
.end annotation


# instance fields
.field public final mLength:I

.field public final mStart:I

.field public final mTextInfo:Landroid/view/textservice/TextInfo;


# direct methods
.method public constructor <init>(Landroid/view/textservice/TextInfo;II)V
    .locals 1
    .param p1, "ti"    # Landroid/view/textservice/TextInfo;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 344
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    #@5
    .line 345
    iput p2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    #@7
    .line 346
    sub-int v0, p3, p2

    #@9
    iput v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    #@b
    .line 343
    return-void
.end method
