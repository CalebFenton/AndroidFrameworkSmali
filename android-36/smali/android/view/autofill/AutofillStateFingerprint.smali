.class public final Landroid/view/autofill/AutofillStateFingerprint;
.super Ljava/lang/Object;
.source "AutofillStateFingerprint.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AutofillStateFingerprint"


# instance fields
.field private blacklist mFailedAutofillValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFailedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHashToAutofillIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHideHighlight:Z

.field blacklist mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPriorAutofillIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionId:I

.field private blacklist mUseRelativePosition:Z

.field blacklist mViewHashCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1sGf-jkz8zkspSlTN1IdvPkWAZ4(Landroid/view/autofill/AutofillStateFingerprint;Landroid/view/View;Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->lambda$getFingerprintIds$1(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$KWEO10vil0sbd-6rqA2bnKyto3o(Landroid/view/autofill/AutofillStateFingerprint;Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->lambda$attemptRefill$0(Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHideHighlight:Z

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedAutofillValues:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method private blacklist compareBottom(Landroid/view/View;Landroid/view/View;)I
    .registers 5
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "v2"    # Landroid/view/View;

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist compareLeft(Landroid/view/View;Landroid/view/View;)I
    .registers 5
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "v2"    # Landroid/view/View;

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist compareRight(Landroid/view/View;Landroid/view/View;)I
    .registers 5
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "v2"    # Landroid/view/View;

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist compareTop(Landroid/view/View;Landroid/view/View;)I
    .registers 5
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "v2"    # Landroid/view/View;

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static blacklist createInstance()Landroid/view/autofill/AutofillStateFingerprint;
    .registers 1

    .line 70
    new-instance v0, Landroid/view/autofill/AutofillStateFingerprint;

    invoke-direct {v0}, Landroid/view/autofill/AutofillStateFingerprint;-><init>()V

    return-object v0
.end method

.method private blacklist dumpCurrentState()V
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailedId\'s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillStateFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hashes from map"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method private synthetic blacklist lambda$attemptRefill$0(Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V
    .registers 9
    .param p1, "autofillManager"    # Landroid/view/autofill/AutofillManager;
    .param p2, "views"    # [Landroid/view/View;

    .line 217
    iget-object v2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedAutofillValues:Ljava/util/ArrayList;

    iget-boolean v4, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHideHighlight:Z

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    .end local p1    # "autofillManager":Landroid/view/autofill/AutofillManager;
    .end local p2    # "views":[Landroid/view/View;
    .local v0, "autofillManager":Landroid/view/autofill/AutofillManager;
    .local v1, "views":[Landroid/view/View;
    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->autofill([Landroid/view/View;Ljava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method

.method private synthetic blacklist lambda$getFingerprintIds$1(Landroid/view/View;Landroid/view/View;)I
    .registers 8
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "v2"    # Landroid/view/View;

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 232
    .local v0, "posV1":[I
    invoke-virtual {p2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 234
    .local v1, "posV2":[I
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    .line 235
    .local v3, "compare":I
    if-eqz v3, :cond_11

    .line 236
    return v3

    .line 238
    :cond_11
    const/4 v2, 0x1

    aget v4, v0, v2

    aget v2, v1, v2

    sub-int/2addr v4, v2

    .line 239
    .end local v3    # "compare":I
    .local v4, "compare":I
    if-eqz v4, :cond_1a

    .line 240
    return v4

    .line 243
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareTop(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    .line 244
    .end local v4    # "compare":I
    .local v2, "compare":I
    if-eqz v2, :cond_21

    .line 245
    return v2

    .line 247
    :cond_21
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareBottom(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    .line 248
    if-eqz v2, :cond_28

    .line 249
    return v2

    .line 251
    :cond_28
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareLeft(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    .line 252
    if-eqz v2, :cond_2f

    .line 253
    return v2

    .line 255
    :cond_2f
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareRight(Landroid/view/View;Landroid/view/View;)I

    move-result v3

    return v3
.end method


# virtual methods
.method blacklist attemptRefill(Ljava/util/List;Landroid/view/autofill/AutofillManager;)Z
    .registers 14
    .param p2, "autofillManager"    # Landroid/view/autofill/AutofillManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/autofill/AutofillManager;",
            ")Z"
        }
    .end annotation

    .line 163
    .local p1, "currentAutofillableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_7

    .line 164
    invoke-direct {p0}, Landroid/view/autofill/AutofillStateFingerprint;->dumpCurrentState()V

    .line 167
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillStateFingerprint;->getFingerprintIds(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 171
    .local v0, "currentHashes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/view/View;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v1, "oldFailedIdsToCurrentViewMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Landroid/view/View;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "AutofillStateFingerprint"

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 173
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 174
    .local v5, "view":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 175
    .local v6, "currentHash":I
    invoke-virtual {v5}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 176
    .local v7, "currentAutofillId":Landroid/view/autofill/AutofillId;
    iget v8, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    invoke-virtual {v7, v8}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 177
    iget-object v8, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 178
    iget-object v8, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 179
    .local v8, "oldAutofillId":Landroid/view/autofill/AutofillId;
    iget v9, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 180
    iget-object v9, p0, Landroid/view/autofill/AutofillStateFingerprint;->mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mapping current autofill id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to existing autofill id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v8    # "oldAutofillId":Landroid/view/autofill/AutofillId;
    goto :goto_b7

    .line 186
    :cond_89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t map current autofill id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with currentHash:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "currentHash":I
    .end local v7    # "currentAutofillId":Landroid/view/autofill/AutofillId;
    :goto_b7
    goto/16 :goto_18

    .line 191
    :cond_b9
    const/4 v2, 0x0

    .line 192
    .local v2, "viewsCount":I
    iget-object v3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/View;

    .line 193
    .local v3, "views":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c3
    iget-object v6, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_fc

    .line 194
    iget-object v6, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 195
    .local v6, "oldAutofillId":Landroid/view/autofill/AutofillId;
    iget-object v7, p0, Landroid/view/autofill/AutofillStateFingerprint;->mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 196
    .restart local v7    # "currentAutofillId":Landroid/view/autofill/AutofillId;
    if-nez v7, :cond_e6

    .line 197
    sget-boolean v8, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_e6

    .line 198
    const-string v8, "currentAutofillId = null"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_e6
    iget-object v8, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    aput-object v8, v3, v5

    .line 203
    aget-object v8, v3, v5

    if-eqz v8, :cond_f9

    .line 204
    add-int/lit8 v2, v2, 0x1

    .line 193
    .end local v6    # "oldAutofillId":Landroid/view/autofill/AutofillId;
    .end local v7    # "currentAutofillId":Landroid/view/autofill/AutofillId;
    :cond_f9
    add-int/lit8 v5, v5, 0x1

    goto :goto_c3

    .line 208
    .end local v5    # "i":I
    :cond_fc
    sget-boolean v5, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_103

    .line 209
    invoke-direct {p0}, Landroid/view/autofill/AutofillStateFingerprint;->dumpCurrentState()V

    .line 213
    :cond_103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting refill of views. Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " views to refill from previously "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed ids:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v4, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2, v3}, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillStateFingerprint;Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V

    invoke-virtual {p2, v4}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 221
    const/4 v4, 0x0

    return v4
.end method

.method public blacklist getEphemeralFingerprintId(Landroid/view/View;I)I
    .registers 36
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_8

    const/4 v2, -0x1

    return v2

    .line 273
    :cond_8
    const/high16 v2, -0x80000000

    .line 274
    .local v2, "inputType":I
    const/high16 v3, -0x80000000

    .line 275
    .local v3, "imeOptions":I
    const/4 v4, 0x0

    .line 276
    .local v4, "isSingleLine":Z
    const-string v5, ""

    .line 277
    .local v5, "hints":Ljava/lang/CharSequence;
    instance-of v6, v1, Landroid/widget/TextView;

    if-eqz v6, :cond_28

    .line 278
    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 279
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 280
    invoke-virtual {v6}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    .line 281
    invoke-virtual {v6}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    .line 282
    invoke-virtual {v6}, Landroid/widget/TextView;->getImeOptions()I

    move-result v3

    move-object v9, v5

    goto :goto_29

    .line 277
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_28
    move-object v9, v5

    .line 285
    .end local v5    # "hints":Ljava/lang/CharSequence;
    .local v9, "hints":Ljava/lang/CharSequence;
    :goto_29
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    .line 286
    .local v10, "contentDesc":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 288
    .local v11, "tooltip":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/view/View;->getAutofillType()I

    move-result v5

    .line 289
    .local v5, "autofillType":I
    invoke-virtual {v1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v18

    .line 290
    .local v18, "autofillHints":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 292
    .local v6, "visibility":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 293
    .local v7, "paddingLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 294
    .local v8, "paddingRight":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 295
    .local v12, "paddingTop":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    .line 299
    .local v13, "paddingBottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 300
    .local v14, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 305
    .local v15, "width":I
    move/from16 v16, v5

    .end local v5    # "autofillType":I
    .local v16, "autofillType":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v17, v6

    .end local v6    # "visibility":I
    .local v17, "visibility":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v19, v7

    .end local v7    # "paddingLeft":I
    .local v19, "paddingLeft":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v20, v8

    .end local v8    # "paddingRight":I
    .local v20, "paddingRight":I
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 306
    move/from16 v21, v12

    .end local v12    # "paddingTop":I
    .local v21, "paddingTop":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 307
    move/from16 v23, v14

    .end local v14    # "height":I
    .local v23, "height":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v24, v15

    .end local v15    # "width":I
    .local v24, "width":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v25, v16

    .end local v16    # "autofillType":I
    .local v25, "autofillType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move/from16 v26, v17

    .end local v17    # "visibility":I
    .local v26, "visibility":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v30, v13

    move/from16 v27, v19

    move/from16 v28, v20

    move/from16 v29, v21

    move-object/from16 v13, v22

    move/from16 v31, v23

    move/from16 v32, v24

    move/from16 v1, v26

    .end local v13    # "paddingBottom":I
    .end local v19    # "paddingLeft":I
    .end local v20    # "paddingRight":I
    .end local v21    # "paddingTop":I
    .end local v23    # "height":I
    .end local v24    # "width":I
    .end local v26    # "visibility":I
    .local v1, "visibility":I
    .local v27, "paddingLeft":I
    .local v28, "paddingRight":I
    .local v29, "paddingTop":I
    .local v30, "paddingBottom":I
    .local v31, "height":I
    .local v32, "width":I
    filled-new-array/range {v5 .. v17}, [Ljava/lang/Object;

    move-result-object v5

    .line 305
    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v5

    .line 308
    .local v5, "hash":I
    iget-boolean v6, v0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    if-eqz v6, :cond_bf

    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v5

    .line 311
    :cond_bf
    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_1ae

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for AutofillId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " visibility:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inputType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " imeOptions:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSingleLine:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hints:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentDesc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tooltipText:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " autofillType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v7, v25

    .end local v25    # "autofillType":I
    .local v7, "autofillType":I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " autofillHints:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 321
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " height:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v8, v31

    .end local v31    # "height":I
    .local v8, "height":I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " width:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v12, v32

    .end local v32    # "width":I
    .local v12, "width":I
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " paddingLeft:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v13, v27

    .end local v27    # "paddingLeft":I
    .local v13, "paddingLeft":I
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " paddingRight:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v14, v28

    .end local v28    # "paddingRight":I
    .local v14, "paddingRight":I
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " paddingTop:"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v15, v29

    .end local v29    # "paddingTop":I
    .local v15, "paddingTop":I
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v17, v1

    .end local v1    # "visibility":I
    .restart local v17    # "visibility":I
    const-string v1, " paddingBottom:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, v30

    .end local v30    # "paddingBottom":I
    .local v6, "paddingBottom":I
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v16, v2

    .end local v2    # "inputType":I
    .local v16, "inputType":I
    const-string v2, " mUseRelativePosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    const-string v0, "AutofillStateFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c2

    .line 311
    .end local v6    # "paddingBottom":I
    .end local v7    # "autofillType":I
    .end local v8    # "height":I
    .end local v12    # "width":I
    .end local v13    # "paddingLeft":I
    .end local v14    # "paddingRight":I
    .end local v15    # "paddingTop":I
    .end local v16    # "inputType":I
    .end local v17    # "visibility":I
    .restart local v1    # "visibility":I
    .restart local v2    # "inputType":I
    .restart local v25    # "autofillType":I
    .restart local v27    # "paddingLeft":I
    .restart local v28    # "paddingRight":I
    .restart local v29    # "paddingTop":I
    .restart local v30    # "paddingBottom":I
    .restart local v31    # "height":I
    .restart local v32    # "width":I
    :cond_1ae
    move/from16 v17, v1

    move/from16 v16, v2

    move/from16 v7, v25

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v6, v30

    move/from16 v8, v31

    move/from16 v12, v32

    move/from16 v2, p2

    .line 332
    .end local v1    # "visibility":I
    .end local v2    # "inputType":I
    .end local v25    # "autofillType":I
    .end local v27    # "paddingLeft":I
    .end local v28    # "paddingRight":I
    .end local v29    # "paddingTop":I
    .end local v30    # "paddingBottom":I
    .end local v31    # "height":I
    .end local v32    # "width":I
    .restart local v6    # "paddingBottom":I
    .restart local v7    # "autofillType":I
    .restart local v8    # "height":I
    .restart local v12    # "width":I
    .restart local v13    # "paddingLeft":I
    .restart local v14    # "paddingRight":I
    .restart local v15    # "paddingTop":I
    .restart local v16    # "inputType":I
    .restart local v17    # "visibility":I
    :goto_1c2
    return v5
.end method

.method blacklist getFingerprintIds(Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 228
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 229
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/view/View;>;"
    iget-boolean v1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    if-eqz v1, :cond_11

    .line 230
    new-instance v1, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/AutofillStateFingerprint;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 261
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 262
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2, v1}, Landroid/view/autofill/AutofillStateFingerprint;->getEphemeralFingerprintId(Landroid/view/View;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 264
    .end local v1    # "i":I
    :cond_2c
    return-object v0
.end method

.method blacklist setSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 80
    iput p1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    .line 81
    return-void
.end method

.method blacklist setUseRelativePosition(Z)V
    .registers 2
    .param p1, "useRelativePosition"    # Z

    .line 87
    iput-boolean p1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    .line 88
    return-void
.end method

.method blacklist storeFailedIdsAndValues(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 8
    .param p3, "hideHighlight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    .line 142
    .local p1, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "failedAutofillValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 143
    .local v1, "failedId":Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_18

    .line 144
    iget v2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    goto :goto_23

    .line 146
    :cond_18
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_23

    .line 147
    const-string v2, "AutofillStateFingerprint"

    const-string v3, "Got null failed ids"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v1    # "failedId":Landroid/view/autofill/AutofillId;
    :cond_23
    :goto_23
    goto :goto_4

    .line 151
    :cond_24
    iput-object p1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    .line 152
    iput-object p2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedAutofillValues:Ljava/util/ArrayList;

    .line 153
    iput-boolean p3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHideHighlight:Z

    .line 154
    return-void
.end method

.method blacklist storeStatePriorToAuthentication(Landroid/view/autofill/AutofillManager$AutofillClient;Ljava/util/Set;)V
    .registers 13
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillManager$AutofillClient;",
            "Ljava/util/Set<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p2, "autofillIds":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/autofill/AutofillId;>;"
    iget-boolean v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    const-string v1, "Encountered null view"

    const-string v2, "AutofillStateFingerprint"

    if-eqz v0, :cond_63

    .line 96
    invoke-interface {p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindAutofillableViewsByTraversal()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "autofillableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2a

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Autofillable views count prior to auth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2a
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillStateFingerprint;->getFingerprintIds(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 102
    .local v3, "hashes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/view/View;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 103
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 104
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_5a

    .line 105
    iget-object v7, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v6}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 107
    :cond_5a
    sget-boolean v7, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_61

    .line 108
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    .end local v6    # "view":Landroid/view/View;
    :cond_61
    :goto_61
    goto :goto_36

    .line 112
    .end local v0    # "autofillableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v3    # "hashes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/view/View;>;"
    :cond_62
    goto :goto_b8

    .line 114
    :cond_63
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_8b

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of autofillId\'s being stored: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " list:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_8b
    invoke-static {p2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 119
    .local v0, "autofillIdsArr":[Landroid/view/autofill/AutofillId;
    invoke-interface {p1, v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, "views":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_94
    array-length v5, v0

    if-ge v4, v5, :cond_b8

    .line 121
    aget-object v5, v3, v4

    .line 122
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_ae

    .line 123
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/view/autofill/AutofillStateFingerprint;->getEphemeralFingerprintId(Landroid/view/View;I)I

    move-result v6

    .line 124
    .local v6, "id":I
    invoke-virtual {v5}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 125
    .local v7, "autofillId":Landroid/view/autofill/AutofillId;
    iget-object v8, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v6    # "id":I
    .end local v7    # "autofillId":Landroid/view/autofill/AutofillId;
    goto :goto_b5

    .line 127
    :cond_ae
    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_b5

    .line 128
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v5    # "view":Landroid/view/View;
    :cond_b5
    :goto_b5
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 133
    .end local v0    # "autofillIdsArr":[Landroid/view/autofill/AutofillId;
    .end local v3    # "views":[Landroid/view/View;
    .end local v4    # "i":I
    :cond_b8
    :goto_b8
    return-void
.end method
