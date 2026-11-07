.class public final Landroid/view/inputmethod/InlineSuggestion;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;,
        Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestion"

.field static blacklist sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

.field private final blacklist mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

.field private blacklist mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

.field private blacklist mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method public static synthetic blacklist $r8$lambda$kSn-Zd1tPJ9C01qIBnKzXgrKHvg(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion;->lambda$inflate$2(Landroid/widget/inline/InlineContentView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mmGB28AqJBMoLUJaA2S0n1gyx8k(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion;->lambda$inflate$3(Landroid/widget/inline/InlineContentView;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 613
    const-class v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    .line 614
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    .line 617
    sget-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 618
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;-><init>(Landroid/view/inputmethod/InlineSuggestion-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    .line 624
    :cond_18
    const-class v0, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;

    .line 625
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    .line 628
    sget-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_2f

    .line 629
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;-><init>(Landroid/view/inputmethod/InlineSuggestion-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    .line 679
    :cond_2f
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestion$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 663
    .local v0, "flg":B
    sget-object v1, Landroid/view/inputmethod/InlineSuggestionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 664
    .local v1, "info":Landroid/view/inputmethod/InlineSuggestionInfo;
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    move-object v2, v3

    goto :goto_1e

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v2

    .line 665
    .local v2, "contentProvider":Lcom/android/internal/view/inline/IInlineContentProvider;
    :goto_1e
    sget-object v4, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 666
    .local v4, "inlineContentCallback":Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    sget-object v5, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    invoke-interface {v5, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 668
    .local v5, "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 669
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v6, v3, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 671
    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    .line 672
    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 673
    iput-object v5, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 676
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V
    .registers 4
    .param p1, "info"    # Landroid/view/inputmethod/InlineSuggestionInfo;
    .param p2, "contentProvider"    # Lcom/android/internal/view/inline/IInlineContentProvider;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 8
    .param p1, "info"    # Landroid/view/inputmethod/InlineSuggestionInfo;
    .param p2, "contentProvider"    # Lcom/android/internal/view/inline/IInlineContentProvider;
    .param p3, "inlineContentCallback"    # Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .param p4, "inlineTooltipUi"    # Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 523
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 525
    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    .line 526
    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 527
    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 530
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    return-void
.end method

.method private declared-synchronized blacklist getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "inlineTooltipUi"    # Lcom/android/internal/view/inline/InlineTooltipUi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ")",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;"
        }
    .end annotation

    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-nez v0, :cond_12

    .line 201
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    .end local p4    # "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    .local v2, "context":Landroid/content/Context;
    .local v4, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    .local v6, "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;-><init>(Landroid/content/Context;Lcom/android/internal/view/inline/IInlineContentProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    monitor-exit p0

    return-object v1

    .line 199
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    .end local v6    # "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    .end local p0    # "this":Landroid/view/inputmethod/InlineSuggestion;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    .restart local p4    # "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    :cond_12
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    .end local p4    # "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v4    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local v5    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    .restart local v6    # "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    :try_start_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already called #inflate()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    .end local v6    # "inlineTooltipUi":Lcom/android/internal/view/inline/InlineTooltipUi;
    :catchall_1e
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1e

    throw p1
.end method

.method private static blacklist isValid(III)Z
    .registers 5
    .param p0, "actual"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 189
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_5

    .line 190
    return v1

    .line 192
    :cond_5
    if-lt p0, p1, :cond_a

    if-gt p0, p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method static synthetic blacklist lambda$inflate$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 164
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$inflate$1(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 173
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$inflate$2(Landroid/widget/inline/InlineContentView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/inline/InlineContentView;

    .line 180
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTooltipView(Landroid/widget/inline/InlineContentView;)V

    return-void
.end method

.method private synthetic blacklist lambda$inflate$3(Landroid/widget/inline/InlineContentView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/inline/InlineContentView;

    .line 180
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public static blacklist newInlineSuggestion(Landroid/view/inputmethod/InlineSuggestionInfo;)Landroid/view/inputmethod/InlineSuggestion;
    .registers 3
    .param p0, "info"    # Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 96
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 586
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 587
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 589
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    .line 591
    .local v2, "that":Landroid/view/inputmethod/InlineSuggestion;
    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 592
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    .line 593
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 594
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 595
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 591
    :goto_3f
    return v0

    .line 587
    .end local v2    # "that":Landroid/view/inputmethod/InlineSuggestion;
    :cond_40
    :goto_40
    return v1
.end method

.method public blacklist getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;
    .registers 2

    .line 542
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    return-object v0
.end method

.method public whitelist getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;
    .registers 2

    .line 534
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    return-object v0
.end method

.method public blacklist getInlineContentCallback()Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    return-object v0
.end method

.method public blacklist getInlineTooltipUi()Lcom/android/internal/view/inline/InlineTooltipUi;
    .registers 2

    .line 562
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 604
    const/4 v0, 0x1

    .line 605
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 606
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 607
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 608
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 609
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist inflate(Landroid/content/Context;Landroid/util/Size;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Size;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v0

    .line 144
    .local v0, "minSize":Landroid/util/Size;
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v1

    .line 145
    .local v1, "maxSize":Landroid/util/Size;
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 146
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 152
    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InlineSuggestionInfo;->getTooltip()Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v2

    .line 153
    .local v2, "toolTip":Landroid/view/inputmethod/InlineSuggestion;
    const/4 v3, 0x0

    if-eqz v2, :cond_4d

    .line 154
    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-nez v4, :cond_4f

    .line 155
    new-instance v4, Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {v4, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    goto :goto_4f

    .line 158
    :cond_4d
    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 161
    :cond_4f
    :goto_4f
    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0, p1, p3, p4, v4}, Landroid/view/inputmethod/InlineSuggestion;->getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    move-result-object v4

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    .line 163
    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-nez v4, :cond_66

    .line 164
    new-instance v4, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda0;

    invoke-direct {v4, p4}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 166
    return-void

    .line 169
    :cond_66
    :try_start_66
    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    new-instance v6, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;

    iget-object v7, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-direct {v6, v7}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/view/inline/IInlineContentProvider;->provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_7a} :catch_7b

    .line 174
    goto :goto_9c

    .line 171
    :catch_7b
    move-exception v3

    .line 172
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating suggestion content surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InlineSuggestion"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v4, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda1;

    invoke-direct {v4, p4}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_9c
    if-nez v2, :cond_9f

    return-void

    .line 177
    :cond_9f
    new-instance v3, Landroid/util/Size;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    .line 179
    .local v3, "tooltipSize":Landroid/util/Size;
    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InlineSuggestionInfo;->getTooltip()Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v4

    new-instance v5, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/InlineSuggestion;)V

    invoke-virtual {v4, p1, v3, p3, v5}, Landroid/view/inputmethod/InlineSuggestion;->inflate(Landroid/content/Context;Landroid/util/Size;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 182
    return-void

    .line 147
    .end local v2    # "toolTip":Landroid/view/inputmethod/InlineSuggestion;
    .end local v3    # "tooltipSize":Landroid/util/Size;
    :cond_b4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size is neither between min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nor wrap_content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestion { info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineContentCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineTooltipUi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "flg":B
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 642
    :cond_8
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 643
    :cond_f
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 644
    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 645
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 646
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 647
    :cond_27
    sget-object v1, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 648
    sget-object v1, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 649
    return-void
.end method
