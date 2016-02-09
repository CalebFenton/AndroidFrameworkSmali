.class public Landroid/inputmethodservice/ExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "ExtractEditLayout.java"


# instance fields
.field mExtractActionButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 37
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@3
    .line 44
    const v0, 0x102034a

    #@6
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/Button;

    #@c
    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    #@e
    .line 42
    return-void
.end method
