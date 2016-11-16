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
.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method constructor <init>(Landroid/widget/SpellChecker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SpellChecker;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Landroid/widget/SpellChecker$1;->this$0:Landroid/widget/SpellChecker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 436
    iget-object v3, p0, Landroid/widget/SpellChecker$1;->this$0:Landroid/widget/SpellChecker;

    #@2
    invoke-static {v3}, Landroid/widget/SpellChecker;->-get5(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;

    #@5
    move-result-object v3

    #@6
    array-length v1, v3

    #@7
    .line 437
    .local v1, "length":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 438
    iget-object v3, p0, Landroid/widget/SpellChecker$1;->this$0:Landroid/widget/SpellChecker;

    #@c
    invoke-static {v3}, Landroid/widget/SpellChecker;->-get5(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;

    #@f
    move-result-object v3

    #@10
    aget-object v2, v3, v0

    #@12
    .line 439
    .local v2, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 440
    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    #@1b
    .line 435
    .end local v2    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_0
    return-void

    #@1c
    .line 437
    .restart local v2    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0
.end method
