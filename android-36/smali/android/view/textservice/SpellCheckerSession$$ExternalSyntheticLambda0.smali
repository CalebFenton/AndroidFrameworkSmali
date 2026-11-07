.class public final synthetic Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/textservice/SpellCheckerSession;

.field public final synthetic blacklist f$1:[Landroid/view/textservice/SentenceSuggestionsInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;->f$0:Landroid/view/textservice/SpellCheckerSession;

    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;->f$1:[Landroid/view/textservice/SentenceSuggestionsInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;->f$0:Landroid/view/textservice/SpellCheckerSession;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;->f$1:[Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSession;->$r8$lambda$HLpz1ncBxKJFYFxjJQck1S0pODE(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method
