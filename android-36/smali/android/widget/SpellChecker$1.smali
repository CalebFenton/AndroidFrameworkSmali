.class Landroid/widget/SpellChecker$1;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SpellChecker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SpellChecker;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SpellChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 520
    iput-object p1, p0, Landroid/widget/SpellChecker$1;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 523
    iget-object v0, p0, Landroid/widget/SpellChecker$1;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmSpellParsers(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;

    move-result-object v0

    array-length v0, v0

    .line 524
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1f

    .line 525
    iget-object v2, p0, Landroid/widget/SpellChecker$1;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->-$$Nest$fgetmSpellParsers(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;

    move-result-object v2

    aget-object v2, v2, v1

    .line 526
    .local v2, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 527
    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    .line 528
    goto :goto_1f

    .line 524
    .end local v2    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 531
    .end local v1    # "i":I
    :cond_1f
    :goto_1f
    return-void
.end method
