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
.field private greylist-max-o mActivity:Landroid/content/ComponentName;

.field private blacklist mCapabilityBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDisabledMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mDisabledMessageResId:I

.field private blacklist mExcludedSurfaces:I

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mIntents:[Landroid/content/Intent;

.field private blacklist mIsLongLived:Z

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private blacklist mPersons:[Landroid/app/Person;

.field private greylist-max-o mRank:I

.field private blacklist mStartingThemeResId:I

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextResId:I

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleResId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilityBindings(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCategories(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisabledMessage(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisabledMessageResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExcludedSurfaces(Landroid/content/pm/ShortcutInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExcludedSurfaces:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntents(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsLongLived(Landroid/content/pm/ShortcutInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIsLongLived:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocusId(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/LocusId;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersons(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/app/Person;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mPersons:[Landroid/app/Person;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRank(Landroid/content/pm/ShortcutInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartingThemeResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mStartingThemeResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleResId(Landroid/content/pm/ShortcutInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    .line 1106
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    .line 1107
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    .line 1127
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    .line 1128
    const-string/jumbo v0, "id cannot be empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    .line 1129
    return-void
.end method


# virtual methods
.method public whitelist addCapabilityBinding(Landroid/content/pm/Capability;Landroid/content/pm/CapabilityParams;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 7
    .param p1, "capability"    # Landroid/content/pm/Capability;
    .param p2, "capabilityParams"    # Landroid/content/pm/CapabilityParams;

    .line 1477
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    if-nez v0, :cond_f

    .line 1479
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    .line 1481
    :cond_f
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1482
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :cond_2a
    if-nez p2, :cond_2d

    .line 1485
    return-object p0

    .line 1487
    :cond_2d
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1488
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Landroid/content/pm/CapabilityParams;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/CapabilityParams;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    return-object p0
.end method

.method public whitelist build()Landroid/content/pm/ShortcutInfo;
    .registers 3

    .line 1513
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo-IA;)V

    return-object v0
.end method

.method public whitelist setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 1171
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    .line 1172
    return-object p0
.end method

.method public whitelist setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ShortcutInfo$Builder;"
        }
    .end annotation

    .line 1334
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    .line 1335
    return-object p0
.end method

.method public whitelist setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "disabledMessage"    # Ljava/lang/CharSequence;

    .line 1312
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "disabledMessageResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1314
    nop

    .line 1315
    const-string v0, "disabledMessage cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 1317
    return-object p0
.end method

.method public greylist-max-o setDisabledMessageResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "disabledMessageResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1299
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "disabledMessage already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1300
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    .line 1301
    return-object p0
.end method

.method public whitelist setExcludedFromSurfaces(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 2
    .param p1, "surfaces"    # I

    .line 1504
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExcludedSurfaces:I

    .line 1505
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 1459
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1460
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1197
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1198
    return-object p0
.end method

.method public greylist-max-o setId(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    const-string/jumbo v0, "id cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    .line 1117
    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1358
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 7
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 1375
    const-string/jumbo v0, "intents cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1376
    array-length v0, p1

    if-eqz v0, :cond_29

    .line 1379
    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_22

    aget-object v2, p1, v1

    .line 1380
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "intents cannot contain null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1381
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "intent\'s action must be set"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1379
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1384
    :cond_22
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->-$$Nest$smcloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    .line 1385
    return-object p0

    .line 1377
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intents cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLocusId(Landroid/content/LocusId;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "locusId"    # Landroid/content/LocusId;

    .line 1140
    const-string/jumbo v0, "locusId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 1141
    return-object p0
.end method

.method public whitelist setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "longLabel"    # Ljava/lang/CharSequence;

    .line 1264
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string/jumbo v1, "longLabelResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1265
    const-string/jumbo v0, "longLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    .line 1266
    return-object p0
.end method

.method public greylist-max-o setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "longLabelResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1247
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string/jumbo v1, "longLabel already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1248
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    .line 1249
    return-object p0
.end method

.method public whitelist setLongLived(Z)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 2
    .param p1, "longLived"    # Z

    .line 1433
    iput-boolean p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIsLongLived:Z

    .line 1434
    return-object p0
.end method

.method public whitelist setPerson(Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "person"    # Landroid/app/Person;

    .line 1404
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/Person;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setPersons([Landroid/app/Person;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 6
    .param p1, "persons"    # [Landroid/app/Person;

    .line 1415
    const-string/jumbo v0, "persons cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1416
    array-length v0, p1

    if-eqz v0, :cond_1f

    .line 1419
    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    .line 1420
    .local v2, "person":Landroid/app/Person;
    const-string/jumbo v3, "persons cannot contain null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1419
    .end local v2    # "person":Landroid/app/Person;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1422
    :cond_18
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->-$$Nest$smclonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mPersons:[Landroid/app/Person;

    .line 1423
    return-object p0

    .line 1417
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "persons cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRank(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "rank"    # I

    .line 1445
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Rank cannot be negative or bigger than MAX_RANK"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1447
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    .line 1448
    return-object p0
.end method

.method public whitelist setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "shortLabel"    # Ljava/lang/CharSequence;

    .line 1236
    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string/jumbo v1, "shortLabelResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1237
    const-string/jumbo v0, "shortLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 1238
    return-object p0
.end method

.method public greylist-max-o setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 4
    .param p1, "shortLabelResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1216
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string/jumbo v1, "shortLabel already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1217
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    .line 1218
    return-object p0
.end method

.method public whitelist setStartingTheme(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 2
    .param p1, "themeResId"    # I

    .line 1206
    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mStartingThemeResId:I

    .line 1207
    return-object p0
.end method

.method public greylist-max-o setText(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1284
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setTextResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1290
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setTitle(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1272
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setTitleResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .registers 3
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1278
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method
