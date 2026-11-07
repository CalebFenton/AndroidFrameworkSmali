.class public Landroid/service/autofill/ImageTransformation$Builder;
.super Ljava/lang/Object;
.source "ImageTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDestroyed:Z

.field private final greylist-max-o mId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/ImageTransformation$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/service/autofill/ImageTransformation$Builder;)Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOptions(Landroid/service/autofill/ImageTransformation$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V
    .registers 5
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "regex"    # Ljava/util/regex/Pattern;
    .param p3, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    .line 132
    invoke-virtual {p0, p2, p3}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "regex"    # Ljava/util/regex/Pattern;
    .param p3, "resId"    # I
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    .line 148
    invoke-virtual {p0, p2, p3, p4}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;

    .line 149
    return-void
.end method

.method private greylist-max-o addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "regex"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 187
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 189
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    if-eqz p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 192
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    new-instance v1, Landroid/service/autofill/ImageTransformation$Option;

    invoke-direct {v1, p1, p2, p3}, Landroid/service/autofill/ImageTransformation$Option;-><init>(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method private greylist-max-o throwIfDestroyed()V
    .registers 3

    .line 206
    iget-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 207
    return-void
.end method


# virtual methods
.method public whitelist addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;
    .registers 4
    .param p1, "regex"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/autofill/ImageTransformation$Builder;->addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    .line 165
    return-object p0
.end method

.method public whitelist addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;
    .registers 5
    .param p1, "regex"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 181
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p2, v0}, Landroid/service/autofill/ImageTransformation$Builder;->addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    .line 182
    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/ImageTransformation;
    .registers 3

    .line 200
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    .line 202
    new-instance v0, Landroid/service/autofill/ImageTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/ImageTransformation;-><init>(Landroid/service/autofill/ImageTransformation$Builder;Landroid/service/autofill/ImageTransformation-IA;)V

    return-object v0
.end method
