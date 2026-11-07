.class final Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;
.super Landroid/view/ViewStructure$HtmlInfo$Builder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtmlInfoNodeBuilder"
.end annotation


# instance fields
.field private greylist-max-o mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private greylist-max-o mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNames(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValues(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 2488
    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo$Builder;-><init>()V

    .line 2489
    iput-object p1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    .line 2490
    return-void
.end method


# virtual methods
.method public whitelist addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2494
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 2495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    .line 2496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    .line 2498
    :cond_12
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    return-object p0
.end method

.method public blacklist build()Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .registers 3

    .line 2505
    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist build()Landroid/view/ViewStructure$HtmlInfo;
    .registers 2

    .line 2483
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v0

    return-object v0
.end method
