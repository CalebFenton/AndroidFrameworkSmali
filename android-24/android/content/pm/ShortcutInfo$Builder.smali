.class public Landroid/content/pm/ShortcutInfo$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivityComponent:Landroid/content/ComponentName;

.field private mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/PersistableBundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method static synthetic -get0(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivityComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mWeight:I

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 352
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    #@5
    .line 351
    return-void
.end method


# virtual methods
.method public build()Landroid/content/pm/ShortcutInfo;
    .locals 2

    #@0
    .prologue
    .line 472
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo;)V

    #@6
    return-object v0
.end method

.method public setActivityComponent(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "activityComponent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 377
    const-string/jumbo v0, "activityComponent"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/content/ComponentName;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivityComponent:Landroid/content/ComponentName;

    #@b
    .line 378
    return-object p0
.end method

.method public setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ShortcutInfo$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .line 433
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    #@2
    .line 434
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 463
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@2
    .line 464
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 397
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@6
    .line 398
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    const-string/jumbo v0, "id"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    #@b
    .line 361
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 443
    const-string/jumbo v0, "intent"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/content/Intent;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntent:Landroid/content/Intent;

    #@b
    .line 444
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 421
    const-string/jumbo v0, "text"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/String;

    #@b
    .line 422
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    #@0
    .prologue
    .line 409
    const-string/jumbo v0, "title"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/String;

    #@b
    .line 410
    return-object p0
.end method

.method public setWeight(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .param p1, "weight"    # I

    #@0
    .prologue
    .line 453
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mWeight:I

    #@2
    .line 454
    return-object p0
.end method
