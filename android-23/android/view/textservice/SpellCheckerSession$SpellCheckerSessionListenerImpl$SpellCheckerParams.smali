.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerParams"
.end annotation


# instance fields
.field public final mSequentialWords:Z

.field public mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field public final mSuggestionsLimit:I

.field public final mTextInfos:[Landroid/view/textservice/TextInfo;

.field public final mWhat:I


# direct methods
.method public constructor <init>(I[Landroid/view/textservice/TextInfo;IZ)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p3, "suggestionsLimit"    # I
    .param p4, "sequentialWords"    # Z

    #@0
    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    iput p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@5
    .line 276
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    #@7
    .line 277
    iput p3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    #@9
    .line 278
    iput-boolean p4, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    #@b
    .line 274
    return-void
.end method
