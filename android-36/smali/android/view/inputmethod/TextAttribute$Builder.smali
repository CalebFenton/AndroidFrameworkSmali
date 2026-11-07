.class public final Landroid/view/inputmethod/TextAttribute$Builder;
.super Ljava/lang/Object;
.source "TextAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/TextAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mTextConversionSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/inputmethod/TextAttribute$Builder;)Landroid/os/PersistableBundle;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextAttribute$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextConversionSuggestions(Landroid/view/inputmethod/TextAttribute$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextAttribute$Builder;->mTextConversionSuggestions:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/TextAttribute$Builder;->mTextConversionSuggestions:Ljava/util/List;

    .line 76
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/TextAttribute$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/TextAttribute;
    .registers 3

    .line 113
    new-instance v0, Landroid/view/inputmethod/TextAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/TextAttribute;-><init>(Landroid/view/inputmethod/TextAttribute$Builder;Landroid/view/inputmethod/TextAttribute-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/view/inputmethod/TextAttribute$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 105
    iput-object p1, p0, Landroid/view/inputmethod/TextAttribute$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 106
    return-object p0
.end method

.method public whitelist setTextConversionSuggestions(Ljava/util/List;)Landroid/view/inputmethod/TextAttribute$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/inputmethod/TextAttribute$Builder;"
        }
    .end annotation

    .line 92
    .local p1, "textConversionSuggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAttribute$Builder;->mTextConversionSuggestions:Ljava/util/List;

    .line 93
    return-object p0
.end method
