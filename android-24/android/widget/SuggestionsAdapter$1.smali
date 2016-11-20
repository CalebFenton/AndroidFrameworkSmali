.class Landroid/widget/SuggestionsAdapter$1;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Landroid/widget/SuggestionsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/SuggestionsAdapter;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SuggestionsAdapter;

    #@0
    .prologue
    .line 128
    iput-object p1, p0, Landroid/widget/SuggestionsAdapter$1;->this$0:Landroid/widget/SuggestionsAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 130
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    #@8
    .line 128
    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 133
    if-nez p1, :cond_0

    #@2
    const-wide/16 v2, 0x0

    #@4
    return-wide v2

    #@5
    .line 135
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v2

    #@9
    iget v3, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    #@b
    if-ge v2, v3, :cond_1

    #@d
    const-wide/16 v0, 0x1f4

    #@f
    .line 136
    .local v0, "delay":J
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result v2

    #@13
    iput v2, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    #@15
    .line 137
    return-wide v0

    #@16
    .line 135
    .end local v0    # "delay":J
    :cond_1
    const-wide/16 v0, 0x0

    #@18
    .restart local v0    # "delay":J
    goto :goto_0
.end method
