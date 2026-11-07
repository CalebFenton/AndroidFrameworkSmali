.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final greylist-max-o SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final blacklist mAllFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallDeleteCommand:Ljava/lang/String;

.field private final greylist-max-o mCallGetCommand:Ljava/lang/String;

.field private final blacklist mCallListCommand:Ljava/lang/String;

.field private final blacklist mCallSetAllCommand:Ljava/lang/String;

.field private final greylist-max-o mCallSetCommand:Ljava/lang/String;

.field private blacklist mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGenerationTrackers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$GenerationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrefixToValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final blacklist mReadableFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$hWCs6DJq6ag2nqmU12AIeqVyf1U(Landroid/provider/Settings$NameValueCache;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStringsForPrefixStripPrefix(Landroid/provider/Settings$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3466
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3518
    .local p6, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "getCommand":Ljava/lang/String;
    .end local p3    # "setCommand":Ljava/lang/String;
    .end local p4    # "deleteCommand":Ljava/lang/String;
    .end local p5    # "providerHolder":Landroid/provider/Settings$ContentProviderHolder;
    .end local p6    # "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "getCommand":Ljava/lang/String;
    .local v3, "setCommand":Ljava/lang/String;
    .local v4, "deleteCommand":Ljava/lang/String;
    .local v7, "providerHolder":Landroid/provider/Settings$ContentProviderHolder;
    .local v8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 3520
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "listCommand"    # Ljava/lang/String;
    .param p6, "setAllCommand"    # Ljava/lang/String;
    .param p7, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3524
    .local p8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3475
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3481
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    .line 3500
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3503
    new-instance v0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    .line 3525
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3526
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3527
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3528
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3529
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3530
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3531
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3532
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3533
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3534
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3535
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-static {p8, v0, v1, v2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3537
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private blacklist getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 25
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3837
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 3838
    .local v8, "namespace":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 3839
    .local v9, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    .line 3840
    .local v10, "substringLength":I
    const/4 v4, -0x1

    .line 3841
    .local v4, "currentGeneration":I
    const/4 v5, 0x0

    .line 3842
    .local v5, "needsGenerationTracker":Z
    monitor-enter p0

    .line 3843
    :try_start_1c
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3844
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_7f

    .line 3845
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 3853
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3854
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3855
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3856
    const/4 v5, 0x1

    goto :goto_77

    .line 3858
    :cond_3b
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 3859
    .local v6, "cachedSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_77

    .line 3860
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 3861
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3863
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 3864
    nop

    .line 3866
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3864
    invoke-virtual {v9, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3868
    .end local v7    # "name":Ljava/lang/String;
    :cond_6b
    goto :goto_4f

    :cond_6c
    goto :goto_75

    .line 3870
    :cond_6d
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3872
    const-string v2, ""

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3874
    :goto_75
    monitor-exit p0

    return-object v9

    .line 3877
    .end local v6    # "cachedSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_77
    :goto_77
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v6
    :try_end_7b
    .catchall {:try_start_1c .. :try_end_7b} :catchall_222

    move v4, v6

    move v11, v4

    move v12, v5

    goto :goto_82

    .line 3879
    :cond_7f
    const/4 v5, 0x1

    move v11, v4

    move v12, v5

    .line 3881
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v4    # "currentGeneration":I
    .end local v5    # "needsGenerationTracker":Z
    .local v11, "currentGeneration":I
    .local v12, "needsGenerationTracker":Z
    :goto_82
    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_21c

    .line 3882
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v0, :cond_88

    .line 3884
    return-object v9

    .line 3889
    :cond_88
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v14

    .line 3892
    .local v14, "cp":Landroid/content/IContentProvider;
    :try_start_90
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v4, v19

    .line 3893
    .local v4, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    const/4 v0, 0x0

    if-eqz v12, :cond_a4

    .line 3895
    const-string v5, "_track_generation"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3906
    :cond_a4
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v5, v6, :cond_e2

    .line 3907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_b8} :catch_21a

    .line 3910
    .local v5, "token":J
    :try_start_b8
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v7}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v7

    .line 3911
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_b8 .. :try_end_c8} :catchall_da

    .line 3910
    const/16 v18, 0x0

    move-object/from16 v19, v4

    move-object/from16 v17, v7

    .end local v4    # "args":Landroid/os/Bundle;
    .local v19, "args":Landroid/os/Bundle;
    :try_start_ce
    invoke-interface/range {v14 .. v19}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_d8

    .line 3913
    .local v4, "b":Landroid/os/Bundle;
    :try_start_d2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3914
    nop

    .line 3915
    .end local v5    # "token":J
    move-object v15, v4

    goto :goto_fd

    .line 3913
    .end local v4    # "b":Landroid/os/Bundle;
    .restart local v5    # "token":J
    :catchall_d8
    move-exception v0

    goto :goto_dd

    .end local v19    # "args":Landroid/os/Bundle;
    .local v4, "args":Landroid/os/Bundle;
    :catchall_da
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "args":Landroid/os/Bundle;
    .restart local v19    # "args":Landroid/os/Bundle;
    :goto_dd
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3914
    nop

    .end local v8    # "namespace":Ljava/lang/String;
    .end local v9    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "substringLength":I
    .end local v11    # "currentGeneration":I
    .end local v12    # "needsGenerationTracker":Z
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0

    .line 3906
    .end local v5    # "token":J
    .end local v19    # "args":Landroid/os/Bundle;
    .restart local v4    # "args":Landroid/os/Bundle;
    .restart local v8    # "namespace":Ljava/lang/String;
    .restart local v9    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "substringLength":I
    .restart local v11    # "currentGeneration":I
    .restart local v12    # "needsGenerationTracker":Z
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e2
    move-object/from16 v19, v4

    .line 3917
    .end local v4    # "args":Landroid/os/Bundle;
    .restart local v19    # "args":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v4

    .line 3918
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3917
    const/16 v18, 0x0

    move-object/from16 v17, v4

    invoke-interface/range {v14 .. v19}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    move-object v15, v4

    .line 3920
    .local v15, "b":Landroid/os/Bundle;
    :goto_fd
    if-nez v15, :cond_100

    .line 3922
    return-object v9

    .line 3926
    :cond_100
    const-string/jumbo v4, "value"

    const-class v5, Ljava/util/HashMap;

    .line 3927
    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 3928
    .local v4, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_10e

    .line 3929
    return-object v9

    .line 3932
    :cond_10e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13d

    .line 3933
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_118
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3935
    .local v6, "name":Ljava/lang/String;
    invoke-static {v8, v6}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3936
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13a

    .line 3937
    nop

    .line 3939
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 3937
    invoke-virtual {v9, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3941
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    :cond_13a
    const/4 v0, 0x0

    goto :goto_118

    :cond_13c
    goto :goto_167

    .line 3943
    :cond_13d
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_145
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_167

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3944
    .local v5, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 3945
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3946
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3944
    invoke-virtual {v9, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3947
    nop

    .end local v5    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_145

    .line 3950
    :cond_167
    :goto_167
    monitor-enter p0
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_168} :catch_21a

    .line 3951
    if-eqz v12, :cond_1bd

    .line 3952
    :try_start_16a
    const-string v0, "_track_generation"

    const-class v5, Landroid/util/MemoryIntArray;

    invoke-virtual {v15, v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3954
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v5, "_generation_index"

    const/4 v6, -0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3956
    .local v5, "index":I
    if-eqz v0, :cond_1b2

    if-ltz v5, :cond_1b2

    .line 3957
    const-string v6, "_generation"

    invoke-virtual {v15, v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3967
    .local v6, "generation":I
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;
    :try_end_18d
    .catchall {:try_start_16a .. :try_end_18d} :catchall_1b9

    move-object/from16 v16, v2

    .line 3968
    .local v16, "oldTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v16, :cond_19a

    .line 3969
    :try_start_191
    invoke-virtual/range {v16 .. v16}, Landroid/provider/Settings$GenerationTracker;->destroy()V
    :try_end_194
    .catchall {:try_start_191 .. :try_end_194} :catchall_195

    goto :goto_19a

    .line 3997
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v5    # "index":I
    .end local v6    # "generation":I
    .end local v16    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :catchall_195
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_218

    .line 3971
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v5    # "index":I
    .restart local v6    # "generation":I
    .restart local v16    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_19a
    :goto_19a
    :try_start_19a
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    move-object v7, v2

    new-instance v2, Landroid/provider/Settings$GenerationTracker;

    move-object/from16 v18, v7

    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1a3
    .catchall {:try_start_19a .. :try_end_1a3} :catchall_1b9

    move-object/from16 v20, v4

    move-object v4, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v20

    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .local v4, "array":Landroid/util/MemoryIntArray;
    .local v18, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1aa
    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Ljava/lang/String;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3974
    move v11, v6

    .line 3975
    .end local v6    # "generation":I
    .end local v16    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    goto :goto_1bf

    .line 3956
    .end local v18    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .local v4, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1b2
    move-object/from16 v18, v4

    move-object v4, v0

    .line 3976
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .local v4, "array":Landroid/util/MemoryIntArray;
    .restart local v18    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v4}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_1bf

    .line 3997
    .end local v5    # "index":I
    .end local v18    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1b9
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_218

    .line 3951
    .end local v18    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1bd
    move-object/from16 v18, v4

    .line 3979
    .end local v4    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1bf
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_215

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3980
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v11, v0, :cond_215

    .line 3986
    new-instance v0, Landroid/util/ArrayMap;

    .line 3987
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3988
    .local v0, "namesToValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3989
    .local v4, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 3990
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3991
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3989
    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3992
    nop

    .end local v4    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1e8

    .line 3994
    :cond_20a
    const-string v2, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3995
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3997
    .end local v0    # "namesToValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_215
    monitor-exit p0

    .line 3998
    return-object v9

    .line 3997
    :catchall_217
    move-exception v0

    :goto_218
    monitor-exit p0
    :try_end_219
    .catchall {:try_start_1aa .. :try_end_219} :catchall_217

    .end local v8    # "namespace":Ljava/lang/String;
    .end local v9    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "substringLength":I
    .end local v11    # "currentGeneration":I
    .end local v12    # "needsGenerationTracker":Z
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_219
    throw v0
    :try_end_21a
    .catch Landroid/os/RemoteException; {:try_start_219 .. :try_end_21a} :catch_21a

    .line 3999
    .end local v15    # "b":Landroid/os/Bundle;
    .end local v18    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "args":Landroid/os/Bundle;
    .restart local v8    # "namespace":Ljava/lang/String;
    .restart local v9    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "substringLength":I
    .restart local v11    # "currentGeneration":I
    .restart local v12    # "needsGenerationTracker":Z
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_21a
    move-exception v0

    .line 4001
    .local v0, "e":Landroid/os/RemoteException;
    return-object v9

    .line 3881
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "cp":Landroid/content/IContentProvider;
    :catchall_21c
    move-exception v0

    move-object/from16 v13, p1

    move v4, v11

    move v5, v12

    goto :goto_225

    .end local v11    # "currentGeneration":I
    .end local v12    # "needsGenerationTracker":Z
    .local v4, "currentGeneration":I
    .local v5, "needsGenerationTracker":Z
    :catchall_222
    move-exception v0

    move-object/from16 v13, p1

    :goto_225
    :try_start_225
    monitor-exit p0
    :try_end_226
    .catchall {:try_start_225 .. :try_end_226} :catchall_227

    throw v0

    :catchall_227
    move-exception v0

    goto :goto_225
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .registers 6

    .line 3818
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3819
    return v1

    .line 3821
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    .line 3822
    return v1

    .line 3824
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3825
    .local v0, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_49

    .line 3828
    :cond_23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3829
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2f

    move v4, v1

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 3831
    .local v4, "isTestOnly":Z
    :goto_30
    if-nez v4, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_47

    .line 3832
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_47

    :cond_45
    move v1, v2

    goto :goto_48

    :cond_47
    :goto_47
    nop

    .line 3831
    :goto_48
    return v1

    .line 3826
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isTestOnly":Z
    :cond_49
    :goto_49
    return v2
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 3504
    monitor-enter p0

    .line 3505
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3507
    .local v0, "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_1a

    .line 3508
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3509
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    :cond_1a
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    nop

    .end local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    monitor-exit p0

    .line 3513
    return-void

    .line 3512
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .registers 3

    .line 4006
    monitor-enter p0

    .line 4007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 4008
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v1}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4007
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4010
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4011
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4012
    monitor-exit p0

    .line 4013
    return-void

    .line 4012
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3588
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 3589
    .local v6, "arg":Landroid/os/Bundle;
    const-string v0, "_user"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3590
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3591
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3592
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_2b

    .line 3591
    move-object v5, p2

    .end local p2    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :try_start_22
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_28

    .line 3596
    nop

    .line 3597
    .end local v1    # "cp":Landroid/content/IContentProvider;
    .end local v6    # "arg":Landroid/os/Bundle;
    const/4 p2, 0x1

    return p2

    .line 3593
    :catch_28
    move-exception v0

    move-object p2, v0

    goto :goto_2e

    .end local v5    # "name":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    :catch_2b
    move-exception v0

    move-object v5, p2

    move-object p2, v0

    .line 3594
    .restart local v5    # "name":Ljava/lang/String;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t delete key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3595
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 25
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3602
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-ne v8, v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v9

    :goto_11
    move v10, v0

    .line 3603
    .local v10, "isSelf":Z
    if-eqz v10, :cond_1c

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v9

    :goto_1d
    move v11, v0

    .line 3604
    .local v11, "useCache":Z
    const/4 v3, 0x0

    .line 3605
    .local v3, "needsGenerationTracker":Z
    if-eqz v11, :cond_59

    .line 3606
    monitor-enter p0

    .line 3607
    :try_start_22
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3608
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_52

    .line 3609
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3618
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3619
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3620
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 3621
    :cond_40
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 3625
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 3628
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_52
    :goto_52
    monitor-exit p0

    .line 3634
    const/4 v3, 0x1

    move v12, v3

    goto :goto_5a

    .line 3628
    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_56

    throw v0

    .line 3605
    :cond_59
    move v12, v3

    .line 3647
    .end local v3    # "needsGenerationTracker":Z
    .local v12, "needsGenerationTracker":Z
    :goto_5a
    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v0

    if-nez v0, :cond_df

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 3648
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 3657
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 3658
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3659
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 3660
    .local v3, "application":Landroid/app/Application;
    if-eqz v3, :cond_99

    .line 3661
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_99

    .line 3662
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v4, v0, :cond_99

    goto :goto_9a

    :cond_99
    move v2, v9

    .line 3664
    .local v2, "targetSdkCheckOk":Z
    :goto_9a
    if-eqz v2, :cond_9d

    goto :goto_df

    .line 3665
    :cond_9d
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings key: <"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3649
    .end local v0    # "maxTargetSdk":I
    .end local v2    # "targetSdkCheckOk":Z
    .end local v3    # "application":Landroid/app/Application;
    :cond_c0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3675
    :cond_df
    :goto_df
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3681
    .local v2, "cp":Landroid/content/IContentProvider;
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v14, 0x0

    if-eqz v0, :cond_20d

    .line 3683
    :try_start_ec
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_f1} :catch_209

    .line 3684
    .local v7, "args":Landroid/os/Bundle;
    if-nez v10, :cond_fe

    .line 3685
    :try_start_f3
    const-string v0, "_user"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_fe

    .line 3770
    .end local v7    # "args":Landroid/os/Bundle;
    :catch_f9
    move-exception v0

    move-object v15, v2

    move-object v2, v6

    goto/16 :goto_20f

    .line 3687
    .restart local v7    # "args":Landroid/os/Bundle;
    :cond_fe
    :goto_fe
    if-eqz v12, :cond_105

    .line 3688
    const-string v0, "_track_generation"

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_105} :catch_f9

    .line 3703
    :cond_105
    :try_start_105
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_109} :catch_209

    if-eqz v0, :cond_145

    :try_start_10b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_145

    .line 3704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_119} :catch_13f

    move-wide v15, v3

    .line 3706
    .local v15, "token":J
    :try_start_11a
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3707
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3706
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_12e
    .catchall {:try_start_11a .. :try_end_12e} :catchall_139

    .line 3710
    .local v0, "b":Landroid/os/Bundle;
    :try_start_12e
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3711
    nop

    .line 3712
    .end local v15    # "token":J
    move-object/from16 v6, p2

    move-object v15, v2

    move-object/from16 v16, v7

    move-object v2, v0

    goto :goto_15f

    .line 3710
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v15    # "token":J
    :catchall_139
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3711
    nop

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "isSelf":Z
    .end local v11    # "useCache":Z
    .end local v12    # "needsGenerationTracker":Z
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_13f} :catch_13f

    .line 3770
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v15    # "token":J
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "useCache":Z
    .restart local v12    # "needsGenerationTracker":Z
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_13f
    move-exception v0

    move-object v15, v2

    move-object/from16 v2, p2

    goto/16 :goto_20f

    .line 3713
    .restart local v7    # "args":Landroid/os/Bundle;
    :cond_145
    :try_start_145
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3714
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_155} :catch_204

    .line 3713
    move-object/from16 v6, p2

    :try_start_157
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_157 .. :try_end_15b} :catch_209

    move-object v15, v2

    move-object/from16 v16, v7

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v7    # "args":Landroid/os/Bundle;
    .local v15, "cp":Landroid/content/IContentProvider;
    .local v16, "args":Landroid/os/Bundle;
    move-object v2, v0

    .line 3716
    .local v2, "b":Landroid/os/Bundle;
    :goto_15f
    if-eqz v2, :cond_200

    .line 3717
    :try_start_161
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 3719
    .local v3, "value":Ljava/lang/String;
    if-eqz v10, :cond_1f8

    .line 3720
    monitor-enter p0
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_161 .. :try_end_16c} :catch_1fd

    .line 3721
    if-eqz v12, :cond_1d2

    .line 3722
    :try_start_16e
    const-string v0, "_track_generation"

    const-class v4, Landroid/util/MemoryIntArray;

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/MemoryIntArray;

    .line 3724
    .local v4, "array":Landroid/util/MemoryIntArray;
    const-string v0, "_generation_index"

    const/4 v5, -0x1

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3726
    .local v5, "index":I
    if-eqz v4, :cond_1c4

    if-ltz v5, :cond_1c4

    .line 3727
    const-string v0, "_generation"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3739
    .local v0, "generation":I
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/Settings$GenerationTracker;
    :try_end_192
    .catchall {:try_start_16e .. :try_end_192} :catchall_1cc

    move-object/from16 v17, v7

    .line 3740
    .local v17, "oldTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v17, :cond_1a1

    .line 3741
    :try_start_196
    invoke-virtual/range {v17 .. v17}, Landroid/provider/Settings$GenerationTracker;->destroy()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    goto :goto_1a1

    .line 3757
    .end local v0    # "generation":I
    .end local v4    # "array":Landroid/util/MemoryIntArray;
    .end local v5    # "index":I
    .end local v17    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :catchall_19a
    move-exception v0

    move-object/from16 v18, v2

    move-object v9, v3

    move-object v2, v6

    goto/16 :goto_1f4

    .line 3743
    .restart local v0    # "generation":I
    .restart local v4    # "array":Landroid/util/MemoryIntArray;
    .restart local v5    # "index":I
    .restart local v17    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_1a1
    :goto_1a1
    :try_start_1a1
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;
    :try_end_1a3
    .catchall {:try_start_1a1 .. :try_end_1a3} :catchall_1cc

    move-object/from16 v18, v2

    .end local v2    # "b":Landroid/os/Bundle;
    .local v18, "b":Landroid/os/Bundle;
    :try_start_1a5
    new-instance v2, Landroid/provider/Settings$GenerationTracker;

    move-object/from16 v19, v7

    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1ab
    .catchall {:try_start_1a5 .. :try_end_1ab} :catchall_1c0

    move-object v9, v3

    move-object v3, v6

    move v6, v0

    move-object/from16 v0, v19

    .end local v0    # "generation":I
    .end local v3    # "value":Ljava/lang/String;
    .local v6, "generation":I
    .local v9, "value":Ljava/lang/String;
    :try_start_1b0
    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Ljava/lang/String;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V
    :try_end_1b3
    .catchall {:try_start_1b0 .. :try_end_1b3} :catchall_1bd

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    :try_start_1b8
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    nop

    .end local v6    # "generation":I
    .end local v17    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    goto :goto_1d6

    .line 3757
    .end local v4    # "array":Landroid/util/MemoryIntArray;
    .end local v5    # "index":I
    :catchall_1bd
    move-exception v0

    move-object v2, v3

    goto :goto_1f4

    .end local v9    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :catchall_1c0
    move-exception v0

    move-object v9, v3

    move-object v2, v6

    .end local v3    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1f4

    .line 3726
    .end local v9    # "value":Ljava/lang/String;
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v4    # "array":Landroid/util/MemoryIntArray;
    .restart local v5    # "index":I
    :cond_1c4
    move-object/from16 v18, v2

    move-object v9, v3

    move-object v2, v6

    .line 3747
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v18    # "b":Landroid/os/Bundle;
    invoke-static {v4}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_1d6

    .line 3757
    .end local v4    # "array":Landroid/util/MemoryIntArray;
    .end local v5    # "index":I
    .end local v9    # "value":Ljava/lang/String;
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v3    # "value":Ljava/lang/String;
    :catchall_1cc
    move-exception v0

    move-object/from16 v18, v2

    move-object v9, v3

    move-object v2, v6

    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v18    # "b":Landroid/os/Bundle;
    goto :goto_1f4

    .line 3721
    .end local v9    # "value":Ljava/lang/String;
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1d2
    move-object/from16 v18, v2

    move-object v9, v3

    move-object v2, v6

    .line 3750
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v18    # "b":Landroid/os/Bundle;
    :goto_1d6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f1

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3751
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_1f1

    .line 3755
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3757
    :cond_1f1
    monitor-exit p0

    goto :goto_1fc

    :catchall_1f3
    move-exception v0

    :goto_1f4
    monitor-exit p0
    :try_end_1f5
    .catchall {:try_start_1b8 .. :try_end_1f5} :catchall_1f3

    .end local v10    # "isSelf":Z
    .end local v11    # "useCache":Z
    .end local v12    # "needsGenerationTracker":Z
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_1f5
    throw v0
    :try_end_1f6
    .catch Landroid/os/RemoteException; {:try_start_1f5 .. :try_end_1f6} :catch_1f6

    .line 3770
    .end local v9    # "value":Ljava/lang/String;
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "useCache":Z
    .restart local v12    # "needsGenerationTracker":Z
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_1f6
    move-exception v0

    goto :goto_20f

    .line 3719
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v16    # "args":Landroid/os/Bundle;
    :cond_1f8
    move-object/from16 v18, v2

    move-object v9, v3

    move-object v2, v6

    .line 3766
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v18    # "b":Landroid/os/Bundle;
    :goto_1fc
    return-object v9

    .line 3770
    .end local v9    # "value":Ljava/lang/String;
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v18    # "b":Landroid/os/Bundle;
    :catch_1fd
    move-exception v0

    move-object v2, v6

    goto :goto_20f

    .line 3716
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v16    # "args":Landroid/os/Bundle;
    :cond_200
    move-object/from16 v18, v2

    move-object v2, v6

    .line 3773
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v16    # "args":Landroid/os/Bundle;
    goto :goto_20f

    .line 3770
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .local v2, "cp":Landroid/content/IContentProvider;
    :catch_204
    move-exception v0

    move-object v15, v2

    move-object/from16 v2, p2

    goto :goto_20c

    :catch_209
    move-exception v0

    move-object v15, v2

    move-object v2, v6

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :goto_20c
    goto :goto_20f

    .line 3681
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    :cond_20d
    move-object v15, v2

    move-object v2, v6

    .line 3776
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :goto_20f
    const/4 v9, 0x0

    .line 3778
    .local v9, "c":Landroid/database/Cursor;
    :try_start_210
    const-string/jumbo v0, "name=?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3781
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_256

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_256

    .line 3782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_22f
    .catch Landroid/os/RemoteException; {:try_start_210 .. :try_end_22f} :catch_2d4
    .catchall {:try_start_210 .. :try_end_22f} :catchall_2cd

    move-wide/from16 v16, v3

    .line 3784
    .local v16, "token":J
    :try_start_231
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_239
    .catchall {:try_start_231 .. :try_end_239} :catchall_24b

    const/4 v7, 0x0

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, v20

    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    :try_start_23f
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_243
    .catchall {:try_start_23f .. :try_end_243} :catchall_249

    move-object v9, v0

    .line 3787
    :try_start_244
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3788
    nop

    .line 3789
    .end local v16    # "token":J
    goto :goto_269

    .line 3787
    .restart local v16    # "token":J
    :catchall_249
    move-exception v0

    goto :goto_251

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catchall_24b
    move-exception v0

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, v20

    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    :goto_251
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3788
    nop

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "isSelf":Z
    .end local v11    # "useCache":Z
    .end local v12    # "needsGenerationTracker":Z
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3781
    .end local v16    # "token":J
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "useCache":Z
    .restart local v12    # "needsGenerationTracker":Z
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_256
    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, v20

    .line 3790
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 3793
    :goto_269
    if-nez v9, :cond_296

    .line 3794
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28f
    .catch Landroid/os/RemoteException; {:try_start_244 .. :try_end_28f} :catch_2cb
    .catchall {:try_start_244 .. :try_end_28f} :catchall_305

    .line 3795
    nop

    .line 3813
    if-eqz v9, :cond_295

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3795
    :cond_295
    return-object v14

    .line 3798
    :cond_296
    :try_start_296
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a3

    :cond_2a2
    move-object v0, v14

    :goto_2a3
    move-object v3, v0

    .line 3799
    .restart local v3    # "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_2a5
    .catch Landroid/os/RemoteException; {:try_start_296 .. :try_end_2a5} :catch_2cb
    .catchall {:try_start_296 .. :try_end_2a5} :catchall_305

    .line 3800
    :try_start_2a5
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c0

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3801
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_2c0

    .line 3805
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3807
    :cond_2c0
    monitor-exit p0
    :try_end_2c1
    .catchall {:try_start_2a5 .. :try_end_2c1} :catchall_2c8

    .line 3808
    nop

    .line 3813
    if-eqz v9, :cond_2c7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3808
    :cond_2c7
    return-object v3

    .line 3807
    :catchall_2c8
    move-exception v0

    :try_start_2c9
    monitor-exit p0
    :try_end_2ca
    .catchall {:try_start_2c9 .. :try_end_2ca} :catchall_2c8

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "isSelf":Z
    .end local v11    # "useCache":Z
    .end local v12    # "needsGenerationTracker":Z
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_2ca
    throw v0
    :try_end_2cb
    .catch Landroid/os/RemoteException; {:try_start_2ca .. :try_end_2cb} :catch_2cb
    .catchall {:try_start_2ca .. :try_end_2cb} :catchall_305

    .line 3809
    .end local v3    # "value":Ljava/lang/String;
    .end local v6    # "queryArgs":Landroid/os/Bundle;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "useCache":Z
    .restart local v12    # "needsGenerationTracker":Z
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_2cb
    move-exception v0

    goto :goto_2da

    .line 3813
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catchall_2cd
    move-exception v0

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, v20

    .end local v15    # "cp":Landroid/content/IContentProvider;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    goto :goto_306

    .line 3809
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    :catch_2d4
    move-exception v0

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, v20

    .line 3810
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    :goto_2da
    :try_start_2da
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2fe
    .catchall {:try_start_2da .. :try_end_2fe} :catchall_305

    .line 3811
    nop

    .line 3813
    if-eqz v9, :cond_304

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3811
    :cond_304
    return-object v14

    .line 3813
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_305
    move-exception v0

    :goto_306
    if-eqz v9, :cond_30b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3814
    :cond_30b
    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 15
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userHandle"    # I
    .param p7, "overrideableByRestore"    # Z

    .line 3543
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 3544
    .local v6, "arg":Landroid/os/Bundle;
    const-string/jumbo v0, "value"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    const-string v0, "_user"

    invoke-virtual {v6, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_49

    .line 3546
    if-eqz p4, :cond_1c

    .line 3547
    :try_start_13
    const-string v0, "_tag"

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 3558
    .end local v6    # "arg":Landroid/os/Bundle;
    :catch_19
    move-exception v0

    move-object v5, p2

    goto :goto_4b

    .line 3549
    .restart local v6    # "arg":Landroid/os/Bundle;
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    if-eqz p5, :cond_24

    .line 3550
    const-string v1, "_make_default"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3552
    :cond_24
    if-eqz p7, :cond_2b

    .line 3553
    const-string v1, "_overrideable_by_restore"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2b} :catch_19

    .line 3555
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3556
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3557
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_41} :catch_49

    .line 3556
    move-object v5, p2

    .end local p2    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :try_start_42
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_47

    .line 3561
    nop

    .line 3562
    .end local v1    # "cp":Landroid/content/IContentProvider;
    .end local v6    # "arg":Landroid/os/Bundle;
    return v0

    .line 3558
    :catch_47
    move-exception v0

    goto :goto_4b

    .end local v5    # "name":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    :catch_49
    move-exception v0

    move-object v5, p2

    .line 3559
    .end local p2    # "name":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "name":Ljava/lang/String;
    :goto_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set key "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Settings"

    invoke-static {v1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3560
    const/4 p2, 0x0

    return p2
.end method

.method public blacklist setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 12
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3567
    .local p3, "keyValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3569
    return v1

    .line 3572
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 3573
    .local v7, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    const-string v0, "_flags"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3575
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3576
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3577
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3576
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3579
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "config_set_all_return"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_38

    return v1

    .line 3580
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v7    # "args":Landroid/os/Bundle;
    :catch_38
    move-exception v0

    .line 3582
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
