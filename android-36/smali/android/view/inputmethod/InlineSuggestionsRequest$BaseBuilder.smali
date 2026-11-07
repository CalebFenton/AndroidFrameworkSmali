.class abstract Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;
.super Ljava/lang/Object;
.source "InlineSuggestionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist setHostDisplayId(I)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
.end method

.method abstract blacklist setHostInputToken(Landroid/os/IBinder;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
.end method

.method abstract blacklist setHostPackageName(Ljava/lang/String;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
.end method

.method abstract blacklist setInlinePresentationSpecs(Ljava/util/List;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;)",
            "Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;"
        }
    .end annotation
.end method
