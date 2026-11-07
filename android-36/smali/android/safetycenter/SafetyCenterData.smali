.class public final Landroid/safetycenter/SafetyCenterData;
.super Ljava/lang/Object;
.source "SafetyCenterData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ISSUES_TO_GROUPS_BUNDLE_KEY:Ljava/lang/String; = "IssuesToGroups"

.field private static final blacklist STATIC_ENTRIES_TO_IDS_BUNDLE_KEY:Ljava/lang/String; = "StaticEntriesToIds"


# instance fields
.field private final blacklist mDismissedIssues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEntriesOrGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntryOrGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIssues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStaticEntryGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStatus:Landroid/safetycenter/SafetyCenterStatus;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDismissedIssues(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntriesOrGroups(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/safetycenter/SafetyCenterData;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIssues(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStaticEntryGroups(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/safetycenter/SafetyCenterData;)Landroid/safetycenter/SafetyCenterStatus;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/safetycenter/SafetyCenterData$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterData$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterStatus;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "status"    # Landroid/safetycenter/SafetyCenterStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/safetycenter/SafetyCenterStatus;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntryOrGroup;",
            ">;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntryGroup;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p2, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    .local p3, "entriesOrGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterEntryOrGroup;>;"
    .local p4, "staticEntryGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterStaticEntryGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterStatus;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    .line 129
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    .line 130
    return-void
.end method

.method private constructor blacklist <init>(Landroid/safetycenter/SafetyCenterStatus;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "status"    # Landroid/safetycenter/SafetyCenterStatus;
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/safetycenter/SafetyCenterStatus;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntryOrGroup;",
            ">;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntryGroup;",
            ">;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 138
    .local p2, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    .local p3, "entriesOrGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterEntryOrGroup;>;"
    .local p4, "staticEntryGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterStaticEntryGroup;>;"
    .local p5, "dismissedIssues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    .line 140
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    .line 141
    iput-object p3, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    .line 142
    iput-object p4, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    .line 143
    iput-object p5, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    .line 144
    iput-object p6, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    .line 145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/safetycenter/SafetyCenterStatus;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroid/safetycenter/SafetyCenterData-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/safetycenter/SafetyCenterData;-><init>(Landroid/safetycenter/SafetyCenterStatus;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private blacklist appendBundleString(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "bundleKey"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 327
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_a

    .line 328
    const/4 v1, 0x0

    return v1

    .line 330
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, ":["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    .local v2, "key":Ljava/lang/String;
    const-string v3, "(key="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 334
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    const-string v4, ";value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    invoke-static {v0, p2, v2}, Landroid/safetycenter/SafetyCenterData;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_1a

    .line 339
    :cond_44
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 13
    .param p0, "left"    # Landroid/os/Bundle;
    .param p1, "right"    # Landroid/os/Bundle;
    .param p2, "bundleKey"    # Ljava/lang/String;

    .line 223
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 224
    .local v0, "leftBundle":Landroid/os/Bundle;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 226
    .local v1, "rightBundle":Landroid/os/Bundle;
    const/4 v2, 0x1

    if-nez v0, :cond_e

    if-nez v1, :cond_e

    .line 227
    return v2

    .line 230
    :cond_e
    const/4 v3, 0x0

    if-eqz v0, :cond_45

    if-nez v1, :cond_14

    goto :goto_45

    .line 234
    :cond_14
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 235
    .local v4, "leftKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 237
    .local v5, "rightKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 238
    return v3

    .line 241
    :cond_23
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 242
    .local v7, "key":Ljava/lang/String;
    nop

    .line 243
    invoke-static {v0, p2, v7}, Landroid/safetycenter/SafetyCenterData;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 244
    invoke-static {v1, p2, v7}, Landroid/safetycenter/SafetyCenterData;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 242
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    .line 245
    return v3

    .line 247
    .end local v7    # "key":Ljava/lang/String;
    :cond_43
    goto :goto_27

    .line 249
    :cond_44
    return v2

    .line 231
    .end local v4    # "leftKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "rightKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_45
    :goto_45
    return v3
.end method

.method private static blacklist areKnownExtrasContentsEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "left"    # Landroid/os/Bundle;
    .param p1, "right"    # Landroid/os/Bundle;

    .line 217
    const-string v0, "IssuesToGroups"

    invoke-static {p0, p1, v0}, Landroid/safetycenter/SafetyCenterData;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 218
    const-string v0, "StaticEntriesToIds"

    invoke-static {p0, p1, v0}, Landroid/safetycenter/SafetyCenterData;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 217
    :goto_13
    return v0
.end method

.method private blacklist bundleHash(Ljava/lang/String;)I
    .registers 8
    .param p1, "bundleKey"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 272
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_a

    .line 273
    const/4 v1, 0x0

    return v1

    .line 276
    :cond_a
    const/4 v1, 0x0

    .line 277
    .local v1, "hash":I
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, "key":Ljava/lang/String;
    nop

    .line 279
    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    .line 280
    invoke-static {v0, p1, v3}, Landroid/safetycenter/SafetyCenterData;->getBundleValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 281
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_13

    .line 282
    :cond_2f
    return v1
.end method

.method private blacklist extrasToString()Ljava/lang/String;
    .registers 5

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "knownExtras":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "IssuesToGroups"

    invoke-direct {p0, v1, v2}, Landroid/safetycenter/SafetyCenterData;->appendBundleString(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 311
    :cond_10
    const-string v2, "StaticEntriesToIds"

    invoke-direct {p0, v1, v2}, Landroid/safetycenter/SafetyCenterData;->appendBundleString(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 312
    add-int/lit8 v0, v0, 0x1

    .line 315
    :cond_1a
    iget-object v2, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    .line 316
    .local v2, "hasUnknownExtras":Z
    :goto_29
    if-eqz v2, :cond_31

    .line 317
    const-string v3, "(has unknown extras)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 318
    :cond_31
    if-nez v0, :cond_38

    .line 319
    const-string v3, "(no extras)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_38
    :goto_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getBundleValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "bundleParentKey"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "StaticEntriesToIds"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :sswitch_12
    const-string v0, "IssuesToGroups"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_4e

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected bundle parent key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :pswitch_39
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 513
    :pswitch_3e
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_44
    .sparse-switch
        -0x7081ead7 -> :sswitch_12
        0x60c1c93b -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method private blacklist getExtrasHash()I
    .registers 3

    .line 265
    nop

    .line 266
    const-string v0, "IssuesToGroups"

    invoke-direct {p0, v0}, Landroid/safetycenter/SafetyCenterData;->bundleHash(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 267
    const-string v1, "StaticEntriesToIds"

    invoke-direct {p0, v1}, Landroid/safetycenter/SafetyCenterData;->bundleHash(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 265
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 204
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 205
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterData;

    .line 206
    .local v1, "that":Landroid/safetycenter/SafetyCenterData;
    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    .line 207
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    .line 208
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    .line 209
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    .line 210
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    .line 211
    invoke-static {v3, v4}, Landroid/safetycenter/SafetyCenterData;->areKnownExtrasContentsEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 206
    :goto_4b
    return v0
.end method

.method public whitelist getDismissedIssues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    return-object v0

    .line 179
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEntriesOrGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntryOrGroup;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 194
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    return-object v0

    .line 195
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIssues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStaticEntryGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntryGroup;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStatus()Landroid/safetycenter/SafetyCenterStatus;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 254
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    iget-object v4, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    .line 260
    invoke-direct {p0}, Landroid/safetycenter/SafetyCenterData;->getExtrasHash()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 254
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterData{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIssues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEntriesOrGroups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStaticEntryGroups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDismissedIssues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-direct {p0}, Landroid/safetycenter/SafetyCenterData;->extrasToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 350
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 351
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mIssues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 352
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mEntriesOrGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 353
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mStaticEntryGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 354
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 355
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mDismissedIssues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 356
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 358
    :cond_24
    return-void
.end method
