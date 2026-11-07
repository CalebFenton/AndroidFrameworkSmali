.class public final Landroid/service/autofill/augmented/FillResponse;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/FillResponse$Builder;,
        Landroid/service/autofill/augmented/FillResponse$BaseBuilder;
    }
.end annotation


# instance fields
.field private blacklist mClientState:Landroid/os/Bundle;

.field private blacklist mFillWindow:Landroid/service/autofill/augmented/FillWindow;

.field private blacklist mInlineSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultClientState()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->defaultClientState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .registers 1

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->defaultFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInlineSuggestions()Ljava/util/List;
    .registers 1

    invoke-static {}, Landroid/service/autofill/augmented/FillResponse;->defaultInlineSuggestions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method constructor blacklist <init>(Landroid/service/autofill/augmented/FillWindow;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "fillWindow"    # Landroid/service/autofill/augmented/FillWindow;
    .param p3, "clientState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/augmented/FillWindow;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 96
    .local p2, "inlineSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/service/autofill/augmented/FillResponse;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    .line 98
    iput-object p2, p0, Landroid/service/autofill/augmented/FillResponse;->mInlineSuggestions:Ljava/util/List;

    .line 99
    iput-object p3, p0, Landroid/service/autofill/augmented/FillResponse;->mClientState:Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    return-void
.end method

.method private static blacklist defaultClientState()Landroid/os/Bundle;
    .registers 1

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .registers 1

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultInlineSuggestions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getClientState()Landroid/os/Bundle;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    return-object v0
.end method

.method public blacklist getInlineSuggestions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mInlineSuggestions:Ljava/util/List;

    return-object v0
.end method
